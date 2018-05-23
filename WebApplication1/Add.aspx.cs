using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace WebApplication1
{
    
    public partial class Add : System.Web.UI.Page
    {
        XDocument xmldoc;
        string PATH = "C:/Users/mariu/source/repos/Zagarki/WebApplication1/App_Data/Zegarki.xml";

        public void BindGrid()
        {
            xmldoc = XDocument.Load(PATH);   //add xml document  
            var bind = xmldoc.Descendants("Zegarek").Select(p => new
            {
                //id = p.Element("id").Value,
                marka = p.Element("marka").Value,
                model = p.Element("model").Value,
                rodzaj = p.Element("rodzaj").Value,
            });
                
           // }).OrderBy(p => p.id);
            GridView1.DataSource = bind;
            GridView1.DataBind();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            BindGrid();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            xmldoc = XDocument.Load(PATH);   //add xml document  
            XElement emp = new XElement("Zegarek",
            //new XElement("id", id.Text),
            new XElement("marka", marka.Text),
            new XElement("model", model.Text),
            new XElement("rodzaj", rodzaj.Text)
            );

            xmldoc.Root.Add(emp);
            xmldoc.Save(PATH);
            BindGrid();
            Reset(); // For clear textbox 
        }

        private void Reset()
        {
            marka.Text = "";
            model.Text = "";
            rodzaj.Text = "";
            marka.Focus();
        }

       
       

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            DataSet ds = new DataSet();
            ds.ReadXml(PATH);
            ds.Tables[0].Rows.RemoveAt(e.RowIndex);
            ds.WriteXml(PATH);
            BindGrid();
        }

        /*protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            DataSet ds = new DataSet();
            ds.ReadXml(PATH);
            int iXmlRow = Convert.ToInt32(Convert.ToString(ViewState["gridrow"]));
            ds.Tables[0].Rows[iXmlRow]["marka"] = marka.Text;
            ds.Tables[0].Rows[iXmlRow]["model"] = model.Text;
            ds.Tables[0].Rows[iXmlRow]["rodzaj"] = rodzaj.Text;
            ds.WriteXml(PATH);
            BindGrid();
        }*/
    }
}