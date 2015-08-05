using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PersonalWebsite
{
    public partial class Contact : Page
    {
        const String FROM = "brendenowens@gmail.com";
        const String MAIL_SERVER = "smtp-mail.outlook.com";
        const String TO = "bowens94@hotmail.com";

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void SendMail()
        {
            //Password of your gmail address
            const string fromPassword = "BMOBBTKD1";
            // Passing the values and make a email formate to display
            string subject = "Message From Your Personal Website";
            string body = "From: " + Name.Text + "\n";
            body += "Email: " + Email.Text + "\n";
            body += "Subject: " + Subject.Text + "\n";
            body += "Message: \n" + Comments.Text + "\n";
            // smtp settings
            var smtp = new System.Net.Mail.SmtpClient();
            {
                smtp.Host = "smtp.gmail.com";
                smtp.Port = 587;
                smtp.EnableSsl = true;
                smtp.DeliveryMethod = System.Net.Mail.SmtpDeliveryMethod.Network;
                smtp.Credentials = new NetworkCredential(FROM, fromPassword);
                smtp.Timeout = 20000;
            }
            // Passing values to smtp object
            smtp.Send(FROM, TO, subject, body);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                //here on button click what will done 
                SendMail();
                DisplayMessage.Text = "Your message has been sent successfully!";
                DisplayMessage.Visible = true;
                Subject.Text = "";
                Email.Text = "";
                Name.Text = "";
                Comments.Text = "";
            }
            catch (Exception) { }
        }


    }
}