<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="register.aspx.vb" Inherits="register" title=" Tenant's Association - Register for a New Account." %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    Please use your apartment name as your user name. If you wish to include an additional
    portion to your name, that is fine, but without the apartment as at least part of
    your name, it will be impossible for the management to know where the problem is.
    Thus appropriate examples of a username would be john-132, or 82D.<br />
    <br />
    <center>
    <asp:CreateUserWizard ID="CreateUserWizard1" runat="server" BackColor="#FFFBD6" BorderColor="#FFDFAD"
        BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em">
        <WizardSteps>
            <asp:CreateUserWizardStep runat="server">
            </asp:CreateUserWizardStep>
            <asp:CompleteWizardStep runat="server">
            </asp:CompleteWizardStep>
        </WizardSteps>
        <SideBarStyle BackColor="#990000" Font-Size="0.9em" VerticalAlign="Top" />
        <TitleTextStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <SideBarButtonStyle ForeColor="White" />
        <NavigationButtonStyle BackColor="White" BorderColor="#CC9966" BorderStyle="Solid"
            BorderWidth="1px" Font-Names="Verdana" ForeColor="#990000" />
        <HeaderStyle BackColor="#FFCC66" BorderColor="#FFFBD6" BorderStyle="Solid" BorderWidth="2px"
            Font-Bold="True" Font-Size="0.9em" ForeColor="#333333" HorizontalAlign="Center" />
        <CreateUserButtonStyle BackColor="White" BorderColor="#CC9966" BorderStyle="Solid"
            BorderWidth="1px" Font-Names="Verdana" ForeColor="#990000" />
        <ContinueButtonStyle BackColor="White" BorderColor="#CC9966" BorderStyle="Solid"
            BorderWidth="1px" Font-Names="Verdana" ForeColor="#990000" />
    </asp:CreateUserWizard>
    </center>
</asp:Content>

