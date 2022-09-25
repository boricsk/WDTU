table 50101 "Radio Show Type"
{
    //DataClassification = ToBeClassified;

    //Kapcsolat megadása egy db és egy oldal között. ez a tábla lesz az amiből az 50100-asban választani lehet majd.
    LookupPageId = "Radio Show Type";
    DrillDownPageId = "Radio Show Type";
    fields
    {
        field(1; code; code[20]) { }
        field(10; Description; Text[50]) { }
    }

    var
        myInt: Integer;

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