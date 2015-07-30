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
    public partial class product : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            getRetail();
        }
        protected void getRetail()
        {
            try
            {
                using (sales db = new sales())
                {
                    //fills retail to dropdown
                    var retails = from s in db.Retails
                                  orderby s.name
                                  select s;

                    ddlRetail.DataSource = retails.ToList();
                    ddlRetail.DataBind();
                }
            }
            catch (Exception ex)
            {
                Response.Redirect("/error.aspx");
            }
        }
        protected void btnAdd_Click(object sender, EventArgs e)
        {
            try
            {
                using (sales db = new sales())
                {

                    var id = (from i in db.Retails
                              where i.name == ddlRetail.SelectedItem.Text
                              select i.retailID).FirstOrDefault();

                    Product obj = new Product();
                    obj.model = txtModel.Text;
                    obj.name = txtName.Text;
                    obj.color = txtColor.Text;
                    obj.retailerID = id;


                    //save
                    db.Products.Add(obj);
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