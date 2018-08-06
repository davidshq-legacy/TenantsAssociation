<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="issues.aspx.vb" Inherits="issues" title="'s Tenants Association - View Issues." %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="server">
    <div>
        &nbsp;
    </div>
        <asp:MultiView ID="MultiView1" runat="server">
            <asp:View ID="View1" runat="server">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
            SelectCommand="SelectItems" SelectCommandType="StoredProcedure" InsertCommand="RequestClose" InsertCommandType="StoredProcedure">
            <SelectParameters>
            <asp:Parameter Name="ItemType" DefaultValue="61" Type="int16" />
            </SelectParameters>
            <InsertParameters>
            <asp:Parameter Name="varCloser" Type="string" />
            <asp:Parameter Name="varItem" Type="string" />
            </InsertParameters>
            </asp:SqlDataSource>
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem Selected="True" Value="61">All Requests</asp:ListItem>
            <asp:ListItem Value="23">Structural - Disaster</asp:ListItem>
            <asp:ListItem Value="22">Structural - Major</asp:ListItem>
            <asp:ListItem Value="21">Structural - Minor</asp:ListItem>
            <asp:ListItem Value="12">Cosmetic - Major</asp:ListItem>
            <asp:ListItem Value="11">Cosmetic - Minor</asp:ListItem>
            <asp:ListItem Value="51">Improvement Request - Major</asp:ListItem>
            <asp:ListItem Value="52">Improvement Request - Minor</asp:ListItem>
            <asp:ListItem Value="42">Other - Major</asp:ListItem>
            <asp:ListItem Value="41">Other - Minor</asp:ListItem>
            <asp:ListItem Value="0">Closed Issues</asp:ListItem>
        </asp:DropDownList>
        <asp:Button ID="Button1" runat="server" Text="Select." /><br />
        <asp:GridView ID="GridView1" runat="server" AllowSorting="True"
            AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333"
            GridLines="None" Width="779px">
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="ID" HeaderText="ID:" InsertVisible="False" ReadOnly="True"
                    SortExpression="ID" />
                <asp:BoundField DataField="IssueTitle" HeaderText="Issue Summary:" SortExpression="IssueTitle" />
                <asp:BoundField DataField="IssueCategory" HeaderText="Category:" SortExpression="IssueCategory" />
                <asp:BoundField DataField="Submitter" HeaderText="Submitter:" SortExpression="Submitter" />
                <asp:BoundField DataField="Date" HeaderText="Date:" SortExpression="Date" />
            </Columns>
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <AlternatingRowStyle BackColor="White" />
        </asp:GridView>
            </asp:View>
            <asp:View ID="View2" runat="server">
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
        SelectCommand="ShowIssue" SelectCommandType="StoredProcedure" InsertCommand="AddNote" InsertCommandType="StoredProcedure">
        <SelectParameters>
        <asp:Parameter Name="varID" Type="Int16" />
        </SelectParameters>
        <InsertParameters>
        <asp:Parameter Name="varSummary" Type="String" />
        <asp:Parameter Name="varDescription" Type="String" />
        <asp:Parameter Name="varUserName" Type="String" />
        <asp:Parameter Name="varCategory" Type="int16" />
        <asp:Parameter Name="varParent" Type="int16" />
        <asp:Parameter Name="varFile" Type="string" />
        </InsertParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" Width="782px">
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <Columns>
                <asp:BoundField DataField="ID" HeaderText="ID:" InsertVisible="False" SortExpression="ID" />
                <asp:BoundField DataField="IssueTitle" HeaderText="Summary:" SortExpression="IssueTitle" />
                <asp:BoundField DataField="IssueDescription" HeaderText="Description:" SortExpression="IssueDescription" />
                <asp:BoundField DataField="IssueCategory" HeaderText="Category:" SortExpression="IssueCategory" />
                <asp:BoundField DataField="Submitter" HeaderText="Submitter:" SortExpression="Submitter" />
                <asp:BoundField DataField="Date" HeaderText="Date:" SortExpression="Date" />
                <asp:BoundField DataField="ImageAddress" HeaderText="View Image:" SortExpression="ImageAddress" />
            </Columns>
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <AlternatingRowStyle BackColor="White" />
        </asp:GridView>
                <asp:Button ID="Button3" runat="server" Text="Add Additional Notes." />
                <asp:Button ID="Button4" runat="server" Text="Request Item Closure." /></asp:View>
            <asp:View ID="View3" runat="server">
        <table style="width: 350px">
            <tr>
                <td style="width: 100px; height: 21px;">
                    Issue ID:</td>
                <td style="width: 100px; height: 21px;">
                    <asp:Label ID="Label1" runat="server"></asp:Label></td>
            </tr>
            <tr>
                <td style="width: 100px">
                    Category:</td>
                <td style="width: 100px">
                    <asp:Label ID="Label2" runat="server"></asp:Label></td>
            </tr>
            <tr>
                <td style="width: 100px">
                    Summary:</td>
                <td style="width: 100px">
                    <asp:TextBox ID="TextBox1" runat="server" Width="276px"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 100px">
                    Additional Notes:</td>
                <td style="width: 100px">
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine" Width="281px"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 100px">
                    Picture:</td>
                <td style="width: 100px">
                    <asp:FileUpload ID="FileUpload1" runat="server" /></td>
            </tr>
            <tr>
                <td style="width: 100px">
                    Submit:</td>
                <td style="width: 100px">
                    <asp:Button ID="Button2" runat="server" Text="Go." /></td>
            </tr>
        </table>
            </asp:View>
            <asp:View ID="View4" runat="server">
                <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label></asp:View>
        </asp:MultiView><br />
        <br />
</asp:Content>
