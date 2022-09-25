table 50104 "Playlist item rate"
{
    //DataClassification = ToBeClassified;

    fields
    {
        field(1; "Source type"; Option) { OptionMembers = Vendor,Customer; }

        field(2; "Source no."; Code[20])
        {
            TableRelation = If ("Source type" = const(Vendor)) Vendor."No."
            else
            if ("Source type" = const(Customer)) Customer."No.";
        }

        field(30; "Item no."; Code[20]) { }

        field(40; "Start time"; Time) { }

        field(50; "End time"; Time) { }

        field(60; "Rate amount"; Decimal) { }

        field(70; "Publisher code"; Code[10]) { }
    }

    keys
    {

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