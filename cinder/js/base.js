function getSearchTerm()
{
    var sPageURL = window.location.search.substring(1);
    var sURLVariables = sPageURL.split('&');
    for (var i = 0; i < sURLVariables.length; i++)
    {
        var sParameterName = sURLVariables[i].split('=');
        if (sParameterName[0] == 'q')
        {
            return sParameterName[1];
        }
    }
}

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
