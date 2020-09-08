controladdin BlazorControl
{
    RequestedHeight = 600;
    RequestedWidth = 640;

    VerticalStretch = true;
    VerticalShrink = true;
    HorizontalStretch = true;
    HorizontalShrink = true;

    StartupScript = './startup.js';
    Scripts = './interface.js';

    event ControlReady();
    event RecieveText(MessageText: Text);
    procedure PostText(MessageText: Text);
}