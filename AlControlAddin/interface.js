// send message to dotnet blazor addin
function PostText(messageText)
{
    console.log('Send to iframe');
    console.log(messageText);

    var frame = document.getElementById('blazorframe');
    frame.contentWindow.postMessage({call:'PostText', value: messageText}, '*');
}

// receive messages from dotnet blazor addin
// create event handler
var eventMethod = window.addEventListener ? "addEventListener" : "attachEvent";
var eventer = window[eventMethod];
var messageEvent = eventMethod == "attachEvent" ? "onmessage" : "message";

// listen to message from child window
eventer(messageEvent,function(e) {
    console.log('received message from addin: ',e.data);
    handleMessage(e.data);
},false);

function handleMessage(eventData) {
    switch(eventData.call) {
        case 'sendTextToBc':
            console.log('message value: ' + eventData.value);
            Microsoft.Dynamics.NAV.InvokeExtensibilityMethod('ReceiveText', [eventData.value]);
            break;
    }
}