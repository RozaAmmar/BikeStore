﻿//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using System;
using System.Data.Entity;
using System.Data.Entity.Infrastructure;
using System.Data.Objects;
using System.Data.Objects.DataClasses;
using System.Linq;

public partial class MydbEntities : DbContext
{
    public MydbEntities()
        : base("name=MydbEntities")
    {
    }

    protected override void OnModelCreating(DbModelBuilder modelBuilder)
    {
        throw new UnintentionalCodeFirstException();
    }

    public DbSet<Category> Categories { get; set; }
    public DbSet<Comment> Comments { get; set; }
    public DbSet<Customer> Customers { get; set; }
    public DbSet<Order> Orders { get; set; }
    public DbSet<OrdersDetail> OrdersDetails { get; set; }
    public DbSet<Product> Products { get; set; }
    public DbSet<Rate> Rates { get; set; }
    public DbSet<sysdiagram> sysdiagrams { get; set; }

    public virtual int Insert_Customer(string userName, string pWD, string firstName, string lastName, string maritalStatus, string gender, Nullable<double> income, Nullable<double> children, string education, string occupation, string homeOwner, Nullable<double> cars, string commuteDistance, string region, Nullable<double> age, string buy, Nullable<bool> is_Admin)
    {
        var userNameParameter = userName != null ?
            new ObjectParameter("UserName", userName) :
            new ObjectParameter("UserName", typeof(string));

        var pWDParameter = pWD != null ?
            new ObjectParameter("PWD", pWD) :
            new ObjectParameter("PWD", typeof(string));

        var firstNameParameter = firstName != null ?
            new ObjectParameter("FirstName", firstName) :
            new ObjectParameter("FirstName", typeof(string));

        var lastNameParameter = lastName != null ?
            new ObjectParameter("LastName", lastName) :
            new ObjectParameter("LastName", typeof(string));

        var maritalStatusParameter = maritalStatus != null ?
            new ObjectParameter("MaritalStatus", maritalStatus) :
            new ObjectParameter("MaritalStatus", typeof(string));

        var genderParameter = gender != null ?
            new ObjectParameter("Gender", gender) :
            new ObjectParameter("Gender", typeof(string));

        var incomeParameter = income.HasValue ?
            new ObjectParameter("Income", income) :
            new ObjectParameter("Income", typeof(double));

        var childrenParameter = children.HasValue ?
            new ObjectParameter("Children", children) :
            new ObjectParameter("Children", typeof(double));

        var educationParameter = education != null ?
            new ObjectParameter("Education", education) :
            new ObjectParameter("Education", typeof(string));

        var occupationParameter = occupation != null ?
            new ObjectParameter("Occupation", occupation) :
            new ObjectParameter("Occupation", typeof(string));

        var homeOwnerParameter = homeOwner != null ?
            new ObjectParameter("HomeOwner", homeOwner) :
            new ObjectParameter("HomeOwner", typeof(string));

        var carsParameter = cars.HasValue ?
            new ObjectParameter("Cars", cars) :
            new ObjectParameter("Cars", typeof(double));

        var commuteDistanceParameter = commuteDistance != null ?
            new ObjectParameter("CommuteDistance", commuteDistance) :
            new ObjectParameter("CommuteDistance", typeof(string));

        var regionParameter = region != null ?
            new ObjectParameter("Region", region) :
            new ObjectParameter("Region", typeof(string));

        var ageParameter = age.HasValue ?
            new ObjectParameter("Age", age) :
            new ObjectParameter("Age", typeof(double));

        var buyParameter = buy != null ?
            new ObjectParameter("Buy", buy) :
            new ObjectParameter("Buy", typeof(string));

        var is_AdminParameter = is_Admin.HasValue ?
            new ObjectParameter("Is_Admin", is_Admin) :
            new ObjectParameter("Is_Admin", typeof(bool));

        return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("Insert_Customer", userNameParameter, pWDParameter, firstNameParameter, lastNameParameter, maritalStatusParameter, genderParameter, incomeParameter, childrenParameter, educationParameter, occupationParameter, homeOwnerParameter, carsParameter, commuteDistanceParameter, regionParameter, ageParameter, buyParameter, is_AdminParameter);
    }

    public virtual int sp_alterdiagram(string diagramname, Nullable<int> owner_id, Nullable<int> version, byte[] definition)
    {
        var diagramnameParameter = diagramname != null ?
            new ObjectParameter("diagramname", diagramname) :
            new ObjectParameter("diagramname", typeof(string));

        var owner_idParameter = owner_id.HasValue ?
            new ObjectParameter("owner_id", owner_id) :
            new ObjectParameter("owner_id", typeof(int));

        var versionParameter = version.HasValue ?
            new ObjectParameter("version", version) :
            new ObjectParameter("version", typeof(int));

        var definitionParameter = definition != null ?
            new ObjectParameter("definition", definition) :
            new ObjectParameter("definition", typeof(byte[]));

        return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("sp_alterdiagram", diagramnameParameter, owner_idParameter, versionParameter, definitionParameter);
    }

    public virtual int sp_creatediagram(string diagramname, Nullable<int> owner_id, Nullable<int> version, byte[] definition)
    {
        var diagramnameParameter = diagramname != null ?
            new ObjectParameter("diagramname", diagramname) :
            new ObjectParameter("diagramname", typeof(string));

        var owner_idParameter = owner_id.HasValue ?
            new ObjectParameter("owner_id", owner_id) :
            new ObjectParameter("owner_id", typeof(int));

        var versionParameter = version.HasValue ?
            new ObjectParameter("version", version) :
            new ObjectParameter("version", typeof(int));

        var definitionParameter = definition != null ?
            new ObjectParameter("definition", definition) :
            new ObjectParameter("definition", typeof(byte[]));

        return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("sp_creatediagram", diagramnameParameter, owner_idParameter, versionParameter, definitionParameter);
    }

    public virtual int sp_dropdiagram(string diagramname, Nullable<int> owner_id)
    {
        var diagramnameParameter = diagramname != null ?
            new ObjectParameter("diagramname", diagramname) :
            new ObjectParameter("diagramname", typeof(string));

        var owner_idParameter = owner_id.HasValue ?
            new ObjectParameter("owner_id", owner_id) :
            new ObjectParameter("owner_id", typeof(int));

        return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("sp_dropdiagram", diagramnameParameter, owner_idParameter);
    }

    public virtual ObjectResult<sp_helpdiagramdefinition_Result> sp_helpdiagramdefinition(string diagramname, Nullable<int> owner_id)
    {
        var diagramnameParameter = diagramname != null ?
            new ObjectParameter("diagramname", diagramname) :
            new ObjectParameter("diagramname", typeof(string));

        var owner_idParameter = owner_id.HasValue ?
            new ObjectParameter("owner_id", owner_id) :
            new ObjectParameter("owner_id", typeof(int));

        return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<sp_helpdiagramdefinition_Result>("sp_helpdiagramdefinition", diagramnameParameter, owner_idParameter);
    }

    public virtual ObjectResult<sp_helpdiagrams_Result> sp_helpdiagrams(string diagramname, Nullable<int> owner_id)
    {
        var diagramnameParameter = diagramname != null ?
            new ObjectParameter("diagramname", diagramname) :
            new ObjectParameter("diagramname", typeof(string));

        var owner_idParameter = owner_id.HasValue ?
            new ObjectParameter("owner_id", owner_id) :
            new ObjectParameter("owner_id", typeof(int));

        return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<sp_helpdiagrams_Result>("sp_helpdiagrams", diagramnameParameter, owner_idParameter);
    }

    public virtual int sp_renamediagram(string diagramname, Nullable<int> owner_id, string new_diagramname)
    {
        var diagramnameParameter = diagramname != null ?
            new ObjectParameter("diagramname", diagramname) :
            new ObjectParameter("diagramname", typeof(string));

        var owner_idParameter = owner_id.HasValue ?
            new ObjectParameter("owner_id", owner_id) :
            new ObjectParameter("owner_id", typeof(int));

        var new_diagramnameParameter = new_diagramname != null ?
            new ObjectParameter("new_diagramname", new_diagramname) :
            new ObjectParameter("new_diagramname", typeof(string));

        return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("sp_renamediagram", diagramnameParameter, owner_idParameter, new_diagramnameParameter);
    }

    public virtual int sp_upgraddiagrams()
    {
        return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("sp_upgraddiagrams");
    }

    public virtual int Delete_Category(Nullable<int> categoryID)
    {
        var categoryIDParameter = categoryID.HasValue ?
            new ObjectParameter("CategoryID", categoryID) :
            new ObjectParameter("CategoryID", typeof(int));

        return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("Delete_Category", categoryIDParameter);
    }

    public virtual int Insert_Category(string categoryName, ObjectParameter categoryID)
    {
        var categoryNameParameter = categoryName != null ?
            new ObjectParameter("CategoryName", categoryName) :
            new ObjectParameter("CategoryName", typeof(string));

        return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("Insert_Category", categoryNameParameter, categoryID);
    }

    public virtual int Update_Category(string categoryName, Nullable<int> categoryID)
    {
        var categoryNameParameter = categoryName != null ?
            new ObjectParameter("CategoryName", categoryName) :
            new ObjectParameter("CategoryName", typeof(string));

        var categoryIDParameter = categoryID.HasValue ?
            new ObjectParameter("CategoryID", categoryID) :
            new ObjectParameter("CategoryID", typeof(int));

        return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("Update_Category", categoryNameParameter, categoryIDParameter);
    }

    public virtual int Delete_Product(Nullable<int> productID)
    {
        var productIDParameter = productID.HasValue ?
            new ObjectParameter("ProductID", productID) :
            new ObjectParameter("ProductID", typeof(int));

        return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("Delete_Product", productIDParameter);
    }

    public virtual int Insert_Product(string productName, Nullable<double> productPrice, string manufacturer, string features, string description, Nullable<int> categoryID, ObjectParameter productID)
    {
        var productNameParameter = productName != null ?
            new ObjectParameter("ProductName", productName) :
            new ObjectParameter("ProductName", typeof(string));

        var productPriceParameter = productPrice.HasValue ?
            new ObjectParameter("ProductPrice", productPrice) :
            new ObjectParameter("ProductPrice", typeof(double));

        var manufacturerParameter = manufacturer != null ?
            new ObjectParameter("Manufacturer", manufacturer) :
            new ObjectParameter("Manufacturer", typeof(string));

        var featuresParameter = features != null ?
            new ObjectParameter("Features", features) :
            new ObjectParameter("Features", typeof(string));

        var descriptionParameter = description != null ?
            new ObjectParameter("Description", description) :
            new ObjectParameter("Description", typeof(string));

        var categoryIDParameter = categoryID.HasValue ?
            new ObjectParameter("CategoryID", categoryID) :
            new ObjectParameter("CategoryID", typeof(int));

        return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("Insert_Product", productNameParameter, productPriceParameter, manufacturerParameter, featuresParameter, descriptionParameter, categoryIDParameter, productID);
    }

    public virtual int Update_Product(string productName, Nullable<double> productPrice, string manufacturer, string features, string description, Nullable<int> productID)
    {
        var productNameParameter = productName != null ?
            new ObjectParameter("ProductName", productName) :
            new ObjectParameter("ProductName", typeof(string));

        var productPriceParameter = productPrice.HasValue ?
            new ObjectParameter("ProductPrice", productPrice) :
            new ObjectParameter("ProductPrice", typeof(double));

        var manufacturerParameter = manufacturer != null ?
            new ObjectParameter("Manufacturer", manufacturer) :
            new ObjectParameter("Manufacturer", typeof(string));

        var featuresParameter = features != null ?
            new ObjectParameter("Features", features) :
            new ObjectParameter("Features", typeof(string));

        var descriptionParameter = description != null ?
            new ObjectParameter("Description", description) :
            new ObjectParameter("Description", typeof(string));

        var productIDParameter = productID.HasValue ?
            new ObjectParameter("ProductID", productID) :
            new ObjectParameter("ProductID", typeof(int));

        return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("Update_Product", productNameParameter, productPriceParameter, manufacturerParameter, featuresParameter, descriptionParameter, productIDParameter);
    }

    public virtual int Insert_Comment(string commentText, Nullable<int> custommerID, Nullable<int> productID)
    {
        var commentTextParameter = commentText != null ?
            new ObjectParameter("CommentText", commentText) :
            new ObjectParameter("CommentText", typeof(string));

        var custommerIDParameter = custommerID.HasValue ?
            new ObjectParameter("CustommerID", custommerID) :
            new ObjectParameter("CustommerID", typeof(int));

        var productIDParameter = productID.HasValue ?
            new ObjectParameter("ProductID", productID) :
            new ObjectParameter("ProductID", typeof(int));

        return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("Insert_Comment", commentTextParameter, custommerIDParameter, productIDParameter);
    }

    public virtual int Insert_Rate(Nullable<int> rateValue, Nullable<int> productID)
    {
        var rateValueParameter = rateValue.HasValue ?
            new ObjectParameter("RateValue", rateValue) :
            new ObjectParameter("RateValue", typeof(int));

        var productIDParameter = productID.HasValue ?
            new ObjectParameter("ProductID", productID) :
            new ObjectParameter("ProductID", typeof(int));

        return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("Insert_Rate", rateValueParameter, productIDParameter);
    }

    public virtual int Insert_Order(string orderID, Nullable<int> customerID, Nullable<System.DateTime> ordDate)
    {
        var orderIDParameter = orderID != null ?
            new ObjectParameter("OrderID", orderID) :
            new ObjectParameter("OrderID", typeof(string));

        var customerIDParameter = customerID.HasValue ?
            new ObjectParameter("CustomerID", customerID) :
            new ObjectParameter("CustomerID", typeof(int));

        var ordDateParameter = ordDate.HasValue ?
            new ObjectParameter("ordDate", ordDate) :
            new ObjectParameter("ordDate", typeof(System.DateTime));

        return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("Insert_Order", orderIDParameter, customerIDParameter, ordDateParameter);
    }

    public virtual int Insert_OrdersDetails(string orderID, Nullable<int> productID, Nullable<double> productPrice)
    {
        var orderIDParameter = orderID != null ?
            new ObjectParameter("OrderID", orderID) :
            new ObjectParameter("OrderID", typeof(string));

        var productIDParameter = productID.HasValue ?
            new ObjectParameter("ProductID", productID) :
            new ObjectParameter("ProductID", typeof(int));

        var productPriceParameter = productPrice.HasValue ?
            new ObjectParameter("ProductPrice", productPrice) :
            new ObjectParameter("ProductPrice", typeof(double));

        return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("Insert_OrdersDetails", orderIDParameter, productIDParameter, productPriceParameter);
    }

    public virtual int Update_Customer_PWD(Nullable<int> customerID, string new_PWD)
    {
        var customerIDParameter = customerID.HasValue ?
            new ObjectParameter("CustomerID", customerID) :
            new ObjectParameter("CustomerID", typeof(int));

        var new_PWDParameter = new_PWD != null ?
            new ObjectParameter("New_PWD", new_PWD) :
            new ObjectParameter("New_PWD", typeof(string));

        return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("Update_Customer_PWD", customerIDParameter, new_PWDParameter);
    }

    public virtual ObjectResult<Get_monthly_Report_Result> Get_monthly_Report(string monthdate)
    {
        var monthdateParameter = monthdate != null ?
            new ObjectParameter("monthdate", monthdate) :
            new ObjectParameter("monthdate", typeof(string));

        return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<Get_monthly_Report_Result>("Get_monthly_Report", monthdateParameter);
    }
}
