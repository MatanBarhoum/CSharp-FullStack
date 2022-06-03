<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="WebApplication3.Default" %>
<%@ Import Namespace="WebApplication3" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script>
        $(function () {
            $("#datepicker").datepicker({ dateFormat: 'yy' });
        });
    </script>
    <style type="text/css">
        .MatanFirstBlock {
            text-align: center;
            font-size: 24px;
            height: 397px;
        }
        .MatanFirstBlock p {
            margin-top: -35px;
        }
        Buttons {
            width: auto;
            height: auto;
            border: 2px solid black;
            border-radius: 7px;
        }
        #Button1, #Button2 {
                width: 100px;
                font-size: 24px;
                border: 1px solid none;
                border-radius: 5px;
        }
        .Select2 {
            margin-right: 10px;
        }
        .newStyle1 {
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
            font-size: 72px;
            font-weight: 800;
        }

        .ReportBlock {
            width: 500px;
            height: 200px;
            border: 2px solid none;
            border-radius: 15px;
            margin-left: auto;
            margin-right: auto;
        }

        #Select1, #Select2 {
                font-size: 24px;
        }
    </style>
    <script runat="server">

        public string Month { get; set; }
        void Button_Click (Object sender, EventArgs e)
        {
                    Label1.Visible = true;
                    Label2.Visible = true;
                    Label3.Visible = true;
                    Label4.Visible = true;
                    Label5.Visible = true;
                    Button2.Visible = true;
            DBEngine Matan = new DBEngine();

            switch (Select1.Value)
            {
                case "ינואר":
                    {
                        Month = "1";
                        Label1.Text = Month + " " + Request["Select2"];
                        break;
                    }
                case "פברואר":
                    {
                        Month = "2";
                        Label1.Text = Month + " " + Request["Select2"];
                        break;
                    }
                case "מרץ":
                    {
                        Matan.Month = "3";
                        Label1.Text = Month + " " + Request["Select2"];
                        break;
                    }
                case "אפריל":
                    {
                        Matan.Month = "4";
                        Label1.Text = Month + " " + Request["Select2"];
                        break;
                    }
                case "מאי":
                    {
                        Matan.Month = "5";
                        Label1.Text = Month + " " + Request["Select2"];
                        break;
                    }
                case "יוני":
                    {
                        Month = "6";
                        Label1.Text = Month + " " + Request["Select2"];
                        break;
                    }
                case "יולי":
                    {
                        Matan.Month = "7";
                        Label1.Text = Month + " " + Request["Select2"];
                        break;
                    }
                case "אוגוסט":
                    {
                        Matan.Month = "8";
                        Label1.Text = Month + " " + Request["Select2"];
                        break;
                    }
                case "ספטמבר":
                    {
                        Matan.Month = "9";
                        Label1.Text = Month + " " + Request["Select2"];
                        break;
                    }
                case "אוקטובר":
                    {
                        Matan.Month = "10";
                        Label1.Text = Month + " " + Request["Select2"];
                        break;
                    }
                case "נובמבר":
                    {
                        Matan.Month = "11";
                        Label1.Text = Month + " " + Request["Select2"];
                        break;
                    }
                case "דצמבר":
                    {
                        Matan.Month = "12";
                        Label1.Text = Month + " " + Request["Select2"];
                        break;
                    }
                default: { return; }

            }

            Matan.TotalHours(Month);
            var Kesef = 8.37;
            Label2.Text = String.Format("סהכ שעות שמחשבים עבדו: {0} שעות", Convert.ToString(Matan.totalHours));
            var CostSpent = Matan.totalHours * 0.07;
            Label5.Text = String.Format("סהכ תשלום צריכה {0} שקלים", CostSpent * Kesef );
            Label3.Text = String.Format("סהכ שעות שנחסכו: {0} שעות", Matan.SavedTime);
            var CostSaved = Matan.SavedTime * 0.07;
            Label4.Text = String.Format("סהכ כסף שנחסך החודש: {0} שקלים", CostSaved * Kesef );
        }

        public void Reset_Click(object sender, EventArgs e)
        {
                    Label1.Visible = false;
                    Label2.Visible = false;
                    Label3.Visible = false;
                    Label4.Visible = false;
                    Label5.Visible = false;
                    Button2.Visible = false;
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="MatanFirstBlock">
            <asp:Image ID="Image2" runat="server" ImageUrl="~/Images/3.png" />

            <br />
            <span class="newStyle1"">הפקת דוחות חיסכון בחשמל</span><br />
            <br />
            <br />
            <br />
            <p>נוצר ע"י מתן ברהום</p>
            <br />
            <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/analytics.png" Height="146px" Width="156px" />
            <br />
            <br />
            <div class="ReportBlock">
                <br />
        <input class="Select2" id="Select2" type="number" runat="server" min="1900" max="2099" step="1" value="2016" />


            <select id="Select1" name="MonthSelect" runat="server" required>
                <option>בחר חודש</option>
                <option>ינואר</option>
                <option>פברואר</option>
                <option>מרץ</option>
                <option>אפריל</option>
                <option>מאי</option>
                <option>יוני</option>
                <option>יולי</option>
                <option>אוגוסט</option>
                <option>ספטמבר</option>
                <option>נובמבר</option>
                <option>דצמבר</option>
            </select><br />
            <br />
            <button id="Button1" onserverclick="Button_Click" value="123" runat="server" >הפק דוח</button>
            &nbsp;<br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                <br />
                <br />
                <br />
                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                <br />
                <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                <br />
                <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                <br />
                <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                <br />
                <button id="Button2" onserverclick="Reset_Click" value="123" runat="server" >איפוס</button>
                <br />
              </div>
        </div>
            
        <p>
            &nbsp;</p>         
    </form>
</body>
</html>
