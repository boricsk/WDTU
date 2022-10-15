page 50106 "Radio Show Entries"
{
    PageType = List;
    ApplicationArea = Basic;
    UsageCategory = History;
    SourceTable = "Radio show entry";

    layout
    {
        area(Content)
        {
            repeater(group)
            {
                field("Radio show no."; Rec."Radio show no.") { ApplicationArea = Basic; }

                field(Description; Rec.Description) { ApplicationArea = Basic; }

                field(Duration; Rec.Duration) { ApplicationArea = Basic; }

                field(Date; Rec.Date) { ApplicationArea = Basic; }

                field(Time; Rec.Time) { ApplicationArea = Basic; }

                field("ACSAP ID"; Rec."ACSAP ID") { ApplicationArea = Basic; }

                field("Fee amount"; Rec."Fee amount") { ApplicationArea = Basic; }

                field("Publisher code"; Rec."Publisher code") { ApplicationArea = Basic; }

                field("Entry no."; Rec."Entry no.") { ApplicationArea = Basic; }


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