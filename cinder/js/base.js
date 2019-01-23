$(document).ready(function() {
    hljs.initHighlightingOnLoad();

    $('table').addClass('table table-striped table-hover');

    var $searchModal = $('#mkdocs_search_modal');
    $searchModal.on('shown.bs.modal', function() {
        $searchModal.find('#mkdocs-search-query').focus();
    });
});

$('body').scrollspy({
    target: '.bs-sidebar',
});

/* Prevent disabled links from causing a page reload */
$("li.disabled a").click(function() {
    event.preventDefault();
});
