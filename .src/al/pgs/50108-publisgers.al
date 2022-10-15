page 50108 Publishers
{
    PageType = List;
    ApplicationArea = Basic;
    UsageCategory = Administration;
    SourceTable = "Radio Show Type";

    layout
    {
        area(Content)
        {
            repeater(group)
            {
                field(code; rec.code) { ApplicationArea = Basic; }

                field(Description; Rec.Description) { ApplicationArea = Basic; }

            }
        }
    }

    // actions
    // {
    //     area(Processing)
    //     {
    //         action(ActionName)
    //         {
    //             ApplicationArea = Basic;

    //             trigger OnAction()
    //             begin

    //             end;
    //         }
    //     }
    // }

    // var
    //     myInt: Integer;
}