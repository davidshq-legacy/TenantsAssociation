Imports System.Net.Mail
Partial Class add
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        If User.Identity.IsAuthenticated = True Then
            SqlDataSource1.InsertParameters("varSummary").DefaultValue = TextBox1.Text
            SqlDataSource1.InsertParameters("varDescription").DefaultValue = TextBox2.Text
            SqlDataSource1.InsertParameters("varCategory").DefaultValue = DropDownList1.SelectedValue
            SqlDataSource1.InsertParameters("varUserName").DefaultValue = User.Identity.Name
            MultiView1.ActiveViewIndex = 1
            If FileUpload1.HasFile Then
                Dim extension As String = System.IO.Path.GetExtension(FileUpload1.FileName).ToLower
                If extension = ".jpg" Then
                    'Uncomment this line to Save the uploaded file
                    FileUpload1.SaveAs("D:\vhosts\\httpdocs\img\" & FileUpload1.FileName)
                    SqlDataSource1.InsertParameters("varFile").DefaultValue = FileUpload1.FileName
                End If
                If extension = ".jpeg" Then
                    'Uncomment this line to Save the uploaded file
                    FileUpload1.SaveAs("D:\vhosts\\httpdocs\img\" & FileUpload1.FileName)
                    SqlDataSource1.InsertParameters("varFile").DefaultValue = FileUpload1.FileName
                End If
                If extension = ".gif" Then
                    'Uncomment this line to Save the uploaded file
                    FileUpload1.SaveAs("D:\vhosts\\httpdocs\img\" & FileUpload1.FileName)
                    SqlDataSource1.InsertParameters("varFile").DefaultValue = FileUpload1.FileName
                End If
                If extension = ".png" Then
                    'Uncomment this line to Save the uploaded file
                    FileUpload1.SaveAs("D:\vhosts\\httpdocs\img\" & FileUpload1.FileName)
                    SqlDataSource1.InsertParameters("varFile").DefaultValue = FileUpload1.FileName
                End If

                Label1.Text = "Thank you. Your request has been submitted. We will try to review it within a day."

            End If
            SqlDataSource1.Insert()
        Else
            Label1.Text = "Sorry, you are not logged in. You must be logged in to open an issue."
            MultiView1.ActiveViewIndex = 1
        End If
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Me.IsPostBack = False Then
            MultiView1.ActiveViewIndex = 0
        End If
    End Sub
End Class
