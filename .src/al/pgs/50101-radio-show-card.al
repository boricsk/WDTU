//#pragma implicitwith disable
page 50101 "Radio Show Card"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Radio Show";

    layout
    {
        area(Content)
        {
            group(General)
            {
                field("No."; "No.") { ApplicationArea = Basic; }

                field("Radio Show Type"; "Radio Show Type") { ApplicationArea = Basic; }

                field(Name; Name) { ApplicationArea = Basic; }

                field("Run Time"; "Run Time") { ApplicationArea = Basic; }

                field("Host Code"; "Host Code") { ApplicationArea = Basic; }

                field("Host Name"; "Host Name") { ApplicationArea = Basic; }

                field("Average listeners"; "Average listeners") { ApplicationArea = Basic; }

                field("Audience Share"; "Audience Share") { ApplicationArea = Basic; }

                field("Adevertising Revenue"; "Adevertising Revenue") { ApplicationArea = Basic; }

                field("Royality Cost"; "Royality Cost") { ApplicationArea = Basic; }
            }
        }
    }


}