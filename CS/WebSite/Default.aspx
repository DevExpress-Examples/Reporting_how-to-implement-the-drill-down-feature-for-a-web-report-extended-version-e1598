﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.XtraReports.v11.1.Web, Version=11.1.2.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.XtraReports.Web" TagPrefix="dxxr" %>
<%@ Register Assembly="DevExpress.Web.v11.1, Version=11.1.2.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxCallbackPanel" TagPrefix="dxcp" %>
<%@ Register Assembly="DevExpress.Web.v11.1, Version=11.1.2.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxPanel" TagPrefix="dxp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <center>
        <div style="text-align:left">
        <dxcp:ASPxCallbackPanel ID="ASPxCallbackPanel1" runat="server" Width="514px" 
            oncallback="ASPxCallbackPanel1_Callback" HideContentOnCallback="False">
            <PanelCollection>
                <dxp:PanelContent runat="server">
                    <dxxr:ReportToolbar ID="ReportToolbar1" runat="server" 
                        ShowDefaultButtons="False" ReportViewer="<%# ReportViewer1 %>">
                        <Items>
                            <dxxr:ReportToolbarButton ItemKind="Search" ToolTip="Display the search window" />
                            <dxxr:ReportToolbarSeparator />
                            <dxxr:ReportToolbarButton ItemKind="PrintReport" ToolTip="Print the report" />
                            <dxxr:ReportToolbarButton ItemKind="PrintPage" ToolTip="Print the current page" />
                            <dxxr:ReportToolbarSeparator />
                            <dxxr:ReportToolbarButton Enabled="False" ItemKind="FirstPage" ToolTip="First Page" />
                            <dxxr:ReportToolbarButton Enabled="False" ItemKind="PreviousPage" ToolTip="Previous Page" />
                            <dxxr:ReportToolbarLabel Text="Page" />
                            <dxxr:ReportToolbarComboBox ItemKind="PageNumber" Width="65px">
                            </dxxr:ReportToolbarComboBox>
                            <dxxr:ReportToolbarLabel Text="of" />
                            <dxxr:ReportToolbarTextBox IsReadOnly="True" ItemKind="PageCount" />
                            <dxxr:ReportToolbarButton ItemKind="NextPage" ToolTip="Next Page" />
                            <dxxr:ReportToolbarButton ItemKind="LastPage" ToolTip="Last Page" />
                            <dxxr:ReportToolbarSeparator />
                            <dxxr:ReportToolbarButton ItemKind="SaveToDisk" ToolTip="Export a report and save it to the disk" />
                            <dxxr:ReportToolbarButton ItemKind="SaveToWindow" ToolTip="Export a report and show it in a new window" />
                            <dxxr:ReportToolbarComboBox ItemKind="SaveFormat" Width="70px">
                                <Elements>
                                    <dxxr:ListElement Text="Pdf" Value="pdf" />
                                    <dxxr:ListElement Text="Xls" Value="xls" />
                                    <dxxr:ListElement Text="Rtf" Value="rtf" />
                                    <dxxr:ListElement Text="Mht" Value="mht" />
                                    <dxxr:ListElement Text="Text" Value="txt" />
                                    <dxxr:ListElement Text="Csv" Value="csv" />
                                    <dxxr:ListElement Text="Image" Value="png" />
                                </Elements>
                            </dxxr:ReportToolbarComboBox>
                        </Items>
                        <Styles>
                            <LabelStyle>
                            <Margins MarginLeft="3px" MarginRight="3px" />
                            </LabelStyle>
                        </Styles>
                    </dxxr:ReportToolbar>
                    <dxxr:ReportViewer ID="ReportViewer1" runat="server" 
                        OnUnload="ReportViewer1_Unload">
                    </dxxr:ReportViewer>
                </dxp:PanelContent>
            </PanelCollection>
        </dxcp:ASPxCallbackPanel>
        </div>
        </center>
    </div>
    </form>
</body>
</html>