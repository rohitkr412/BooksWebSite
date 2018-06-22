﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Data;
using System.Data.SqlClient;

namespace BooksCA
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                using (Mybooks mb = new Mybooks())
                {
                    List<Book> booklist = mb.Books.ToList();
                    foreach (Book bookdetail in booklist)
                    {
                        HtmlGenericControl newDiv = new HtmlGenericControl("DIV");
                        HtmlGenericControl details = new HtmlGenericControl("DIV");
                        HtmlInputImage image = new HtmlInputImage();
                        HtmlAnchor anch = new HtmlAnchor();

                        image.Src = "images/" + bookdetail.ISBN + ".jpg";
                        image.Disabled = true;
                        image.Style.Add("width", "200px");
                        image.Style.Add("height", "220px");

                        anch.InnerHtml = "<hr><strong style=\"font-size: 16px;\">"
                            + bookdetail.Title + "</strong><br />";

                        details.InnerHtml += bookdetail.Author + "<br />";
                        details.InnerHtml += bookdetail.ISBN + "<br />";
                        details.InnerHtml += "$ " + bookdetail.Price;

                        newDiv.Attributes.Add("class", "col-xs-12 col-sm-6 col-md-4 well");
                        newDiv.Style.Add("height", "500px");
                        newDiv.Style.Add("text-align", "center");
                        newDiv.Style.Add("padding", "30px");

                        anch.HRef = "~/BookDetails1.aspx?id=" + bookdetail.BookID;

                        mainDiv.Controls.Add(newDiv);
                        newDiv.Controls.Add(image);
                        newDiv.Controls.Add(anch);
                        newDiv.Controls.Add(details);
                    }
                }
            }
            else
            {
            }
        }
    }
}