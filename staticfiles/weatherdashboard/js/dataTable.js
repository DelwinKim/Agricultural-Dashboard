const tableConfig = {
    generalWeatherTable: {
        tableUrl: config.externalTableUrl,
        columns: [
            { "data": "date" },
            { "data": "eto" },
            { "data": "max_temp" },
            { "data": "min_temp" },
            { "data": "min_rh" },
            { "data": "solar_rad" },
            { "data": "rainfall" },
            { "data": "wind_4am" },
            { "data": "wind_4pm" }
        ],
        footerCallback: function (row, data, start, end, display) {
            let api = this.api();

            // Remove the formatting to get integer data for summation
            let intVal = function (i) {
                return typeof i === 'string'
                    ? i.replace(/[\$,]/g, '') * 1
                    : typeof i === 'number'
                    ? i
                    : 0;
            };

            let pageTotalEto = api
                .column(1, { page: 'current' })
                .data()
                .reduce((a, b) => intVal(a) + intVal(b), 0);

            let pageMaxTemp = api
                .column(2, { page: 'current' })
                .data()
                .reduce((a, b) => Math.max(intVal(a), intVal(b)), -Infinity);

            let pageMinTemp = api
                .column(3, { page: 'current' })
                .data()
                .reduce((a, b) => Math.min(intVal(a), intVal(b)), Infinity);

            let pageMinRh = api
                .column(4, { page: 'current' })
                .data()
                .reduce((a, b) => intVal(a) + intVal(b), 0) / data.length;

            let pageTotalSolarRad = api
                .column(5, { page: 'current' })
                .data()
                .reduce((a, b) => intVal(a) + intVal(b), 0);

            let pageTotalRainfall = api
                .column(6, { page: 'current' })
                .data()
                .reduce((a, b) => intVal(a) + intVal(b), 0);

            let pageAvgWind4am = api
                .column(7, { page: 'current' })
                .data()
                .reduce((a, b) => intVal(a) + intVal(b), 0) / data.length;

            let pageAvgWind4pm = api
                .column(8, { page: 'current' })
                .data()
                .reduce((a, b) => intVal(a) + intVal(b), 0) / data.length;

            // Update footer
            $(api.column(0).footer()).html('Data Summary');
            $(api.column(1).footer()).html(pageTotalEto.toFixed(2));
            $(api.column(2).footer()).html(pageMaxTemp);
            $(api.column(3).footer()).html(pageMinTemp);
            $(api.column(4).footer()).html(Math.round(pageMinRh));
            $(api.column(5).footer()).html(pageTotalSolarRad.toFixed(2));
            $(api.column(6).footer()).html(pageTotalRainfall.toFixed(2));
            $(api.column(7).footer()).html(pageAvgWind4am.toFixed(2));
            $(api.column(8).footer()).html(pageAvgWind4pm.toFixed(2));
        }
    },
    detailedWeatherTable: {
        tableUrl: config.externalTableUrl,
        columns: [
            { "data": "date" },
            { "data": "average_temp" },
            { "data": "dew_point" },
            { "data": "max_dewpoint" },
            { "data": "min_dewpoint" },
            { "data": "wind_run" },
            { "data": "soil_temp" }
        ],
        footerCallback: function (row, data, start, end, display) {
            let api = this.api();

            // Remove the formatting to get integer data for summation
            let intVal = function (i) {
                return typeof i === 'string'
                    ? i.replace(/[\$,]/g, '') * 1
                    : typeof i === 'number'
                    ? i
                    : 0;
            };

            let pageAvgTemp = api
                .column(1, { page: 'current' })
                .data()
                .reduce((a, b) => intVal(a) + intVal(b), 0) / data.length;

            let pageDewPoint = api
                .column(2, { page: 'current' })
                .data()
                .reduce((a, b) => intVal(a) + intVal(b), 0) / data.length;

            let pageMaxDewpoint = api
                .column(3, { page: 'current' })
                .data()
                .reduce((a, b) => Math.max(intVal(a), intVal(b)), -Infinity);

            let pageMinDewpoint = api
                .column(4, { page: 'current' })
                .data()
                .reduce((a, b) => Math.min(intVal(a), intVal(b)), Infinity);

            let pageWindRun = api
                .column(5, { page: 'current' })
                .data()
                .reduce((a, b) => intVal(a) + intVal(b), 0);

            let pageSoilTemp = api
                .column(6, { page: 'current' })
                .data()
                .reduce((a, b) => intVal(a) + intVal(b), 0) / data.length;

            // Update footer
            $(api.column(0).footer()).html('Data Summary');
            $(api.column(1).footer()).html(Math.round(pageAvgTemp));
            $(api.column(2).footer()).html(Math.round(pageDewPoint));
            $(api.column(3).footer()).html(Math.round(pageMaxDewpoint));
            $(api.column(4).footer()).html(Math.round(pageMinDewpoint));
            $(api.column(5).footer()).html(pageWindRun);
            $(api.column(6).footer()).html(Math.round(pageSoilTemp));
        }
    },
    heatUnitsTable: {
        tableUrl: config.externalTableUrl,
        columns: [
            { "data": "date" },
            { "data": "corn_heat_units" },
            { "data": "cotton_heat_units" },
            { "data": "sorghum_heat_units" },
            { "data": "heat_units_50_degree" },
            { "data": "heat_units_55_degree" },
            { "data": "heat_units_60_degree" }
        ],
        footerCallback: function (row, data, start, end, display) {
            let api = this.api();

            // Remove the formatting to get integer data for summation
            let intVal = function (i) {
                return typeof i === 'string'
                    ? i.replace(/[\$,]/g, '') * 1
                    : typeof i === 'number'
                    ? i
                    : 0;
            };

            let pageCorn = api
                .column(1, { page: 'current' })
                .data()
                .reduce((a, b) => intVal(a) + intVal(b), 0);

            let pageCotton = api
                .column(2, { page: 'current' })
                .data()
                .reduce((a, b) => intVal(a) + intVal(b), 0);

            let pageSorghum = api
                .column(3, { page: 'current' })
                .data()
                .reduce((a, b) => intVal(a) + intVal(b), 0);

            let page50Degree = api
                .column(4, { page: 'current' })
                .data()
                .reduce((a, b) => intVal(a) + intVal(b), 0);

            let page55Degree = api
                .column(5, { page: 'current' })
                .data()
                .reduce((a, b) => intVal(a) + intVal(b), 0);

            let page60Degree = api
                .column(6, { page: 'current' })
                .data()
                .reduce((a, b) => intVal(a) + intVal(b), 0);

            // Update footer
            $(api.column(0).footer()).html('Data Summary');
            $(api.column(1).footer()).html(pageCorn);
            $(api.column(2).footer()).html(pageCotton);
            $(api.column(3).footer()).html(pageSorghum);
            $(api.column(4).footer()).html(page50Degree);
            $(api.column(5).footer()).html(page55Degree);
            $(api.column(6).footer()).html(page60Degree);
        }
    },
    seasonalChillUnitsTable: {
        tableUrl: config.externalTableUrl,
        columns: [
            { "data": "month" },
            { "data": "method_1" },
            { "data": "method_2" },
        ],
    },
};


/* To toggle the visibility of other tables, initializes tables if they haven't already */
function toggleTable(tableId) {
    const tableWrapper = document.getElementById(tableId + "Wrapper");
    const button = document.querySelector(`[onclick="toggleTable('${tableId}')"]`);
    const topNavHeight = document.querySelector('.sb-topnav').offsetHeight; // Get height of the top nav
    const margin = parseFloat(getComputedStyle(document.documentElement).fontSize) * 3; // 1.5rem to pixels

    if (tableWrapper.style.display === "none") {
        tableWrapper.style.display = "";
        localStorage.setItem(tableId, 'enabled'); // Store state as 'enabled'
        button.classList.add('btn-filled'); // Add the filled style
        button.classList.remove('btn-outline-light'); // Remove the outline style
        
        // Initialize DataTable only when the table has not yet been initialized
        if (!$.fn.DataTable.isDataTable(`#${tableId}`)) {
            initializeTable(tableId);
        }

        // Special case for generalWeatherTable to scroll all the way to the top
        if (tableId === 'generalWeatherTable') {
            window.scrollTo({
                top: 0, // Scroll to the top of the page
                behavior: 'smooth' // Smooth scroll effect
            });
        } else {
            // For other tables, scroll to the calculated position with margin
            const scrollToPosition = tableWrapper.getBoundingClientRect().top + window.scrollY - topNavHeight - margin;
            window.scrollTo({
                top: scrollToPosition, // Position just below the fixed top navigation with `mb-5` margin
                behavior: 'smooth' // Smooth scroll effect
            });
        }
    } else {
        tableWrapper.style.display = "none";
        localStorage.setItem(tableId, 'disabled'); // Store state as 'disabled'
        button.classList.remove('btn-filled'); // Remove the filled style
        button.classList.add('btn-outline-light'); // Re-add the outline style
    }
}

//
// Pipelining function for DataTables. To be used to the `ajax` option of DataTables
//
DataTable.pipeline = function (opts) {
    // Configuration options
    var conf = Object.assign(
        {
            pages: 1, // number of pages to cache
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
        // Handling the "All" option
        if (requestLength == -1) {
            requestLength = cacheLastJson.recordsTotal;  // Show all records
            request.length = requestLength;  // Modify the request length
        } else if (requestLength == -2) { // Handling the "Custom" option
            // Logic for handling custom select option
            let customLength = prompt("Enter the number of entries to display per page:", 7);
            
            if (customLength !== null) {
                customLength = parseInt(customLength, 10);

                // Validate customLength: positive number and not too large
                if (isNaN(customLength) || customLength <= 0 || customLength > 10000) {
                    alert("Please enter a valid number between 1 and 10000.");
                    requestLength = 7;  // Revert to default
                } else {
                    requestLength = customLength;  // Use custom length
                }
            } else {
                requestLength = 7;  // If prompt is canceled, revert to default
            }
            // Update the request length
            request.length = requestLength;

            // Update the DataTable's pagination length
            const lengthSelect = $(`select[name="${request.table_name}_length"]`);
            console.log(request.table_name);
            lengthSelect.append(new Option(`Custom (${customLength})`, customLength));  // Add the new option
            lengthSelect.val(customLength);  // Select the custom length option        
            console.log(lengthSelect);
        }

        var requestEnd = requestStart + requestLength;
        console.log("Request start: " + requestStart);
        console.log("request end: " + requestEnd);
        var pagesToCache = Math.max(1, Math.floor(conf.pages * (7 / requestLength)));
        console.log("Pages to cache: " + pagesToCache);
        
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
        console.log(needAjax);

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
                request.start = requestStart;
            }

            var totalRecords = cacheLastJson ? cacheLastJson.recordsTotal : null;
            // modifies length parameter in the case that it goes beyond the number of total entries in the actual database
            if (totalRecords && requestEnd > totalRecords) {
                requestEnd = totalRecords;
                requestLength = requestEnd - requestStart;
                request.length = requestLength;
            } else {
                request.length = requestLength * pagesToCache;
            }
            console.log(request.length);
            cacheLower = requestStart;
            cacheUpper = requestStart + requestLength * pagesToCache;

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


// Register an API method that will empty the pipelined data, forcing an Ajax fetch on the next draw
DataTable.Api.register('clearPipeline()', function () {
    return this.iterator('table', function (settings) {
        settings.clearCache = true;
    });
});


/* Intiailizes the corresponding DataTable */
function initializeTable(tableId) {
    const tableConfigObject = tableConfig[tableId];
    if (!tableConfigObject) {
        console.error(`No table configuration found for tableId: ${tableId}`);
        return;
    }
    if (tableId !== 'seasonalChillUnitsTable') {  // dynamic rendering through ajax
        const table = $(`#${tableId}`).DataTable({
            "processing": true,
            "serverSide": true,
            "ordering": false,
            "searching": false,
            "pageLength": 7,
            autoWidth: false,
            "lengthMenu": [
                [7, 14, 30, 90, 365, -1, -2],
                [7, 14, 30, 90, 365, "All", "Custom"],
            ],
           "ajax": DataTable.pipeline({
                url: tableConfigObject.tableUrl,
                pages: 1, // number of pages to cache
                type: "GET",
                "data": function(d) {
                    d.table_name = tableId;  // Send table name to the server
                    return d;
                    // Just for debugging
                    console.log(`Requesting data for table: ${tableId}`);
                }        
            }),
            "columns": tableConfigObject.columns,
            "footerCallback": tableConfigObject.footerCallback  
        });
    } else {  // for seasonal chill units table, no ajax (static rendering)
        const table = $(`#${tableId}`).DataTable({
            "ordering": false,
            "searching": false,
            "paging": false,
            autoWidth: false,
            info: false,
            "columns": tableConfigObject.columns,
        });
    }
    
    console.log(`Initializing DataTable for table: ${tableId}`);
}


// Initialize the default table and check states on page load
$(document).ready(function() {
    // Initialize the default table
    initializeTable('generalWeatherTable');
    localStorage.setItem('generalWeatherTable', 'enabled');
    const defaultButton = document.querySelector(`[onclick="toggleTable('generalWeatherTable')"]`);
    defaultButton.classList.add('btn-filled');
    defaultButton.classList.remove('btn-outline-light');

    // Check other tables' states and initialize if previously enabled
    const tables = ['detailedWeatherTable', 'heatUnitsTable', 'seasonalChillUnitsTable'];
    
    tables.forEach(tableId => {
        const state = localStorage.getItem(tableId);
        const button = document.querySelector(`[onclick="toggleTable('${tableId}')"]`);

        if (state === 'enabled') {
            document.getElementById(tableId + "Wrapper").style.display = "";
            button.classList.add('btn-filled');
            button.classList.remove('btn-outline-light');
            if (!$.fn.DataTable.isDataTable(`#${tableId}`)) {
                initializeTable(tableId);
            }
        } else {
            document.getElementById(tableId + "Wrapper").style.display = "none";
            button.classList.remove('btn-filled');
            button.classList.add('btn-outline-light');
        }
    });
});

