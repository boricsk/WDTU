page 50107 "Listenership entries"
{
    PageType = List;
    ApplicationArea = Basic;
    UsageCategory = History;
    SourceTable = "Listenership entry";

    layout
    {
        area(Content)
        {
            repeater(group)
            {
                field("Radio show no."; Rec."Radio show no.") { ApplicationArea = Basic; }

                field(Date; Rec.Date) { ApplicationArea = Basic; }

                field("Age demography"; Rec."Age demography") { ApplicationArea = Basic; }

                field("Ausience share"; Rec."Ausience share") { ApplicationArea = Basic; }

                field("Start time"; Rec."Start time") { ApplicationArea = Basic; }

                field("End time"; Rec."End time") { ApplicationArea = Basic; }

                field("Ratings source entry no."; Rec."Ratings source entry no.") { ApplicationArea = Basic; }

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