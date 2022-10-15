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
                field("No."; Rec."No.") { ApplicationArea = Basic; }

                field(Description; Rec.Description) { ApplicationArea = Basic; }

                field("Radio show no."; Rec."Radio show no.") { ApplicationArea = Basic; }

                field("Start time"; Rec."Start time") { ApplicationArea = Basic; }

                field("End time"; Rec."End time") { ApplicationArea = Basic; }

                field("Boardcast date"; Rec."Boardcast date") { ApplicationArea = Basic; }

                field(Duration; Rec.Duration) { ApplicationArea = Basic; }

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