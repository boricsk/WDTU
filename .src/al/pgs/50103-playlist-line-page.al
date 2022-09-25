page 50103 "Playlist document list"
{
    PageType = List;
    ApplicationArea = Basic;
    UsageCategory = Documents;
    SourceTable = "Playlist header";

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field("No."; "No.") { ApplicationArea = Basic; }

                field(Description; Description) { ApplicationArea = Basic; }

                field("Radio show no."; "Radio show no.") { ApplicationArea = Basic; }

                field("Start time"; "Start time") { ApplicationArea = Basic; }

                field("End time"; "End time") { ApplicationArea = Basic; }

                field("Boardcast date"; "Boardcast date") { ApplicationArea = Basic; }

                field(Duration; Duration) { ApplicationArea = Basic; }

            }
        }
    }

    // actions
    // {
    //     area(Processing)
    //     {
    //         action(ActionName)
    //         {
    //             ApplicationArea = All;

    //             trigger OnAction()
    //             begin

    //             end;
    //         }
    //     }
    // }

    // var
    //     myInt: Integer;
}