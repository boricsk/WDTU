table 50106 "Listenership entry"
{
    //DataClassification = ToBeClassified;

    fields
    {
        field(1; "Entry no."; Integer) { }

        field(10; "Ratings source entry no."; Integer) { }

        field(20; Date; Date) { }

        field(30; "Start time"; Time) { }

        field(40; "End time"; Time) { }

        field(50; "Radio show no."; Code[20]) { }

        field(60; "Listener count"; Decimal) { }

        field(70; "Ausience share"; Decimal) { }

        field(80; "Age demography"; Option) { OptionMembers = ,"0-12","13-18","19-34","35-50","51+"; }

    }

    keys
    {
        key(PrimaryKey; "Entry no.") { Clustered = true; }
        //A clustered index határozza meg a rekordok táblában való tárolásának fizikai sorrendjét. 
        //A clustered kulcs használata javíthatja a rekordok lekéréséhez szükséges időt.
        //Egy táblában csak egy clustered kulcs lehet.

        //hallgatói statisztikák készítéséhez definiált kulcs
        key("Reporting-1"; "Radio show no.", Date, "Start time", "Age demography") { SumIndexFields = "Listener count", "Ausience share"; }
        //a sumindexfields használatához meg kell a táblákban határozni a flow field mezőket.

    }

    var


    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}