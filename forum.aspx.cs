using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Text.RegularExpressions;
using System.Data.Common;
using System.Configuration;
using System.Dynamic;
using DotNetOpenAuth.OAuth;
using DotNetOpenAuth.OpenId;
using DotNetOpenAuth.OpenId.RelyingParty;
using System.Text;
using System.Net;
using System.IO;
using ASPSnippets.GoogleAPI;
using System.Web.Script.Serialization;
using System.Data.SqlClient;
using System.Text.RegularExpressions;

public partial class forum : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
        int counting = 0;
        
        if (!IsPostBack)
        {
            GoogleConnect.ClientId = "<Google Client ID>";
            GoogleConnect.ClientSecret = "<Google Client Secret>";
            GoogleConnect.RedirectUri = Request.Url.AbsoluteUri.Split('?')[0];

            if (!string.IsNullOrEmpty(Request.QueryString["code"]))
            {
                string code = Request.QueryString["code"];
                string json = GoogleConnect.Fetch("me", code);
                GoogleProfile profile = new JavaScriptSerializer().Deserialize<GoogleProfile>(json);
                Label1.Text = profile.DisplayName;
                Label2.Text = profile.Emails.Find(email => email.Type == "account").Value;
                Label3.Text = profile.Gender;
                ProfileImage.ImageUrl = profile.Image.Url;
            }
            if (Request.QueryString["error"] == "access_denied")
            {
                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "alert('Access denied.')", true);
            }
            GoogleConnect.Authorize("profile", "email");
            GoogleConnect.Clear();
            if (LinkButton2.Controls.Count == 0)
            {
                counting = counting + 0;
            }
            else
            {
                counting = counting + 1;

            }
            if (counting != 0)
            {
                Image3.ImageUrl = Image2.ImageUrl;
                ProfileImage.ImageUrl = Image2.ImageUrl;
                Label6.Text = Label5.Text;
                Label5.Text = Label4.Text;
                Label4.Text = "";
                Label8.Text = Label7.Text;
                Label7.Text = Label1.Text;
                Label9.Text = "";
                Label10.Text = "";
            }
            else
            {
                Response.Write("Start The Discssion Or Comment On The Discussion");
            }
        }
    }
    public class GoogleProfile
    {
        public string Id { get; set; }
        public string DisplayName { get; set; }
        public Image Image { get; set; }
        public List<Email> Emails { get; set; }
        public string Gender { get; set; }
        public string ObjectType { get; set; }
    }
    public class Email
    {
        public string Value { get; set; }
        public string Type { get; set; }
    }

    public class Image
    {
        public string Url { get; set; }
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("form1.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Label4.Visible = true;
        Label4.Text = TextBox1.Text;
        
       
        

        
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("forum.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\ASUS\Documents\forum.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True;");
        SqlCommand cmd = new SqlCommand("insert into dis values('" + TextBox2.Text + "')", con);
        cmd.ExecuteNonQuery();
        Label9.Visible = true;
        Label9.Text = TextBox2.Text;
    }
    protected void Button3_Click(object sender, EventArgs e)
    {

        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\ASUS\Documents\forum.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True;");
        SqlCommand cmd = new SqlCommand("insert into dis values('" + TextBox3.Text + "')", con);
        cmd.ExecuteNonQuery();
        Label10.Visible = true;
        Label10.Text = TextBox3.Text;

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedValue=="Github")
        {
            Response.Redirect("www.github.com");
        }
        else
            if (DropDownList1.SelectedValue == "Stack_Overflow")
            {
                Response.Redirect("www.Stack_Overflow.com");
            }
            else
            {
                Response.Redirect("www.quara.com");
            }
    }

    public ListItemCollection Github { get; set; }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedValue == "Github")
        {
            Response.Redirect("www.github.com");
        }
        else
            if (DropDownList1.SelectedValue == "Stack_Overflow")
            {
                Response.Redirect("www.Stack_Overflow.com");
            }
            else
            {
                Response.Redirect("www.quara.com");
            }
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
}
       