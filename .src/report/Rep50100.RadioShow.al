report 50101 "Radio Show"
{
    Caption = 'Radio Show';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = Basic;
    WordLayout = '.src/report/RadioShow.docx';
    //RDLCLayout = '.src/report/RadioShow.rdlc';
    DefaultLayout = Word;

    dataset
    {
        dataitem(DataItemName; "Radio Show")
        {
            column(No_; "No.") { }
            column(Radio_Show_Type; "Radio Show Type") { }
            column(Name; Name) { }
            column(Run_Time; "Run Time") { }
            column(Host_Code; "Host Code") { }
            column(Host_Name; "Host Name") { }
            column(Average_listeners; "Average listeners") { }
            column(Audience_Share; "Audience Share") { }
            column(Adevertising_Revenue; "Adevertising Revenue") { }
            column(Royality_Cost; "Royality Cost") { }
        }
    }
    requestpage
    {
        layout
        {
            area(content)
            {
                group(GroupName)
                {
                }
            }
        }
        actions
        {
            area(processing)
            {
            }
        }
    }
}
