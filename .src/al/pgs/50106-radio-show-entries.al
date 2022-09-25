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
                field("Radio show no."; "Radio show no.") { ApplicationArea = Basic; }

                field(Description; Description) { ApplicationArea = Basic; }

                field(Duration; Duration) { ApplicationArea = Basic; }

                field(Date; Date) { ApplicationArea = Basic; }

                field(Time; Time) { ApplicationArea = Basic; }

                field("ACSAP ID"; "ACSAP ID") { ApplicationArea = Basic; }

                field("Fee amount"; "Fee amount") { ApplicationArea = Basic; }

                field("Publisher code"; "Publisher code") { ApplicationArea = Basic; }

                field("Entry no."; "Entry no.") { ApplicationArea = Basic; }


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