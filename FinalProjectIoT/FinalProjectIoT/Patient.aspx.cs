using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalProjectIoT
{
    public partial class Contact : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                StatusLabel.Visible = false;
              
            }
        }

        protected void UploadButton_Click(object sender, EventArgs e)
        {

            HttpPostedFile postedFile = FileUploadControl.PostedFile;
            string fileName = Path.GetFileName(postedFile.FileName);
            string fileExtension = Path.GetExtension(fileName);

            Stream stream = postedFile.InputStream;
            BinaryReader binaryReader = new BinaryReader(stream);
            byte[] bytes =binaryReader.ReadBytes((int)stream.Length);

            string cs = ConfigurationManager.ConnectionStrings["myDbConnection"].ConnectionString;
            using (SqlConnection con =new SqlConnection(cs))
            {
                SqlCommand cmd = new SqlCommand("UploadImage", con);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;

                SqlParameter paramImg = new SqlParameter()
                {
                    ParameterName = "@img", Value = bytes
                };
                cmd.Parameters.Add(paramImg);

                SqlParameter paramNewId = new SqlParameter()
                {
                    ParameterName = "@NewId",
                    Value = -1,
                    Direction = System.Data.ParameterDirection.Output
                };
                cmd.Parameters.Add(paramNewId);

                con.Open();
                cmd.ExecuteNonQuery();
                
                con.Close();
                StatusLabel.Visible = true;
                StatusLabel.Text = "Upload status: File uploaded!";

            }
        }
    }
}