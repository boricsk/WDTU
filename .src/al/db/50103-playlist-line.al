table 50103 "Playlist line"
{
    //DataClassification = ToBeClassified;

    fields
    {
        field(1; "Document no."; Code[20]) { }

        field(2; "Line no."; Integer) { }

        field(10; Type; Option) { OptionMembers = ,Resource,Show,Item; }

        field(20; "No."; Code[20])
        {
            TableRelation = if (Type = const(Resource)) Resource."No."
            else
            if (Type = const(Show)) "Radio Show"."No."
            else
            if (Type = const(Item)) Item."No.";
            //a radio show entry-ben van definiálva a type-ban 3 option lehetőség, ezen érték alapján feltételes hozzárendelést kell megvalósítnai.
        }

        field(30; "Data format"; Option) { OptionMembers = ,Vinyl,CD,MP3,PSA,Advertisement; }

        field(40; "Publisher"; Code[10]) { }

        field(50; Description; Text[50]) { }

        field(60; Duration; Duration) { }

        field(70; "Start time"; Time) { }

        field(80; "End time"; Time) { }
    }

    keys
    {
        // eddig a rendszer az No. t használta elsődlege kulcsként, de ez nem egyedi, ezért másikat kell definiálni
        key(PrimaryKey; "Document no.", "Line no.") { Clustered = true; }


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