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
        ]
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
        ]
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
        ]
    },
    // More tables added in the future...
};

const tableCache = {}


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


/* Intiailizes the corresponding DataTable */
function initializeTable(tableId) {
    const tableConfigObject = tableConfig[tableId];
    if (!tableConfigObject) {
        console.error(`No table configuration found for tableId: ${tableId}`);
        return;
    }

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
        "ajax": {
            "url": tableConfigObject.tableUrl,
            "type": "GET",
            "data": function(d) {
                d.table_name = tableId;  // Send table name to the server
                // Logic for handling custom select option
                if (d.length == -2) {  // Custom option selected
                    let customLength = prompt("Enter the number of entries to display per page:", 7);
                    
                    if (customLength !== null) {
                        customLength = parseInt(customLength, 10);
                        
                        // Validate customLength: positive number and not too large
                        if (isNaN(customLength) || customLength <= 0 || customLength > 10000) {
                            alert("Please enter a valid number between 1 and 10000.");
                            d.length = 7;  // Revert to default
                            table.page.len(7).draw("page"); 
                        } else {
                            d.length = customLength;
                            // Replace or add the "Custom (N)" option
                            const lengthSelect = $(`select[name="${tableId}_length"]`);
                            lengthSelect.append(new Option(`Custom (${customLength})`, customLength));
                            lengthSelect.val(customLength);
                            console.log(lengthSelect)
                            table.page.len(customLength).draw("page");
                        }
                    } else {
                        d.length = 7;  // Revert to default if cancelled
                        table.page.len(7).draw("page");
                    }
                }
                // Just for debugging
                console.log(`Requesting data for table: ${tableId}`);
            }        
        },
        "columns": tableConfigObject.columns
    });
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
    const tables = ['detailedWeatherTable', 'heatUnitsTable', 'chillUnitsTable'];
    
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