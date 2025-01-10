/*!
    * Start Bootstrap - SB Admin v7.0.7 (https://startbootstrap.com/template/sb-admin)
    * Copyright 2013-2023 Start Bootstrap
    * Licensed under MIT (https://github.com/StartBootstrap/startbootstrap-sb-admin/blob/master/LICENSE)
    */
    // 
// Scripts
// 

window.addEventListener('DOMContentLoaded', event => {
    // Toggle the side navigation
    const sidebarToggle = document.body.querySelector('#sidebarToggle');
    if (sidebarToggle) {
        // Persist sidebar toggle between refreshes
        if (localStorage.getItem('sb|sidebar-toggle') === 'true') {
            document.body.classList.toggle('sb-sidenav-toggled');
        }
        sidebarToggle.addEventListener('click', event => {
            event.preventDefault();
            document.body.classList.toggle('sb-sidenav-toggled');
            localStorage.setItem('sb|sidebar-toggle', document.body.classList.contains('sb-sidenav-toggled'));
        });
    }

    // Accordion state handling
    const tablesLink = document.querySelector('a[data-bs-target="#collapseTables"]');
    const graphsLink = document.querySelector('a[data-bs-target="#collapseGraphs"]');

    // Set the default state for the table accordion to be expanded
    if (!localStorage.getItem('sb|tables-accordion-open')) {
        localStorage.setItem('sb|tables-accordion-open', 'true'); // Set to expanded by default
    }

    // Set the default state for the graph accordion to be expanded
    if (!localStorage.getItem('sb|graphs-accordion-open')) {
        localStorage.setItem('sb|graphs-accordion-open', 'true'); // Set to expanded by default
    }
    
    // Restore accordion states from localStorage
    if (localStorage.getItem('sb|tables-accordion-open') === 'true') {
        tablesLink.classList.remove('collapsed'); // Remove 'collapsed' class to show it's expanded
        document.getElementById('collapseTables').classList.add('show'); // Ensure the content is shown
    } else {
        tablesLink.classList.add('collapsed'); // Add 'collapsed' class to indicate it's collapsed
        document.getElementById('collapseTables').classList.remove('show'); // Ensure the content is hidden
    }

    if (localStorage.getItem('sb|graphs-accordion-open') === 'true') {
        graphsLink.classList.remove('collapsed'); // Remove 'collapsed' class to show it's expanded
        document.getElementById('collapseGraphs').classList.add('show'); // Ensure the content is shown
    } else {
        graphsLink.classList.add('collapsed'); // Add 'collapsed' class to indicate it's collapsed
        document.getElementById('collapseGraphs').classList.remove('show'); // Ensure the content is hidden
    }

    // Event listeners for the accordion buttons
    if (tablesLink) {
        tablesLink.addEventListener('click', () => {
            const isCollapsed = tablesLink.classList.contains('collapsed');
            localStorage.setItem('sb|tables-accordion-open', !isCollapsed);
        });
    }

    if (graphsLink) {
        graphsLink.addEventListener('click', () => {
            const isCollapsed = graphsLink.classList.contains('collapsed');
            localStorage.setItem('sb|graphs-accordion-open', !isCollapsed);
        });
    }
});

/**
 * Activates the specified tab.
 * @param {string} tabId The ID of the tab to activate.
 */
function switchToTab(tabId) {
    const tabs = ['tables', 'graphs'];
    tabs.forEach(id => {
        const tabContent = document.getElementById(id);
        if (id === tabId) {
            tabContent.classList.add('show', 'active'); // Activate tab
        } else {
            tabContent.classList.remove('show', 'active'); // Deactivate other tabs
        }
    });
}

/**
 * Deactivates the specified tab.
 * @param {string} tabId The ID of the tab to deactivate.
 */
function closeTab(tabId) {
    const tabContent = document.getElementById(tabId);
    tabContent.classList.remove('show', 'active'); // Deactivate tab
}