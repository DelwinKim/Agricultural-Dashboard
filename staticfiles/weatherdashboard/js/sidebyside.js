DataTable.pipeline = function (opts) {
    // Configuration options
    var conf = Object.assign(
        {
            pages: 5, // number of pages to cache
            url: "", // script url
            data: null, // function or object with parameters to send to the server
            method: "GET" // Ajax HTTP method
        },
        opts
    );

    // Private cache to store individual rows of data
    var rowCache = {};
    var cacheLower = -1;
    var cacheUpper = -1;
    var cacheLastJson = null;  // To store the last JSON response for metadata (recordsTotal, recordsFiltered, etc.)

    return async function (request, drawCallback, settings) {
        var needAjax = false;
        var requestStart = request.start;
        var requestLength = request.length;
        var requestEnd = requestStart + requestLength;
        var pagesToCache = Math.max(1, Math.floor(conf.pages * (7 / requestLength)));
        // Check if required data is already in the cache
        var cachedData = [];
        var missingIndexes = [];

        for (var i = requestStart; i < requestEnd; i++) {
            if (rowCache[i]) {
                cachedData.push(rowCache[i]);
            } else {
                missingIndexes.push(i);
            }
        }

        if (missingIndexes.length > 0) {
            needAjax = true; // Data for some rows is missing
        }

        if (settings.clearCache) {
            // API requested that the cache be cleared
            rowCache = {};  // Clear the entire cache
            cacheLower = -1;
            cacheUpper = -1;
            cacheLastJson = null;  // Clear the cached metadata
            needAjax = true;
            settings.clearCache = false;
        }

        if (needAjax) {
            // Need data from the server
            if (requestStart < cacheLower) {
                requestStart = requestStart - requestLength * (pagesToCache - 1);

                if (requestStart < 0) {
                    requestStart = 0;
                }
            }

            cacheLower = requestStart;
            cacheUpper = requestStart + requestLength * pagesToCache;

            request.start = requestStart;
            request.length = requestLength * pagesToCache;

            // Provide the same `data` options as DataTables.
            if (typeof conf.data === 'function') {
                var d = conf.data(request);
                if (d) {
                    Object.assign(request, d);
                }
            } else if (conf.data) {
                Object.assign(request, conf.data);
            }

            // Use `fetch` to make Ajax request
            let response = await fetch(
                conf.url + '?' + new URLSearchParams(request).toString(),
                {
                    method: conf.method,
                    headers: {
                        'X-Requested-With': 'XMLHttpRequest'
                    }
                }
            );

            let json = await response.json();

            cacheLastJson = JSON.parse(JSON.stringify(json));  // Cache the entire JSON response

            // Cache the new data by rows
            for (var i = 0; i < json.data.length; i++) {
                var rowIndex = request.start + i;
                rowCache[rowIndex] = json.data[i];
            }

            // Assemble the full dataset for the requested page
            cachedData = [];
            for (var i = requestStart; i < requestEnd; i++) {
                cachedData.push(rowCache[i]);
            }

            // Replace json.data with the cachedData
            json.data = cachedData;

            drawCallback(json);
        } else {
            // Serve the data from cache
            var json = {
                draw: request.draw,
                data: cachedData,
                recordsTotal: cacheLastJson.recordsTotal,  // Use cached metadata
                recordsFiltered: cacheLastJson.recordsFiltered  // Use cached metadata
            };

            drawCallback(json);
        }
    };
};


// og from the DataTables examples
// DataTable.pipeline = function (opts) {
//     // Configuration options
//     var conf = Object.assign(
//         {
//             pages: 5, // number of pages to cache
//             url: "", // script url
//             data: null, // function or object with parameters to send to the server
//             // matching how `ajax.data` works in DataTables
//             method: "GET" // Ajax HTTP method
//         },
//         opts
//     );
 
//     // Private variables for storing the cache
//     var cacheLower = -1;
//     var cacheUpper = null;
//     var cacheLastJson = null;
 
//     return async function (request, drawCallback, settings) {
//         var needAjax = false;
//         var requestStart = request.start;
//         var drawStart = request.start;
//         var requestLength = request.length;
//         var requestEnd = requestStart + requestLength;
 
//         if (settings.clearCache) {
//             // API requested that the cache be cleared
//             console.log("Clearing cache");
//             needAjax = true;
//             settings.clearCache = false;
//         }
//         else if (
//             cacheLower < 0 ||
//             requestStart < cacheLower ||
//             requestEnd > cacheUpper
//         ) {
//             // outside cached data - need to make a request
//             needAjax = true;
//         }
 
//         // Store the request for checking next time around
//         cacheLastRequest = JSON.parse(JSON.stringify(request));
 
//         if (needAjax) {
//             // Need data from the server
//             if (requestStart < cacheLower) {
//                 requestStart = requestStart - requestLength * (conf.pages - 1);
 
//                 if (requestStart < 0) {
//                     requestStart = 0;
//                 }
//             }
 
//             cacheLower = requestStart;
//             cacheUpper = requestStart + requestLength * conf.pages;
 
//             request.start = requestStart;
//             request.length = requestLength * conf.pages;
 
//             // Provide the same `data` options as DataTables.
//             if (typeof conf.data === 'function') {
//                 // As a function it is executed with the data object as an arg
//                 // for manipulation. If an object is returned, it is used as the
//                 // data object to submit
//                 var d = conf.data(request);
//                 if (d) {
//                     Object.assign(request, d);
//                 }
//             }
//             else if (conf.data) {
//                 // As an object, the data given extends the default
//                 Object.assign(request, conf.data);
//             }
 
//             // Use `fetch` to make Ajax request
//             let response = await fetch(
//                 conf.url + '?' + new URLSearchParams(request).toString(),  // Correctly format parameters
//                 {
//                     method: conf.method,
//                     headers: {
//                         'X-Requested-With': 'XMLHttpRequest' // Add the header here
//                     }
//                 }
//             );
            
//             let json = await response.json();
 
//             cacheLastJson = JSON.parse(JSON.stringify(json));
 
//             if (cacheLower != drawStart) {
//                 json.data.splice(0, drawStart - cacheLower);
//             }
//             if (requestLength >= -1) {
//                 json.data.splice(requestLength, json.data.length);
//             }
 
//             drawCallback(json);
//         } else {
//             json = JSON.parse(JSON.stringify(cacheLastJson));
//             json.draw = request.draw; // Update the echo for each response
//             json.data.splice(0, requestStart - cacheLower);
//             json.data.splice(requestLength, json.data.length);
 
//             drawCallback(json);
//         }
//     };
// };

DataTable.pipeline = function (opts) {
    // Configuration options
    var conf = Object.assign(
        {
            pages: 5, // number of pages to cache
            url: "", // script url
            data: null, // function or object with parameters to send to the server
            method: "GET" // Ajax HTTP method
        },
        opts
    );
 
    // Private cache to store individual page data
    var pageCache = {};

    return async function (request, drawCallback, settings) {
        var requestStart = request.start;
        var requestLength = request.length;
        var requestEnd = requestStart + requestLength;
        var cacheKey = `${requestStart}-${requestLength}`;  // Unique key for the page
        var needAjax = false;

        // Check if the requested page is already cached
        if (!pageCache[cacheKey]) {
            needAjax = true;  // Data for this page is not cached
        }

        if (settings.clearCache) {
            // API requested that the cache be cleared
            console.log("Clearing cache");
            pageCache = {};  // Clear the entire cache
            needAjax = true;
            settings.clearCache = false;
        }

        if (needAjax) {
            // Provide the same `data` options as DataTables.
            if (typeof conf.data === 'function') {
                var d = conf.data(request);
                if (d) {
                    Object.assign(request, d);
                }
            } else if (conf.data) {
                Object.assign(request, conf.data);
            }

            // Make AJAX request
            let response = await fetch(
                conf.url + '?' + new URLSearchParams(request).toString(),
                {
                    method: conf.method,
                    headers: {
                        'X-Requested-With': 'XMLHttpRequest'
                    }
                }
            );

            let json = await response.json();

            // Cache the fetched data using the cacheKey
            pageCache[cacheKey] = JSON.parse(JSON.stringify(json));

            drawCallback(json);
        } else {
            // Serve the data from cache
            var cachedData = JSON.parse(JSON.stringify(pageCache[cacheKey]));
            cachedData.draw = request.draw;  // Ensure the draw count is updated

            drawCallback(cachedData);
        }
    };
};