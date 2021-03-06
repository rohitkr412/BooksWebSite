﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Protected/Protected.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="BooksCA.WebForm1" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div style =  "margin-left:auto; margin-right:auto; margin-top: 10px; height: 542px; width: 1347px;" class="panel panel-body">
        <br />
        <br />
        <br />
        
        <div class="text-right col-xs-4 col-sm-4 col-md-4">
        <asp:Label ID="FromLabel" runat="server"  Text="From" style="height:16px; width:32px; " ></asp:Label>
            </div>
        <div class="col-xs-8 col-sm-8 col-md-8">
        <asp:TextBox ID="FromTextBox" runat="server" style="width:230px;height:40px;" ></asp:TextBox>
        <asp:Button ID="FromButton" runat="server" OnClick="FromButton_Click" Text="..." />
        <asp:Calendar ID="datepicker" runat="server" Visible ="false" OnSelectionChanged="datepicker_SelectionChanged" OnDayRender="datepicker2_DayRender"></asp:Calendar>

            </div>
        <br />
        <br />
        <br />
        <br />
        <div class="text-right col-xs-4 col-sm-4 col-md-4">
        <asp:Label ID="ToLabel" runat="server"  Text="To" style="height:16px; width:32px"></asp:Label>
            </div>
         <div class="col-xs-8 col-sm-8 col-md-8">
        <asp:TextBox ID="ToTextBox" runat="server" style="width:230px;height:40px;position:center,fixed;align-items:center" ></asp:TextBox>
        <asp:Button ID="ToButton" runat="server" OnClick="ToButton_Click"  Text="..." />
         <asp:Calendar ID="datepicker2" runat="server" Visible ="false" OnSelectionChanged="datepicker2_SelectionChanged"  OnDayRender="datepicker2_DayRender"></asp:Calendar>
         </div>
        <br />
        <br />
        <br />
        <br /> 
        <div class="text-right col-xs-4 col-sm-4 col-md-4">
        <asp:Label ID="DiscountLabel" runat="server"  Text="Discount"></asp:Label>
            </div>
        <div class="col-xs-8 col-sm-8 col-md-8">
        <asp:TextBox ID="DiscountTextBox" runat="server" style="width:230px;height:40px;position:center,fixed;align-items:center" ></asp:TextBox>
        <asp:Label ID="DiscountWarning" runat="server"  Text="(Enter percentage)"></asp:Label>
            </div>
        <br />
        <br />
        <br />
        <br /> 
        <div class="text-right col-xs-4 col-sm-4 col-md-4">
        <asp:Button ID="ApplyButton" runat="server" class="btn btn-primary" Text="Apply" OnClick="ApplyButton_Click" />

        <br />      
        
        <asp:LinkButton ID="BookHistoryButton" runat="server" OnClick="BookHistoryButton_Click" >ViewDiscountHistory</asp:LinkButton>     
        
        <asp:GridView ID="GridView1" runat="server"  Visible="False" 
        DataKeyNames="ID" AutoGenerateDeleteButton="True" OnRowDeleting="GridView1_RowDeleting" >
        </asp:GridView>
            </div>
    </div>

</asp:Content>
