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
                field("No."; Rec."No.") { ApplicationArea = All; }

                field("Radio Show Type"; Rec."Radio Show Type") { ApplicationArea = All; }

                field(Name; Rec.Name) { ApplicationArea = All; }

                field("Run Time"; Rec."Run Time") { ApplicationArea = All; }

                field(Frequency; Rec.Frequency) { ApplicationArea = All; }
                field("Host Code"; Rec."Host Code") { ApplicationArea = All; }

                field("Host Name"; Rec."Host Name") { ApplicationArea = All; }
            }
            group(Requirements)
            {
                field("Planned PSA Quantity"; Rec."Planned PSA Quantity") { ApplicationArea = All; }
                field("Ads Planned quantity"; Rec."Ads Planned quantity") { ApplicationArea = All; }
                field("News reuired"; Rec."News reuired") { ApplicationArea = All; }
                field("News duration"; Rec."News duration") { ApplicationArea = All; }
                field("Sports required"; Rec."Sports required") { ApplicationArea = All; }
                field("Sports duration"; Rec."Sports duration") { ApplicationArea = All; }
                field("Weather required"; Rec."Weather required") { ApplicationArea = All; }
                field("Weather duration"; Rec."Weather duration") { ApplicationArea = All; }
            }
            group(Statistic)
            {
                field("Average listeners"; Rec."Average listeners") { ApplicationArea = All; }

                field("Audience Share"; Rec."Audience Share") { ApplicationArea = All; }

                field("Adevertising Revenue"; Rec."Adevertising Revenue") { ApplicationArea = All; }

                field("Royality Cost"; Rec."Royality Cost") { ApplicationArea = All; }
            }
        }
    }


}