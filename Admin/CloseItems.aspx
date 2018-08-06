<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="CloseItems.aspx.vb" Inherits="Admin_CloseItems" title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" runat="server"
    SelectCommand="Select * from Issues where RequestClosure !=''" SelectCommandType="Text"
    UpdateCommand="CloseItem" UpdateCommandType="StoredProcedure">
     <UpdateParameters>
     <asp:Parameter Name="varID" Type="int16" />
     </UpdateParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" CellPadding="4" DataSourceID="SqlDataSource1"
        ForeColor="#333333" GridLines="None" AutoGenerateColumns="False" Width="766px">
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True"
                SortExpression="ID" />
            <asp:BoundField DataField="IssueTitle" HeaderText="IssueTitle" SortExpression="IssueTitle" />
            <asp:BoundField DataField="IssueDescription" HeaderText="IssueDescription" SortExpression="IssueDescription" />
            <asp:BoundField DataField="IssueCategory" HeaderText="IssueCategory" SortExpression="IssueCategory" />
            <asp:BoundField DataField="Submitter" HeaderText="Submitter" SortExpression="Submitter" />
            <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
            <asp:BoundField DataField="RequestClosure" HeaderText="RequestClosure" SortExpression="RequestClosure" />
        </Columns>
    </asp:GridView>
    <asp:Button ID="Button1" runat="server" Text="Closed Selected" />
</asp:Content>

