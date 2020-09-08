var controlHtml = 
    '<iframe id="blazorframe" src="https://kienleh.github.io/BlazorWasmBcControl/" title="BlazorApp" width="100%" height="100%" frameBorder="0"></iframe>';

var controlAddIn = document.getElementById('controlAddIn');
controlAddIn.innerHTML = controlHtml;

function docReady(fn) {
    if (document.readyState === "complete" || document.readyState === "interactive") {
        setTimeout(fn, 1);
    } else {
        document.addEventListener("DOMContentLoaded", fn);
    }
}

docReady(function () {
    Microsoft.Dynamics.NAV.InvokeExtensibilityMethod('ControlReady', []);
});
