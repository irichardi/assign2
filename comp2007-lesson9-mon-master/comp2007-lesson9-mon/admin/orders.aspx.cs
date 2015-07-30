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
    public partial class orders : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        //saves an order
        protected void btnSave_Click(object sender, EventArgs e)
        {
            try
            {
                using (sales db = new sales())
                {

                    Order obj = new Order();
                    obj.qty = Convert.ToInt32(txtqty.Text);
                    obj.orderDate = Convert.ToDateTime(txtOrderDate.Text);
                    obj.shipDate = Convert.ToDateTime(txtShipDate.Text);
                    obj.tax = Convert.ToDouble(txtTax.Text);
                    obj.estimateShipDate = Convert.ToDateTime(txtEstShipDate.Text);
                    obj.price = Convert.ToDecimal(txtPrice.Text);



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