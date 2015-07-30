using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


using comp2007_lesson9_mon.Models;
using System.Web.ModelBinding;

namespace comp2007_lesson9_mon.admin
{
    public partial class shop : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            getProducts();
        }
        protected void getProducts()
        {
            using (sales db = new sales())
            {
                //fills product data to drop down list
                var products = from p in db.Products
                              orderby p.name
                              select p;

                ddlProduct.DataSource = products.ToList();
                ddlProduct.DataBind();
            }
        }
        //purchase product on btn click and save data to database
        protected void btnBuy_Click(object sender, EventArgs e)
        {
            try
            {

                using (sales db = new sales())
                {
                    DateTime today = DateTime.Now;

                    Order obj = new Order();
                    obj.productID = Convert.ToInt32(ddlProduct.SelectedValue);
                    obj.qty = Convert.ToInt32(txtqty.Text);
                    obj.price = 10000.00m;
                    obj.shipDate = today;
                    obj.orderDate = today;
                    obj.tax = .11;


                    //save
                    db.Orders.Add(obj);
                    db.SaveChanges();


                }
            }
            catch (Exception ex)
            {
                Response.Redirect("/error.aspx");
            }
        }
    }
}