window.addEventListener('message', function(event) {
    var origin = event.origin || event.originalEvent.origin; // For Chrome, the origin property is in the event.originalEvent object.
    
    if (typeof event.data == 'object') {
        console.log('recieved message');
        console.log(event.data);
    }
}, false);