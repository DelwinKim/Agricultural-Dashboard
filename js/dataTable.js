// const API_BASE_URL = process.env.REACT_APP_API_BASE_URL;
// const API_BASE_URL = "http://localhost:5000/api"; // or your production URL
const API_BASE_URL = "https://agricultural-dashboard-github-version.onrender.com/api";


const tableConfig = {
    generalWeatherTable: {
        tableUrl: `${API_BASE_URL}/weather/general/`,
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

            // Defensive: If data is undefined or empty, skip calculations
            if (!Array.isArray(data) || data.length === 0) {
                $(api.column(0).footer()).html('No Data');
                for (let i = 1; i <= 8; i++) {
                    $(api.column(i).footer()).html('');
                }
                return;
            }

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
        tableUrl: `${API_BASE_URL}/weather/detailed/`,
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

            // Defensive: If data is undefined or empty, skip calculations
            if (!Array.isArray(data) || data.length === 0) {
                $(api.column(0).footer()).html('No Data');
                for (let i = 1; i <= 6; i++) {
                    $(api.column(i).footer()).html('');
                }
                return;
            }

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
        tableUrl: `${API_BASE_URL}/weather/heat-units/`,
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

            // Defensive: If data is undefined or empty, skip calculations
            if (!Array.isArray(data) || data.length === 0) {
                $(api.column(0).footer()).html('No Data');
                for (let i = 1; i <= 6; i++) {
                    $(api.column(i).footer()).html('');
                }
                return;
            }

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
        tableUrl: `${API_BASE_URL}/weather/chill-units/`,
        columns: [
            { "data": "month" },
            { "data": "method_1_total" },
            { "data": "method_2_total" },
        ],
        drawCallback: function(settings) {
            const api = this.api();
            const json = api.ajax.json();
            if (json && json.totals) {
                $(api.column(0).footer()).html('Total');
                $(api.column(1).footer()).html(json.totals.method_1_total);
                $(api.column(2).footer()).html(json.totals.method_2_total);
            }
        }
    },
};


/* To toggle the visibility of other tables, initializes tables if they haven't already */
function toggleTable(tableId) {
    const tableWrapper = document.getElementById(tableId + "Wrapper");
    const button = document.querySelector(`[data-table="${tableId}"]`);
    const topNav = document.querySelector('.sb-topnav');
    const topNavHeight = topNav ? topNav.offsetHeight : 0;
    const margin = parseFloat(getComputedStyle(document.documentElement).fontSize) * 3;

    if (tableWrapper && button) {
        if (tableWrapper.style.display === "none") {
            tableWrapper.style.display = "";
            localStorage.setItem(tableId, 'enabled');
            button.classList.add('btn-filled');
            button.classList.remove('btn-outline-light');
            
            if (!$.fn.DataTable.isDataTable(`#${tableId}`)) {
                initializeTable(tableId);
            }

            if (tableId === 'generalWeatherTable') {
                window.scrollTo({
                    top: 0,
                    behavior: 'smooth'
                });
            } else {
                const scrollToPosition = tableWrapper.getBoundingClientRect().top + window.scrollY - topNavHeight - margin;
                window.scrollTo({
                    top: scrollToPosition,
                    behavior: 'smooth'
                });
            }
        } else {
            tableWrapper.style.display = "none";
            localStorage.setItem(tableId, 'disabled');
            button.classList.remove('btn-filled');
            button.classList.add('btn-outline-light');
        }
    }
}

//
// Pipelining function for DataTables. To be used to the `ajax` option of DataTables
//
$.fn.dataTable.pipeline = function (opts) {
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
        }
        //  else if (requestLength == -2) { // Handling the "Custom" option
        //     // Logic for handling custom select option
        //     let customLength = prompt("Enter the number of entries to display per page:", 7);
            
        //     if (customLength !== null) {
        //         customLength = parseInt(customLength, 10);

        //         // Validate customLength: positive number and not too large
        //         if (isNaN(customLength) || customLength <= 0 || customLength > 10000) {
        //             alert("Please enter a valid number between 1 and 10000.");
        //             requestLength = 7;  // Revert to default
        //         } else {
        //             requestLength = customLength;  // Use custom length
        //         }
        //     } else {
        //         requestLength = 7;  // If prompt is canceled, revert to default
        //     }
        //     // Update the request length
        //     request.length = requestLength;

        //     // Update the DataTable's pagination length
        //     const lengthSelect = $(`select[name="${request.table_name}_length"]`);
        //     console.log(request.table_name);
        //     lengthSelect.append(new Option(`Custom (${customLength})`, customLength));  // Add the new option
        //     lengthSelect.val(customLength);  // Select the custom length option        
        //     console.log(lengthSelect);
        // }

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
                if (rowCache[i] !== undefined) {
                    cachedData.push(rowCache[i]);
                }
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

    // Get station name from the URL
    const urlParams = new URLSearchParams(window.location.search);
    const stationName =
        decodeURIComponent(
            (window.location.hash || window.location.pathname).split('/').pop()
        );
        
    if (tableId !== 'seasonalChillUnitsTable') {  // dynamic rendering through ajax
        const table = $(`#${tableId}`).DataTable({
            "processing": true,
            "serverSide": true,
            "ordering": false,
            "searching": false,
            "pageLength": 7,
            autoWidth: false,
            "lengthMenu": [
                [7, 14, 30, 90, 365, -1],
                [7, 14, 30, 90, 365, "All"],
            ],
            "ajax": DataTable.pipeline({
                url: tableConfigObject.tableUrl,
                pages: 1, // number of pages to cache
                type: "GET",
                "data": function(d) {
                    d.station_name = stationName;  // Add station name to the request
                    // Add global date filter values if present
                    var min = document.getElementById('minDateFilter')?.value;
                    var max = document.getElementById('maxDateFilter')?.value;
                    if (min) d.start_date = min;
                    if (max) d.end_date = max;
                    return d;
                }        
            }),
            "columns": tableConfigObject.columns,
            "footerCallback": tableConfigObject.footerCallback  
        });
    } else {  // for seasonal chill units table, static rendering
        const table = $(`#${tableId}`).DataTable({
            "processing": true,
            "serverSide": false,
            "ordering": false,
            "searching": false,
            "paging": false,
            autoWidth: false,
            info: false,
            "ajax": {
                url: tableConfigObject.tableUrl,
                type: "GET",
                data: function(d) {
                    d.station_name = stationName;
                    return d;
                }
            },
            "columns": tableConfigObject.columns,
            "drawCallback": function(settings) {
                const api = this.api();
                const json = api.ajax.json();
                if (json && json.totals) {
                    $(api.column(0).footer()).html('Total');
                    $(api.column(1).footer()).html(json.totals.method_1_total);
                    $(api.column(2).footer()).html(json.totals.method_2_total);
                }
            }
        });
    }
    
    console.log(`Initializing DataTable for table: ${tableId}`);
}


// Utility: debounce function
function debounce(func, wait) {
    let timeout;
    return function(...args) {
        clearTimeout(timeout);
        timeout = setTimeout(() => func.apply(this, args), wait);
    };
}

// Patch: debounce table initialization to prevent rapid toggling issues
window.debouncedInitializeTable = debounce(function(tableId) {
    initializeTable(tableId);
}, 250);

// Patch: use debouncedInitializeTable in toggleTable
window.toggleTable = function(tableId) {
    const key = getTableKey(tableId);
    const wrapper = document.getElementById(tableId + "Wrapper");
    const button = document.querySelector(`[data-table="${tableId}"]`);
    if (wrapper && wrapper.style.display === "none") {
        wrapper.style.display = "";
        if (button) {
            button.classList.add('btn-filled');
            button.classList.remove('btn-outline-light');
        }
        if (!window.$.fn.DataTable.isDataTable(`#${tableId}`)) {
            window.debouncedInitializeTable(tableId);
        }
        localStorage.setItem(key, 'enabled');
    } else if (wrapper) {
        wrapper.style.display = "none";
        if (button) {
            button.classList.remove('btn-filled');
            button.classList.add('btn-outline-light');
        }
        localStorage.removeItem(key);
    }
};

// Utility to generate a unique key for a table (for localStorage, etc.)
function getTableKey(tableId) {
    // You can customize this if you want to namespace by station, etc.
    // For now, just return the tableId
    return tableId;
}

// Initialize all enabled tables based on localStorage state
function initializeEnabledTables() {
    const tables = ['generalWeatherTable', 'detailedWeatherTable', 'heatUnitsTable', 'seasonalChillUnitsTable'];
    tables.forEach(tableId => {
        const key = getTableKey(tableId);
        const state = localStorage.getItem(key);
        const button = document.querySelector(`[data-table="${tableId}"]`);
        const wrapper = document.getElementById(tableId + "Wrapper");
        if (state === 'enabled' && wrapper) {
            wrapper.style.display = "";
            if (button) {
                button.classList.add('btn-filled');
                button.classList.remove('btn-outline-light');
            }
            if (!$.fn.DataTable.isDataTable(`#${tableId}`)) {
                initializeTable(tableId);
            }
        } else if (wrapper) {
            wrapper.style.display = "none";
            if (button) {
                button.classList.remove('btn-filled');
                button.classList.add('btn-outline-light');
            }
        }
    });
}

// Initialize the default table and check states on page load
$(document).ready(function() {
    // Hide all table wrappers initially
    const allWrappers = document.querySelectorAll('[id$="Wrapper"]');
    allWrappers.forEach(wrapper => {
        wrapper.style.display = "none";
    });

    // Check if this is the first visit
    const isFirstVisit = !localStorage.getItem('hasVisitedBefore');
    
    if (isFirstVisit) {
        // First visit - only show general summary
        localStorage.setItem('hasVisitedBefore', 'true');
        localStorage.setItem('generalWeatherTable', 'enabled');
        localStorage.setItem('detailedWeatherTable', 'disabled');
        localStorage.setItem('heatUnitsTable', 'disabled');
        localStorage.setItem('seasonalChillUnitsTable', 'disabled');
        
        // Set all button states first
        const allButtons = document.querySelectorAll('[data-table]');
        allButtons.forEach(button => {
            button.classList.remove('btn-filled');
            button.classList.add('btn-outline-light');
        });

        // Set general weather button state
        const defaultButton = document.querySelector('[data-table="generalWeatherTable"]');
        if (defaultButton) {
            defaultButton.classList.add('btn-filled');
            defaultButton.classList.remove('btn-outline-light');
        }

        // Show only general weather table
        const generalWrapper = document.getElementById('generalWeatherTableWrapper');
        if (generalWrapper) {
            generalWrapper.style.display = "";
            initializeTable('generalWeatherTable');
        }
    } else {
        // Not first visit - restore saved states
        // Set all button states first
        const allButtons = document.querySelectorAll('[data-table]');
        allButtons.forEach(button => {
            button.classList.remove('btn-filled');
            button.classList.add('btn-outline-light');
        });

        // Initialize and show general weather table
        const generalWrapper = document.getElementById('generalWeatherTableWrapper');
        if (generalWrapper) {
            generalWrapper.style.display = "";
            initializeTable('generalWeatherTable');
            const defaultButton = document.querySelector('[data-table="generalWeatherTable"]');
            if (defaultButton) {
                defaultButton.classList.add('btn-filled');
                defaultButton.classList.remove('btn-outline-light');
            }
        }

        // Check other tables' states and initialize if previously enabled
        const tables = ['detailedWeatherTable', 'heatUnitsTable', 'seasonalChillUnitsTable'];
        
        tables.forEach(tableId => {
            const state = localStorage.getItem(tableId);
            const button = document.querySelector(`[data-table="${tableId}"]`);
            const wrapper = document.getElementById(tableId + "Wrapper");

            if (state === 'enabled' && wrapper) {
                wrapper.style.display = "";
                if (button) {
                    button.classList.add('btn-filled');
                    button.classList.remove('btn-outline-light');
                }
                if (!$.fn.DataTable.isDataTable(`#${tableId}`)) {
                    initializeTable(tableId);
                }
            }
        });
    }

    // Listen for changes on the date inputs and redraw all DataTables, clearing the pipeline cache
    $(document).on('change', '#minDateFilter, #maxDateFilter', function() {
        ['#generalWeatherTable', '#detailedWeatherTable', '#heatUnitsTable'].forEach(function(sel) {
            if ($.fn.DataTable.isDataTable(sel)) {
                $(sel).DataTable().clearPipeline().draw();
            }
        });
    });
});