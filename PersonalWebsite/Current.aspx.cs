using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace PersonalWebsite
{
    public partial class Current : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LiteralControl projectGallery = new LiteralControl();
            string tableStart = "<table class=\"table table-striped table-hover \"><thead><tr><th>#</th><th>Name</th><th>Description</th><th>Type</th><th>Language</th><th>Code</th></tr></thead><tbody>";
            projectGallery.Text += tableStart;
            int count = 1;
            string projectHTML;
            var projectFile = Server.MapPath("~/App_Data/Projects.txt");
            var lines = File.ReadAllLines(projectFile);
            foreach (var line in lines)
            {
                var splitLine = line.Split('$');
                if (splitLine[5] == "False")
                {
                        if (count % 2 == 1)
                        {
                            projectHTML = "<tr><td>" + count.ToString() + "</td><td>" + splitLine[0] + "</td><td>" + splitLine[1] + "</td><td>" + splitLine[2] + "</td><td>" + splitLine[3] + "</td><td><a href=\"" + splitLine[4] + "\"class=\"btn btn-success\">Source</a>";
                        }
                        else
                        {
                            projectHTML = "<tr class=info><td>" + count.ToString() + "</td><td>" + splitLine[0] + "</td><td>" + splitLine[1] + "</td><td>" + splitLine[2] + "</td><td>" + splitLine[3] + "</td><td><a href=\"" + splitLine[4] + "\"class=\"btn btn-success\">Source</a>";
                        }
                        count++;
                        projectGallery.Text += projectHTML;
                }
            }
                projectGallery.Text += "</tbody></table>";
                currentProjectsDiv.Controls.Add(projectGallery);
        }
    }
}