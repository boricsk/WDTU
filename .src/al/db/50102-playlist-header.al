table 50102 "Playlist header"
{
    //DataClassification = ToBeClassified;

    fields
    {
        field(1; "No."; Code[20]) { }

        field(10; "Radio show no."; Code[20]) { }

        field(20; Description; Text[50]) { }

        field(30; "Boardcast date"; Date) { }

        field(40; Duration; Duration) { }

        field(50; "Start time"; Time) { }

        field(60; "End time"; Time) { }
    }

    keys
    {
        key(PK; "No.") { }
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