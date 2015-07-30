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
    public partial class orderdetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
                getOrders();
        }

        public void getOrders()
        {
            try
            {
                //connect to db
                using (sales db = new sales())
                {
                    //fills order grid
                    var orders = (from o in db.Orders
                                  select new { o.orderID, o.orderDate, o.shipDate, o.qty, o.price, o.estimateShipDate, o.productID });
                    grdOrders.DataSource = orders.ToList();
                    grdOrders.DataBind();
                }
            }
            catch (Exception ex)
            {
                Response.Redirect("/error.aspx");
            }
        }

        protected void grdOrders_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            try
            {
                //connect
                using (sales db = new sales())
                {
                    //get order id from grid
                    Int32 orderID = Convert.ToInt32(grdOrders.DataKeys[e.RowIndex].Values["orderID"]);
                    //find order 
                    var order = (from o in db.Orders
                                 where o.orderID == orderID
                                 select o).FirstOrDefault();

                    //delete it
                    db.Orders.Remove(order);
                    db.SaveChanges();

                    //reload
                    getOrders();
                }
            }
            catch (Exception ex)
            {
                Response.Redirect("/error.aspx");
            }
        }
    }
}