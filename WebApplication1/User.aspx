<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="User.aspx.cs" Inherits="WebApplication1.User" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Med</title>
    <style type="text/css">
        .auto-style1 {
            height: 30px;
        }
    </style>
</head>
<link rel="stylesheet" type="text/css" href="Tab.css">
  <body style="font-family: tahoma">
  <form id="form1" runat="server">
    <table width="80%" align="center">
      <tr>
        <td>
          <asp:Button Text="Tab 1" BorderStyle="None" ID="Tab1" CssClass="Initial" runat="server"

              OnClick="Tab1_Click" />
          <asp:Button Text="Tab 2" BorderStyle="None" ID="Tab2" CssClass="Initial" runat="server"

              OnClick="Tab2_Click" />
          <asp:Button Text="Tab 3" BorderStyle="None" ID="Tab3" CssClass="Initial" runat="server"

              OnClick="Tab3_Click" />
          <asp:MultiView ID="MainView" runat="server">
            <asp:View ID="View1" runat="server">
              <table style="width: 100%; border-width: 1px; border-color: #666; border-style: solid">
                <tr>
                  <td class="auto-style1">
                      <span>&nbsp;&nbsp; Type of Reimbursement:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:DropDownList ID="DropDownList1" runat="server" Height="59px" Width="156px">
                          <asp:ListItem>Medical Expense</asp:ListItem>
                          <asp:ListItem>Hospital Expense</asp:ListItem>
                          <asp:ListItem Selected="True">Choose</asp:ListItem>
                      </asp:DropDownList>
                      </span>
                      <p>
                          &nbsp;&nbsp;&nbsp; Patient Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          <asp:TextBox ID="TextBox1" runat="server" Width="148px"></asp:TextBox>
                      </p>
                      <p>
                          &nbsp;&nbsp;&nbsp; Age:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          <asp:TextBox ID="TextBox2" runat="server" style="margin-left: 0px" TextMode="Number" Width="148px"></asp:TextBox>
                      </p>
                      <p>
                          &nbsp;&nbsp;&nbsp; Relation with Patient:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span>
                          <asp:DropDownList ID="DropDownList2" runat="server" Height="59px" Width="156px">
                              <asp:ListItem Selected="True">Self</asp:ListItem>
                              <asp:ListItem>Husband</asp:ListItem>
                              <asp:ListItem>Wife</asp:ListItem>
                              <asp:ListItem>Dependent Son</asp:ListItem>
                              <asp:ListItem>Dependent Daughter</asp:ListItem>
                              <asp:ListItem>Dependent Father(Non-Pensioner)</asp:ListItem>
                              <asp:ListItem>Dependent Mother(Non-Pensioner)</asp:ListItem>
                          </asp:DropDownList>
                          </span>
                      </p>
                      <p>
                          &nbsp;&nbsp;&nbsp; Doctor Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox4" runat="server" Width="149px"></asp:TextBox>
                          &nbsp;</p>
                      <p>
                          &nbsp;&nbsp;&nbsp; Amount(INR):&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          <asp:TextBox ID="TextBox5" runat="server" TextMode="Number" Width="150px"></asp:TextBox>
                      </p>
                      <p>
                          &nbsp;&nbsp;&nbsp; Description:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          <asp:TextBox ID="TextBox6" runat="server" TextMode="MultiLine" Width="150px"></asp:TextBox>
                      </p>
                      <p>
                          &nbsp;</p>
                  </td>
                </tr>
                  <tr>
                      <td class="auto-style1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          <asp:Button ID="Button1" runat="server" Text="Apply" Width="156px" />
                      </td>
                  </tr>
              </table>
            </asp:View>
            <asp:View ID="View2" runat="server">
              <table style="width: 100%; border-width: 1px; border-color: #666; border-style: solid">
                <tr>
                  <td>
                    <h3>
                        Choose The Method :</h3>
                      <p>
                          <asp:RadioButton ID="RadioButton1" runat="server" GroupName="Group2" OnCheckedChanged="RadioButton1_CheckedChanged" Text="Request Number" />
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          <asp:TextBox ID="TextBox3" runat="server" Enabled="False" Width="148px"></asp:TextBox>
                      </p>
                      <p>
                          <asp:RadioButton ID="RadioButton2" runat="server" GroupName="Group2" OnCheckedChanged="RadioButton2_CheckedChanged" Text="Date of Request" />
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Enabled="False" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" SelectedDate="2018-06-09" VisibleDate="2018-06-09" Width="200px">
                              <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                              <NextPrevStyle VerticalAlign="Bottom" />
                              <OtherMonthDayStyle ForeColor="#808080" />
                              <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                              <SelectorStyle BackColor="#CCCCCC" />
                              <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                              <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                              <WeekendDayStyle BackColor="#FFFFCC" />
                          </asp:Calendar>
                      </p>
                      <p>
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Button ID="Button2" runat="server" Text="Check Status" />
                      </p>
                      <p>
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Table ID="Table1" runat="server" style="margin-left: 0px" Height="54px" Width="85px">
                              <asp:TableRow runat="server" TableSection="TableHeader">
                              </asp:TableRow>
                          </asp:Table>
                      </p>
                      <p>
                          &nbsp;</p>
                  </td>
                </tr>
                  <tr>
                      <td></td>
                  </tr>
              </table>
            </asp:View>
            <asp:View ID="View3" runat="server">
              <table style="width: 100%; border-width: 1px; border-color: #666; border-style: solid">
                <tr>
                  <td>
                    <h3>
                      View 3
                    </h3>
                  </td>
                </tr>
              </table>
            </asp:View>
          </asp:MultiView>
        </td>
      </tr>
    </table>
  </form>
</body>
</html>
