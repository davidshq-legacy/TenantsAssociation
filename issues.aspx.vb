
Partial Class issues
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        SqlDataSource1.SelectParameters("ItemType").DefaultValue = DropDownList1.SelectedValue
    End Sub

    Protected Sub GridView1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles GridView1.SelectedIndexChanged
        SqlDataSource2.SelectParameters("varID").DefaultValue = GridView1.SelectedRow.Cells(1).Text
        MultiView1.ActiveViewIndex = 1
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Me.IsPostBack = False Then
            MultiView1.ActiveViewIndex = 0
        End If
    End Sub
    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        If User.Identity.IsAuthenticated = True Then
            SqlDataSource2.InsertParameters("varSummary").DefaultValue = TextBox1.Text
            SqlDataSource2.InsertParameters("varDescription").DefaultValue = TextBox2.Text
            SqlDataSource2.InsertParameters("varUserName").DefaultValue = User.Identity.Name
            SqlDataSource2.InsertParameters("varCategory").DefaultValue = Label2.Text
            SqlDataSource2.InsertParameters("varParent").DefaultValue = Label1.Text
            If FileUpload1.HasFile Then
                Dim extension As String = System.IO.Path.GetExtension(FileUpload1.FileName).ToLower
                If extension = ".jpg" Then
                    'Uncomment this line to Save the uploaded file
                    FileUpload1.SaveAs("D:\vhosts\\httpdocs\img\" & FileUpload1.FileName)
                    SqlDataSource2.InsertParameters("varFile").DefaultValue = FileUpload1.FileName
                End If
                If extension = ".jpeg" Then
                    'Uncomment this line to Save the uploaded file
                    FileUpload1.SaveAs("D:\vhosts\\httpdocs\img\" & FileUpload1.FileName)
                    SqlDataSource2.InsertParameters("varFile").DefaultValue = FileUpload1.FileName
                End If
                If extension = ".gif" Then
                    'Uncomment this line to Save the uploaded file
                    FileUpload1.SaveAs("D:\vhosts\\httpdocs\img\" & FileUpload1.FileName)
                    SqlDataSource2.InsertParameters("varFile").DefaultValue = FileUpload1.FileName
                End If
                If extension = ".png" Then
                    'Uncomment this line to Save the uploaded file
                    FileUpload1.SaveAs("D:\vhosts\\httpdocs\img\" & FileUpload1.FileName)
                    SqlDataSource2.InsertParameters("varFile").DefaultValue = FileUpload1.FileName
                End If
                SqlDataSource2.Insert()
                Label3.Text = "Thank you. Your response should be approved within twenty-four hours."
                MultiView1.ActiveViewIndex = 3
            Else
                Label3.Text = "Sorry. You are not currently logged in. You must be logged in to add information to an item."
                MultiView1.ActiveViewIndex = 3
            End If
        End If
    End Sub

    Protected Sub Button3_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button3.Click
        Label1.Text = GridView1.SelectedRow.Cells(1).Text
        Label2.Text = GridView1.SelectedRow.Cells(3).Text
        MultiView1.ActiveViewIndex = 2
    End Sub

    Protected Sub Button4_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button4.Click
        If User.Identity.IsAuthenticated = True Then
            SqlDataSource1.InsertParameters("varCloser").DefaultValue = User.Identity.Name
            SqlDataSource1.InsertParameters("varItem").DefaultValue = GridView1.SelectedRow.Cells(1).Text
            SqlDataSource1.Insert()
            MultiView1.ActiveViewIndex = 3
            Label3.Text = "Thank you. Your request for closure has been submitted."
        Else
            MultiView1.ActiveViewIndex = 3
            Label3.Text = "Sorry. You must login to request an item's closure."
        End If
    End Sub

    Protected Sub GridView2_RowDataBound(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewRowEventArgs) Handles GridView2.RowDataBound
        Dim row As GridViewRow
        For Each row In GridView2.Rows
            If row.Cells(6).Text <> "&nbsp;" Then
                row.Cells(6).Text = "<a href='http://www./img/" & row.Cells(6).Text & "' target='_new'>Click Here.</a>"
            Else
                row.Cells(6).Text = "None Available."
            End If
        Next
    End Sub
End Class
