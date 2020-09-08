controladdin BlazorControl
{
    RequestedHeight = 480;
    RequestedWidth = 640;

    VerticalStretch = true;
    VerticalShrink = true;
    HorizontalStretch = true;
    HorizontalShrink = true;

    StartupScript = './startup.js';
    Scripts = './interface.js';

    event ControlReady();
}