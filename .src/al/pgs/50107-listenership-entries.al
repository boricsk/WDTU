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
                field("Radio show no."; "Radio show no.") { ApplicationArea = Basic; }

                field(Date; Date) { ApplicationArea = Basic; }

                field("Age demography"; "Age demography") { ApplicationArea = Basic; }

                field("Ausience share"; "Ausience share") { ApplicationArea = Basic; }

                field("Start time"; "Start time") { ApplicationArea = Basic; }

                field("End time"; "End time") { ApplicationArea = Basic; }

                field("Ratings source entry no."; "Ratings source entry no.") { ApplicationArea = Basic; }

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