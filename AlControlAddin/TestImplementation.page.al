page 50149 "Test Implementation"
{
    Caption = 'Test Implementation';
    PageType = Card;
    SourceTable = Customer;

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';
                field("No."; "No.")
                {
                    ApplicationArea = All;
                }
                field(Name; Name)
                {
                    ApplicationArea = All;
                }
            }
            group(Blazor)
            {
                Caption = 'Blazor Controladdin';
                usercontrol(BlazorControl; BlazorControl)
                {
                    ApplicationArea = All;

                    trigger ControlReady()
                    begin

                    end;
                }
            }
        }
    }

    trigger OnOpenPage()
    begin
        if Rec.FindFirst() then;
    end;
}