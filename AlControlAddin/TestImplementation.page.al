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

                    trigger ReceiveText(MessageText: Text)
                    begin
                        Message(MessageText);
                    end;
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(PostText)
            {
                Caption = 'Post Customer Name';
                ToolTip = 'Posts Customer Name to addin';

                ApplicationArea = All;

                trigger OnAction()
                begin
                    CurrPage.BlazorControl.PostText(Rec.Name);
                end;
            }
        }
    }

    trigger OnOpenPage()
    begin
        if Rec.FindFirst() then;
    end;
}