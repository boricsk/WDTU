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
                field("No."; Rec."No.") { ApplicationArea = Basic; }

                field("Radio Show Type"; Rec."Radio Show Type") { ApplicationArea = Basic; }

                field(Name; Rec.Name) { ApplicationArea = Basic; }

                field("Run Time"; Rec."Run Time") { ApplicationArea = Basic; }

                field("Host Code"; Rec."Host Code") { ApplicationArea = Basic; }

                field("Host Name"; Rec."Host Name") { ApplicationArea = Basic; }

                field("Average listeners"; Rec."Average listeners") { ApplicationArea = Basic; }

                field("Audience Share"; Rec."Audience Share") { ApplicationArea = Basic; }

                field("Adevertising Revenue"; Rec."Adevertising Revenue") { ApplicationArea = Basic; }

                field("Royality Cost"; Rec."Royality Cost") { ApplicationArea = Basic; }
            }
        }
    }


}