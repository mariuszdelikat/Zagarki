using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace WebApplication1
{
    public partial class Browser : System.Web.UI.Page
    {
        string PATH = "C:/Users/mariu/source/repos/Zagarki/WebApplication1/App_Data/Zegarki.xml";

        protected void Page_Load(object sender, EventArgs e)
        {
           // BindGrid();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        /*public void BindGrid()
        {
            XDocument doc = XDocument.Load(PATH);
            var result = from ele in doc.Descendants("Zegarek")
                         select new
                         {
                             Type = ele.Element("marka").Value,
                             Image = ele.Element("zdjecie").Value
                         };

            GridView1.DataSource = result.ToList();
            GridView1.DataBind();
        }*/
    }
}