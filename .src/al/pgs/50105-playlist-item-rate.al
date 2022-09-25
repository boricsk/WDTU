page 50105 "Playlist Item Rate"
{
    PageType = List;
    ApplicationArea = Basic;
    UsageCategory = Documents;
    SourceTable = "Playlist item rate";

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field("Item no."; "Item no.") { ApplicationArea = Basic; }

                field("Publisher code"; "Publisher code") { ApplicationArea = Basic; }

                field("Rate amount"; "Rate amount") { ApplicationArea = Basic; }

                field("Source type"; "Source type") { ApplicationArea = Basic; }

                field("Source no."; "Source no.") { ApplicationArea = Basic; }

                field("Start time"; "Start time") { ApplicationArea = Basic; }

                field("End time"; "End time") { ApplicationArea = Basic; }

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