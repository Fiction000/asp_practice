using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace asp_practice.Chap03
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnStartUpload_Click(object sender, EventArgs e)
        {
            if (btnUpload.HasFile)
            {
                var result = "";
                var postfile = btnUpload.PostedFile;
                var uppath = Server.MapPath($"~/App_Data/doc/Path.GetFileName(postfile.FileName)");
                if (postfile.ContentType == "text/plain")
                {
                    postfile.SaveAs(uppath);
                    lblResult.Text = $"{postfile.FileName} is successfully uploaded.";
                } else
                {
                    lblResult.Text = "Only text file can be uploaded.";
                }
            }
        }
    }
}