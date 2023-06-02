report 50101 "Show by type"
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = all;
    WordLayout = '.src/report/RadioShowbyType.docx';
    DefaultLayout = Word;

    dataset
    {
        //dataitem(){}
        dataitem("Radio Show Type"; "Radio Show Type")
        {
            column(code; code) { }
            column(Description_RadioShowType; Description) { }
            column(userComment; userComment) { }
            dataitem("Radio Show"; "Radio Show")
            {
                DataItemLink = "Radio Show Type" = FIELD(Code);
                DataItemTableView = SORTING("Radio Show Type");
                PrintOnlyIfDetail = true;
                column(No_RadiShow; "No.") { IncludeCaption = true; }
                column(Name_RadioShow; Name) { IncludeCaption = true; }
                column(Run_Time_RadioShow; "Run Time") { IncludeCaption = true; }

                dataitem("Playlist header"; "Playlist header")
                {
                    DataItemLink = "Radio show no." = FIELD("No.");
                    DataItemTableView = SORTING("No.");
                    column(PostingDate_playlistheader; "Boardcast date") { IncludeCaption = true; }
                    column(Start_time_playlistheader; "Start time") { IncludeCaption = true; }

                }
            }
        }
    }
    requestpage
    {
        layout
        {
            area(Content)
            {
                group(Options)
                {
                    field(userComment; userComment)
                    {
                        ApplicationArea = All;
                        Caption = 'User Comment';
                    }
                }
            }
        }
    }


    labels
    {
        ReportTitle = 'Show Schedule by Type';
    }

    var
        userComment: Text;
}
