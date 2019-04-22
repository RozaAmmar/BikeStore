using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Objects;

public partial class UserControl_Admin_ManageCategories : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        lblmsg.Text = "";
        GridView1.DataSource = null;
        GridView1.DataBind();
        GridView1.SelectedIndex = -1;
        btnEdit.Enabled = false;
        btnDelete.Enabled = false;
        MydbEntities mdb = new MydbEntities();
        var category = from c in mdb.Categories 
                       where  c.CategoryName.Contains(txtSearch.Text )
                       select new { c.CategoryID,c.CategoryName };
        GridView1.DataSource = category.ToList();
        GridView1.DataBind();
        if (!category.Any())
            lblmsg.Text = "No Result!";
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        btnDelete.Enabled = true;
        btnEdit.Enabled = true;
    }
    protected void btnDelete_Click(object sender, EventArgs e)
    {
        int id =Convert.ToInt32( GridView1.SelectedRow.Cells[1].Text.ToString());
        MydbEntities mdb = new MydbEntities();
        mdb.Delete_Category(id);
        lblmsg.Text = "Deleted Successfuly";
        GridView1.DataSource = null;
        GridView1.DataBind();
        GridView1.SelectedIndex = -1;
        btnEdit.Enabled = false;
        btnDelete.Enabled = false;
    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        btnSave.Text = "Save";
        FileUpload1.Enabled = true;
        txtcatName.Text = string.Empty;
        MultiView1.ActiveViewIndex = 1;
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        GridView1.DataSource = null;
        GridView1.DataBind();
        GridView1.SelectedIndex = -1;
        btnEdit.Enabled = false;
        btnDelete.Enabled = false;
        MultiView1.ActiveViewIndex = 0;
    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        MydbEntities mdb = new MydbEntities();
        if(btnSave.Text=="Save")
        {
            //Add new
            ObjectParameter objParam = new ObjectParameter("CategoryID" ,typeof(int) );
            mdb.Insert_Category(txtcatName.Text, objParam);
            FileUpload1.SaveAs(Server.MapPath(@"pics\category\") + objParam.Value.ToString() + ".jpg");
            lblmsg.Text = "Category Added Successfuly";
            MultiView1.ActiveViewIndex = 0;
        }
        else
        {
            // Update Category
            mdb.Update_Category(txtcatName.Text, Convert.ToInt32(catid.Value));
            GridView1.DataSource = null;
            GridView1.DataBind();
            GridView1.SelectedIndex = -1;
            lblmsg.Text = "Category Updated Successfuly";
            MultiView1.ActiveViewIndex = 0;
        }
    }
    protected void btnEdit_Click(object sender, EventArgs e)
    {
        btnSave.Text = "Update";
        catid.Value = GridView1.SelectedRow.Cells[1].Text;
        txtcatName.Text = GridView1.SelectedRow.Cells[2].Text;
        FileUpload1.Enabled = false;
        RequiredFieldValidator2.Enabled = false;
        MultiView1.ActiveViewIndex = 1;
    }
}