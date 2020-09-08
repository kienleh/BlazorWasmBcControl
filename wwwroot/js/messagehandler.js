//dotnet interop
window.dotnetJsFunctions = {
    sendTextToBc: function (messageText) {
        parent.postMessage({call:'sendTextToBc', value: messageText},"*");
    },
};

//javascript message handling
window.addEventListener('message', function(event) {
    var origin = event.origin || event.originalEvent.origin; // For Chrome, the origin property is in the event.originalEvent object.
    
    if (typeof event.data == 'object') {
        console.log('recieved message');
        console.log(event.data);
        handleMessage(event.data);
    }
}, false);

function handleMessage(eventData) {
    switch(eventData.call){
        case 'PostText':
            setCustomerName(eventData.value);
            break;
    }
}

function setCustomerName(custName) {
    console.log('setting customer name: ' + custName);
    
}