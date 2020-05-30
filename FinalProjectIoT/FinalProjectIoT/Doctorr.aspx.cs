using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalProjectIoT
{
    public partial class Doctorr : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                Image1.Visible = false;
            }
        }
        protected void DoctorSubmit_Click(object sender, EventArgs e)
        {

            Image1.Visible = true;

        }
    }
}
