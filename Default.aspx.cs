using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FacebookATM.Models;

namespace FacebookATM
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Page.Validate();

            if (Page.IsValid)
            {

                User usr = new User { 
                    Username=UsernameTB.Text,
                    Email=EmailTB.Text,
                    FirstName=FirstNameTB.Text,
                    LastName=LastNameTB.Text,
                    Groupe=GroupeTB.Text,
                    Birthday= DateTime.Parse(BirthdayTB.Text),
                    Password=PasswordTB.Text,
                    };

                using (MtaFaceDbContext dbCtx = new MtaFaceDbContext())
                {
                   // dbCtx.Users.Add(usr);
                    dbCtx.Entry(usr).State = System.Data.Entity.EntityState.Added;
                    dbCtx.SaveChanges();
                }

            }
        }
    }
}
