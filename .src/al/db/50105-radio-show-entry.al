table 50105 "Radio show entry"
{
    //DataClassification = ToBeClassified;

    fields
    {
        field(1; "Entry no."; Integer) { }

        field(10; "Radio show no."; Code[20]) { }

        field(20; Type; Option) { OptionMembers = ,Resource,Show,Item; }

        field(30; "No."; Code[20]) { }

        field(40; "Data format"; Option) { OptionMembers = ,Vinyl,CD,MP3,PSA,Advertisement; }

        field(50; Description; Text[50]) { }

        field(60; Date; Date) { }

        field(70; Time; Time) { }

        field(80; Duration; Duration) { }

        field(90; "Fee amount"; Decimal) { }

        field(100; "ACSAP ID"; Integer) { }

        field(120; "Publisher code"; Code[10]) { }
    }

    keys
    {
        key(PrimaryKey; "Entry no.") { Clustered = true; }
        //A reportokhoz használt adatokhoz is jó ha van kulcs
        key("Reporting-1"; "Radio show no.", Date) { SumIndexFields = "Fee amount"; }
        key("Reporting-2"; Type, "No.", Date) { SumIndexFields = "Fee amount"; }
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