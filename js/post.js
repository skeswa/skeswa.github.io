$(function() {
    var shareButtonConfig = {
        description: (window.POST_TITLE ? ('"' + window.POST_TITLE + '" via @skeswa') : undefined) || 'A Cool Post on Sandile\'s Blog'
    };
    // Make the share button happen
    new Share('#share-button', shareButtonConfig);
    // Show the share button
    setTimeout(function() {
        $('#share-button').removeClass('concealed');
    }, 1000);
    setTimeout(function() {
        $('#share-button').addClass('visible');
    }, 1200);
    // Highlight the code segments
    hljs.initHighlightingOnLoad();
});
