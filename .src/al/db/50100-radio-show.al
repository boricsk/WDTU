table 50100 "Radio Show"
{
    // tábla tulajdonságait itt lehet definiálni
    // Caption              az aktuálisan kiválasztott nyelvhez tartozó feliratot definiálja
    // CaptionML            ez határozza meg a tábla többnyelvű feliratát. Infó https://docs.microsoft.com/hu-hu/dynamics-nav/multilanguage-development
    // Description          opcionálsi, dokumentációs használatra
    // DataPerCompany       lehetővé teszi, hogy a táblában lévő adatok vállalatonként elkülönítve vannak-e vagy megosztottak az adatbázisban lévő összes vállalattal
    // Permissions          különböző szintű hozzáséréseket tesz lehetővé a usernek (r - read ; i - insert ; m - modify ; d - delete)
    // LookupPageID         meghatározza, hogy melyik oldal legyen az alapértelmezett adatkeresés ebben a táblában
    // DrillDownPageID      meghatározza, hogy melyik oldal legyen az alapértelmezett lefúrás esetén
    // DataCaptionFields    lehetővé teszi, hogy mezőket definiáljunk, amelyek a felirat részeként jelennek meg. (Customerts tábla esetén a szám és a név megjelenik a cimsoron)
    // PasteIsValid         beillesztés engedélyezése
    // LinkedObject         a tábla SQL server objektumhoz való kapcsolása. Ez lehetővé teszi , hogy a táblát nem BC rendszerekhez is. Ez lehet pl, egy önállóan üzemeltetett
    //                      adatbázis. Ha True akkor a LinkedInTransactionProperty elérhetővé válik, és ennek az értékét No-ra kell állítani, ha az aktuális adatbázison kívül
    //                      SQL szerver objektumhoz kapcsolódik. A csatolandó objektumnak rendelkezni kell SQL tábladefinicióval, amely kompatibilis a BC tábladefinicióval
    // TableType            lehetővé teszi egy OData webszolgáltatásból (CRM vagy külső SQL-ből származó) adatok táblaként való használatát
    // ObsolateState        jelzi a fejlesztőnek, hogy a jövőben a táblát el fogják távolítani
    // ObsolateReason       az előző beállítás esetén ide írható az indok

    fields
    {

        field(1; "No."; code[20])
        {
            // a mező tulajdonságait itt kell definiálni, egyesek adattipus függőek, azonban léteznek univerzális tulajdonság készletek is.
            // univerzális tulajdonságok
            // field no.    Ez a mező azonosító a tábla objektumban, ezt a field kulcssóban kell definiálni nem itt.
            // Name         Ez az a cimke, amellyel az AL kód kivatkozik a mezőre. Ezt is a field után kell definiálni. Max 30 karakter lehet, speciális karaktereket tartalmazhat
            //              Bármikor megváltoztatható, a BC automatikusan kezeli a változást. Ha nincs megadva name lesz az alapértelmezés szerinti értéke.
            // Caption      A nyelvhez definiált felirat értéke.
            // CaptionML    Ez határozza meg a többnyelvű feliratot és azonosítja a használt nyelvet is.
            // Description  Belsó dokumentáció opcionális használati tulajdonsága
            // Data Type    Az adattípust definiálja. Ezt is a fieldben kell megadni (code[20])
            // Enabled      Meghatározza, hogy a mező aktív-e a felhasználó által generált eseményekhez. Default = Yes
            // AccessByPermission   Maghatározza azt az engedélymaszkot, amelyek a felhaszálói elérésre vonatkoznak.

            // BLOB (Binary Large OBject) típus tulajdonságai

            // SubType      Meghatározza a BLOB-ban tárolt adatok típusát és beállít egy import / export szűrőt is. Értéke lehet Bitmap a képekhez, Memo a szöveges adatokhoz
            //              és UserDefined bármi máshoz, ez a default.
            // Compressed   Ez határozza meg, hogy az adatok tömörítve legyenek-e. False, ha külső elérést is szeretnénk.

            // Code és Text adattípus tulajdonságai

            // InitValue    Inicializáláskor ezt az értéket kapja a mező
            // CaptionClass Azt definiálja, hogy a user tudja-e módosítani a szövegmező vagy jelölőnégyzet feliratát, defaultban üres.
            //              Infók : https://docs.microsoft.com/en-us/dynamics365/business-central/dev-itpro/
            // Editable     A mező szerkesztését engedélyezi v tiltja. default = 1
            // NotBlank, Numeric, CharAllowed, DateFormula és ValuesAlloved     Lehetővé teszik, hogy megszorításokat alkalazzunk a mezőre.
            // SQLDataType  Ez csak a Code típusra vonatkozik. Meghatározza, hogy milyen adattipus engedélyezett ebben a mezőben és hogy lesz leképezve SQL szerver adattipusra.
            //              Ez szabályozza a rendezést és a megjelenítést. A lehetőségek közé tartozik a VarChar, Integer, BigInteger és a Variant. A Varchar a default és
            //              szövegként kezel minden adatot. Az Integer és BigInteger csak számok bevitelét engedélyezi. Beállítás után ezt a tulajdonságot nem szabad változtatni
            // TableRelation    Ez definiálja a kapcsolatot a megadott céltábla adataival. (lefúrás lásd lentebb) A cél mezőjének az elsődleges kulcsban kell lennie.
            //                  A kapcsolat nem lehet feltételes / szűrt. 
            // ValidateTableRelation    Ha a TableRelation meg van adva ezt yes-re kell állítani hogy érvényesítse a kapcsolatot az adatok megadásakor, azaz ellenőrizze a 
            //                          bevitt adatokat. Ellenező esetben az automatikus táblaintegritás nem marad fent.
            // ExtendedData Type        A kiterjesztett adattipus opcionális kijelölését teszi lehetővé, amely speciális formázás és érvényesítést kap. A beállítható értékek :
            //                          URL, phone number, report filter, progress bar ratio, maszked entry (passwd)

            // Decimal és Integer adattipus tulajdonságai
            //
            //DecimalPlaces         Beállítja a tizedesjegyek minimális és maximális számát (min:max) Alapértelmezett : 2:2, max : 255:255, min : 0:0
            //BlankNumbers, BlankZero és SignDisplacement   Ezekkel az adatmező formázása és megjelenése szabályozható az oldalon. Az első kettő azt jelenti,
            //      hogy a kiválasztott érték minden mezőjét üresen kell megjeleníteni. A harmadik, pedig lehetővé teszi az adatok pozícionálását neg. érték esetén
            //MaxValue, MinValue    Beviteli tartomány megadása. A mező tipusa ezt befolyásolja.
            //AutoIncrement     Olyan mező meghatározását teszi lehetővé, amely minden beírt rekord esetén növekszik. Ha ezt használják, akkor szinte mindíg az 
            //                  elsődleges kulcs utólsó mezejeként használt mező automata frissítésének támogatására szolgál, ezáltal lehetővé téve egyedi
            //                  kulcs készítését. Ha igazra van állítva nem szabad AL-kódban felülírni
            //
            //Option adattipus tulajdonságai
            //
            //Hasonlóak más numerikus adattipuséhoz, mert egész számként van tárolva, de vannak specifikus tulajdonságai
            //OptionMembers     Ez részletezi az optionban tárolt egész értékek szöveges megfelelőjét.
            //OptionCaption, OptionCaptionML    Többnyelvűség esetén használhatóak, ua mint más adattipusoknál

            // minden mezőnek ez a két triggere van
            trigger OnLookup()
            begin
                // Ez a trigger akkor fut, ha a keresőmezőben lévő nyilra kattintunk. Ha a mező TableRelatio tulajdonsága egy mezőre vonatkozik akkor
                // egy legördölő lista meglelenése az alapértelmezett. A lista a táblához meghatározott mezőcsoporton alapul. Ennek az alapértelmezésnek 
                // a felülírására való ez a triggel. Bármilyen bejegyzés itt felülirja az alapértelmezést.
            end;

            trigger OnValidate()
            begin
                // Amikor a user beír valamit minden alkalommal lefut. A cél annak ellenőrzése, hogy a beírt érték megfelelő-e?
                // A validate függvénnyel is végrehajtható programvezérléssel.
            end;

            // AL eseményekre fel lehet iratkozni, ezeket a rendszer hívja, előny a könnyep update
            // More info : https://learn.microsoft.com/en-us/dynamics365/business-central/dev-itpro/developer/devenv-events-in-al
        }

        field(10; "Radio Show Type"; Code[10]) { TableRelation = "Radio Show Type"; }
        //mező hozzárendelés a táblához (csak azt az adatot lehet kiválasztani ami a  hozzárendelt táblába van )
        //ezzel lehet azt elérni, hogy legyen az input során választási lehetőség

        field(20; "Name"; Text[50])
        {
            trigger OnLookup()
            begin

            end;

            trigger OnValidate()
            begin

            end;
        }

        field(40; "Run Time"; Duration) { }

        field(50; "Host Code"; Code[20]) { }

        field(60; "Host Name"; Text[50]) { }

        field(100; "Average listeners"; Decimal)
        {
            // Statisztikai elemzéshez haszált mező. A hallgatók átlagos száma a minősítő ügynökség szerint.
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = average("Listenership entry"."Listener count"
            where("Radio Show No." = field("No."), Date = FIELD("Date filter"))); // A date filter a 1090 mező
        }

        field(110; "Audience Share"; Decimal)
        {
            // Statisztikai elemzéshez haszált mező. A hallgatók százalékos aránya időrésenként
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = average("Listenership entry"."Ausience share"
            where("Radio show no." = field("No."), Date = FIELD("Date filter")));
        }

        field(120; "Adevertising Revenue"; Decimal)
        {
            // Statisztikai elemzéshez haszált mező. A hirdetési bevételek összege
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = sum("Radio show entry"."Fee amount"
            where(
                 "Radio show no." = field("No."),
                 "Data format" = filter(Advertisement)
             ));
        }

        field(130; "Royality Cost"; Decimal)
        {
            // Statisztikai elemzéshez haszált mező. A jogdíjjak összege
            // Editable = false;
            // FieldClass = FlowField;
            // CalcFormula = sum("Radio show entry"."Fee amount"
            // where(
            //     "Radio show no." = field("No."),
            //     "Data format" = filter()
            // ))
        }

        field(1000; "Frequency"; Option) { OptionMembers = Hourly,Daily,Weekly,Monthly; } // ezeket az opciókat lehet választani

        field(1010; "Planned PSA Quantity"; Integer) { }

        field(1020; "Ads Planned quantity"; Integer) { }

        field(1030; "News reuired"; Boolean) { InitValue = true; } //default érték beállítása

        field(1040; "News duration"; Duration) { }

        field(1050; "Sports required"; Boolean) { InitValue = true; }

        field(1060; "Sports duration"; Duration) { }

        field(1070; "Weather required"; Boolean) { InitValue = true; }

        field(1080; "Weather duration"; Duration) { }

        field(1090; "Date filter"; Date)
        {
            FieldClass = FlowFilter; // a fenti 4 mezőre számított adatok korlátozására szolgáló szűrő.
            // FieldClass tulajdonság értékei
            // Alap beállítás = No
            // =FlowField,  azt jelenti, hogy nincs érték letárolva az adatbázisban, hanem futási időben kell azt kiszámolni. A számítást a CalcFormula-val kell definiálni.
            //              Nagyon fontos sebesség szempontjából a megfelelő kulcs konfiguráció. Ha a flowfield mező oldalon van akkor az oldal létrehozásakor számolják ki.
            //              Mivel értéket nem tartalmaz az ilyen mezőt nem lehet kulcsként felvenni.
            //              Példa : CalcFormula = average("Listenership Entry"."Listener Count" where ("Radio Show No." = field("No.")));
            //              A lehetséges módszerek : 
            //              Sum             Adatok összegzése
            //              Average         Adatok átlaga (összeg / sokok száma)
            //              Exist           Logikai igaz / hamis attól függően, hogy létezik-e bejegyzés
            //              Count           Bejegyzések száma
            //              Min / Max       Min / Max értékek
            //              Lookup          A megadott bejegyzés értéke
            //              
            //              A where lehetséges paraméterei:
            //              const           Ez egy állandó az érték mezőben, azaz egy adott értékre lesz leszűrve a tábla, pl lehet vevő név.
            //              filter          Az érték mező szűrésére használt kifejezés, amely alapján kell szűrni az adatbázist
            //              field           Az a mező a táblán belül, ahol a flowfield van.
            //              
            //              Ha a megadott mező egy FlowFilter, és az OnlyMaxLimit paraméter igaz, akkor a FlowFilter tartományt a rendszer azon alapon
            //              alkalmazza, hogy csak MaxLimit van, azaz True nincs alsó határ. Ez hasznos a mérlegadatok dátumszűrőinél. (Példát lásd:
            //              31. mező – Egyenleg a dátumon a 15. táblázatban – Főkönyvi számla)
            //
            // = FlowFilter szabályozza a flowfield-ek számítását a táblában, ha a flowfilters szerepel a calcformula-ban. Nem tartalmaz állandő adatokat,
            //              felhasználó specifikus szűrőket tartalmaz. Lehetővé teszi, hogy a user szülőrekord szintjén megadott szűrést alkalmazza a 
            //              flowfield a számításkor, ezzel rugalmas adatkiválasztási funkciót adunk a usernek.
        }

    }
    // kulcsok definiálása
    keys
    {
        key(PK; "No.", "Radio Show Type") { }

        // a kulcsok beállításait itt lehet megadni
        // MaintainSQLIndex és MaintainSIFTIndex tulajdonságok lehetővé teszik annak meghatározását, hogy egy adott kulcs vagy SumIndexFieldTechnology (SIFT ez a flowfield alapja)
        // folyamatosan karbantarandó-e vagy csak szükség esetén hozza létre újra. A karbantartott indexek minimalzálják a rekordfrissítési idők, de hosszabb
        // feld. időt igényelnek.
        //}
        // ha nincs kulcs definiálva az első rekord lesz az by default. Max 16 mező kombináció lehet egy kulcsban, max 900 byte hosszan. 40 kulcs a max táblánként.
        // ha a feld. sebességre van optimalizálva az app akkor fontos a az SQL szerver indexek elemzése
        // ha további kulcsokat adunk hozzá akkor ezek másodlagosak lesznek.
    }

    fieldgroups
    {//bevitelkor segítenek a választásban a felhasználónak. Dinamikusan generálódik egy legördülő vezérlőelem.
        fieldgroup(DropDown; "No.", Name, "Host Name") { }
        fieldgroup(Brick; "No.", Name, "Audience Share") { }
    }

    // tábla triggerek definiálása
    trigger OnDelete()
    begin
        // rekord törlésekor fut le
    end;

    trigger OnInsert()
    begin
        // akkor hajtódik végre, ha új rekordot kell beszúrni a táblába. Ha a RadioShow.INSERT(TRUE) akkor a riggel aktiválódik, ha False akkor nem.
        // alternatíva : Radioshow.INSERT; viszont az elsődleges kulcs egyediségét kikényszerítő black-box logic minden esetben aktív.
    end;

    trigger OnModify()
    begin
        // akkor hajtódik végre, ha egy rekordot módosítanak. A változást az xRec (rekord megváltoztatás előtti képe) és a Rec (aktuális rekord másolat) összehasonlítása határozza meg
        // fejlesztési munka során meg kell nézni, hogy mi a rekord vagy mező módosítás előtti értéke. A Rec és xRec rendszerváltozók.
    end;

    trigger OnRename()
    begin
        // A rekord elsődleges kulcsának módosításakor fut le. az elsődleges kulcs bármely részének megváltoztatása átnevezési művelet.
        // A BC-ben meg lehet változtatni a főrekord kulcsokat, ez automatikusan karbantartja az összes idegen kulcsokat is ezt nevezik 
        // hivatkozási integritásnak. Rekord törlés esetén ez nincs meg!
    end;
}