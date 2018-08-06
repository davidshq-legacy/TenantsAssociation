<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="add.aspx.vb" Inherits="add" title=" Tenant's Association - Add a New Issue." %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="server">
    <div>
        &nbsp;&nbsp;</div>
        <br />
        <asp:MultiView ID="MultiView1" runat="server">
            <asp:View ID="View1" runat="server">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        InsertCommand="AddItem" InsertCommandType="StoredProcedure">
        <InsertParameters>
        <asp:Parameter Name="varSummary" Type="string" />
        <asp:Parameter Name="varDescription" Type="string" />
        <asp:Parameter Name="varCategory" Type="int16" />
        <asp:Parameter Name="varUserName" Type="string" />
        <asp:Parameter Name="varFile" Type="string" />
        </InsertParameters>
        </asp:SqlDataSource>
        <table style="width: 330px" id="TABLE1">
            <tr>
                <td style="width: 100px; height: 26px">
                    Summary:</td>
                <td style="width: 100px; height: 26px">
                    <asp:TextBox ID="TextBox1" runat="server" Width="294px"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 100px; height: 42px">
                    Description:</td>
                <td style="width: 100px; height: 42px">
                    <asp:TextBox ID="TextBox2" runat="server" Height="85px" TextMode="MultiLine" Width="294px"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 100px; height: 24px">
                    Issue Type:</td>
                <td style="width: 100px; height: 24px">
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem Value="23">Structural - Disaster</asp:ListItem>
                        <asp:ListItem Value="22">Structural - Major</asp:ListItem>
                        <asp:ListItem Value="21">Structural - Minor</asp:ListItem>
                        <asp:ListItem Value="12">Cosmetic - Major</asp:ListItem>
                        <asp:ListItem Value="11">Cosmetic - Minor</asp:ListItem>
                        <asp:ListItem Value="51">Improvement Request - Major</asp:ListItem>
                        <asp:ListItem Value="52">Improvement Request - Minor</asp:ListItem>
                        <asp:ListItem Value="42">Other - Major</asp:ListItem>
                        <asp:ListItem Value="41">Other - Minor</asp:ListItem>
                    </asp:DropDownList></td>
            </tr>
            <tr>
                <td style="width: 100px; height: 24px">
                    Pictures:</td>
                <td style="width: 100px; height: 24px">
                    <asp:FileUpload ID="FileUpload1" runat="server" /></td>
            </tr>
            <tr>
                <td style="width: 100px">
                    Submit:</td>
                <td style="width: 100px">
                    <asp:Button ID="Button1" runat="server" Text="Go." /></td>
            </tr>
        </table>
            </asp:View>
            <asp:View ID="View2" runat="server">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Verdana" ForeColor="DarkRed"
                    Text="Thank You. Your Issue Was Successfully Submitted. Expect to See It Listed Within 24 Hours."></asp:Label></asp:View>
        </asp:MultiView>
    </asp:Content>
