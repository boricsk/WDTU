page 50100 "Radio Show List"
{
    //Az oldalak vezérlők, triggerek, műveletek és AL kódok kombinációjából állnak.
    // Vezérlők / Controls          Ezek segítségével lehet megtekinteni illetve szerkeszteni az adatokat, parancsot kiválasztani és állapotot megjeleníteni.
    // Beállítások / Properties     Az objektum attribútumai, jellemzői, ezek határozzák meg az állapotát, megjelenégét.
    // Műveletek / Actions          Menüelemek, amelyek ikonok lehetnek.
    // Eseményidítók / Triggers     Előre definiált függvények, amelyek egy adott esemény hatására futnak.


    // A page tuljdonságai
    //
    //Caption és CaptionML          Oldalnév beállítása a nyelvi beállításoktól függően.
    //Editable                      Ez határozza meg, hogy az oldalon levő vezérlők szerkeszthetőek-e (feltételezve, hogy az oldalhoz kapcsolt tábla is szerkeszthető)
    //Description                   Belső dokumentáláshoz van.
    //Permissions                   Felhasználói hozzásérés vezérlésére van. r = olvasás, i = beszúrás, m = módosítás és d = törlés. Meghatározásakor célszerű a végfelhasználói liszencel tesztelni.
    //PageType                      Az oldal tipusát definiálja. Role Center, card, list, List Plus, Worksheet, Confirmation Dialog, Standard Dialog, Navigate page, Card Part, List Part.
    //CardPageID                    Ez annak a kártyaoldalnak az azonosítója, amelyet akkor kell elindítani, ha a felhasználó duplán kattint egy bejegyzésre a listában. Ez csak a lista oldalakon használatos.


    PageType = List;
    SourceTable = "Radio Show"; // összekapcsolás az adatbázissal ezzel kap függőséget ez a tábla objetumtól
    ApplicationArea = All;
    UsageCategory = Administration;
    CardPageId = "Radio Show Card";

    layout
    {
        area(Content)
        {
            repeater(group) // ezt nem tudom mi
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


    trigger OnAfterGetCurrRecord()
    begin
        // Fontos, hogy lehetőleg a page-eken belül a lehető legkevesebb AL kóddal dolgozzunk, inkább a táblaáblába tegyük őket.
    end;

}