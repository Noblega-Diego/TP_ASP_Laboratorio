using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebNET
{
    public partial class Registro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Captacha.UserInputID = CaptachaTextBox.ClientID;
            if (IsPostBack)
            {
                CaptachaTextBox.Text = null;
                if (Captacha.Validate())
                    CaptachaConfirm.Text = "succes";
                else
                    CaptachaConfirm.Text = "failed";
            }
        }
        
    }
}