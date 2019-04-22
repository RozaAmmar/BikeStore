using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Objects;

public partial class UserControl_Admin_Manage_Products : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack )
        {
            MydbEntities mdb = new MydbEntities();
            var categories = from c in mdb.Categories
                             select new { c.CategoryID, c.CategoryName };
            DRLcategory.DataSource = categories.ToList();
            DRLcategory.DataTextField = "CategoryName";
            DRLcategory.DataValueField = "CategoryID";
            DRLcategory.DataBind();
        }
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
        var product = from p in mdb.Products
                       where p.ProductName.Contains(txtsearch.Text)
                       select new { p.ProductID,p.ProductName,p.ProductPrice,p.Manufacturer,p.Features,p.Description,p.Category.CategoryName };
        GridView1.DataSource = product.ToList();
        GridView1.DataBind();
        if (!product.Any())
            lblmsg.Text = "No Result!";
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        btnEdit.Enabled = true ;
        btnDelete.Enabled = true;
    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        MydbEntities mdb = new MydbEntities();
        if(btnSave.Text=="Save")
        {
            //add new
             ObjectParameter objParam = new ObjectParameter("ProductID" ,typeof(int) );
             mdb.Insert_Product(txtProductName.Text, Convert.ToDouble(txtPrice.Text), txtManufacturer.Text, txtfeatures.Text, txtdescription.Text, Convert.ToInt32(DRLcategory.SelectedValue.ToString()),objParam);
            FileUpload1.SaveAs(Server.MapPath(@"pics\product\") + objParam.Value.ToString() + ".jpg");
            lblmsg.Text = "Product Added Successfuly";
            MultiView1.ActiveViewIndex = 0;
        }
        else
        {
            //update product
            mdb.Update_Product(txtProductName.Text, Convert.ToDouble(txtPrice.Text), txtManufacturer.Text, txtfeatures.Text, txtdescription.Text,  Convert.ToInt32(productID.Value));
            lblmsg.Text = "Product Updated Successfuly";
            GridView1.DataSource = null;
            GridView1.DataBind();
            GridView1.SelectedIndex = -1;
            btnEdit.Enabled = false;
            btnDelete.Enabled = false;
            MultiView1.ActiveViewIndex = 0;
        }
    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        txtdescription.Text = string.Empty;
        txtfeatures.Text = string.Empty;
        txtManufacturer.Text = string.Empty;
        txtPrice.Text = string.Empty;
        txtProductName.Text = string.Empty;
        btnSave.Text = "Save";
        MultiView1.ActiveViewIndex = 1;
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        lblmsg.Text = "";
        GridView1.DataSource = null;
        GridView1.DataBind();
        GridView1.SelectedIndex = -1;
        btnEdit.Enabled = false;
        btnDelete.Enabled = false;
        MultiView1.ActiveViewIndex = 0;
    }
    protected void btnDelete_Click(object sender, EventArgs e)
    {
        MydbEntities mdb = new MydbEntities();
        mdb.Delete_Product(Convert.ToInt32(GridView1.SelectedRow.Cells[1].Text));
        lblmsg.Text = "Product Deleted Successfuly";
        GridView1.DataSource = null;
        GridView1.DataBind();
        GridView1.SelectedIndex = -1;
        btnEdit.Enabled = false;
        btnDelete.Enabled = false;

    }
    protected void btnEdit_Click(object sender, EventArgs e)
    {
        productID.Value = GridView1.SelectedRow.Cells[1].Text.ToString();
        txtProductName.Text = GridView1.SelectedRow.Cells[2].Text.ToString();
        txtPrice.Text = GridView1.SelectedRow.Cells[3].Text.ToString();
        txtManufacturer.Text = GridView1.SelectedRow.Cells[5].Text.ToString();
        txtfeatures.Text = GridView1.SelectedRow.Cells[4].Text.ToString();
        txtdescription.Text = GridView1.SelectedRow.Cells[6].Text.ToString();
        btnSave.Text = "Update";
        FileUpload1.Enabled =RequiredFieldValidator7.Enabled= false;
        MultiView1.ActiveViewIndex = 1;
    }
    protected void Button3_Click1(object sender, EventArgs e)
    {
        GridView1.DataSource = null;
        GridView1.DataBind();
        GridView1.SelectedIndex = -1;
        btnEdit.Enabled = false;
        btnDelete.Enabled = false;
        MultiView1.ActiveViewIndex = 0;
    }
    protected void btnAdd_Click1(object sender, EventArgs e)
    {
        productID.Value = string.Empty;
        txtProductName.Text = string.Empty;
        txtPrice.Text = string.Empty;
        txtManufacturer.Text = string.Empty;
        txtfeatures.Text = string.Empty;
        txtdescription.Text = string.Empty;
        btnSave.Text = "Save";
        FileUpload1.Enabled = RequiredFieldValidator7.Enabled = true ;
        MultiView1.ActiveViewIndex = 1;
    }
}