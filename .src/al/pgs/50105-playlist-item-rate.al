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
                field("Item no."; Rec."Item no.") { ApplicationArea = Basic; }

                field("Publisher code"; Rec."Publisher code") { ApplicationArea = Basic; }

                field("Rate amount"; Rec."Rate amount") { ApplicationArea = Basic; }

                field("Source type"; Rec."Source type") { ApplicationArea = Basic; }

                field("Source no."; Rec."Source no.") { ApplicationArea = Basic; }

                field("Start time"; Rec."Start time") { ApplicationArea = Basic; }

                field("End time"; Rec."End time") { ApplicationArea = Basic; }

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