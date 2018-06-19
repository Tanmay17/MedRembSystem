<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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
          <asp:Button Text="Apply " BorderStyle="None" ID="Tab1" CssClass="Initial" runat="server"

              OnClick="Tab1_Click" />
          <asp:Button Text="Check Status" BorderStyle="None" ID="Tab2" CssClass="Initial" runat="server"

              OnClick="Tab2_Click" />
          <asp:Button Text="Pending Req" BorderStyle="None" ID="Tab3" CssClass="Initial" runat="server"

              OnClick="Tab3_Click" />
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <a href ="Logout.aspx" class="btn btn-default btn-flat">Sign out</a>
&nbsp;<asp:MultiView ID="MainView" runat="server">
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
                          <asp:Button ID="Button1" runat="server" Text="Apply" Width="156px" OnClick="Button1_Click" />
                          <br />
                          <asp:Label ID="Label1" runat="server" ForeColor="#0000CC" Height="129px" style="margin-top: 73px" Visible="False" Width="348px"></asp:Label>
                      </td>
                  </tr>
              </table>
            </asp:View>
            <asp:View ID="View2" runat="server">
              <table style="width: 100%; border-width: 1px; border-color: #666; border-style: solid">
                <tr>
                  <td>
                    <h3>
                        Check Your Reimbursement Status :</h3>
                      <p>
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Enter Your RID:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          <asp:TextBox ID="TextBox3" runat="server" Width="148px"></asp:TextBox>
                      <p>
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          </p>
                      <p>
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Button ID="Button2" runat="server" Text="Check Status" OnClick="Button2_Click" />
                          &nbsp;
                          <asp:Label ID="Label2" runat="server" ForeColor="Red" Visible="False"></asp:Label>
                      </p>
                      <p>
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Table ID="Table1" runat="server" BorderWidth="2px" Font-Names="Palatino">
                              <asp:TableHeaderRow 
                                runat="server" 
                                ForeColor="Black"
                                BackColor="OliveDrab"
                                Font-Bold="true"
                                CellPadding="5"
                                CellSpacing="5">
                                    <asp:TableHeaderCell>RID</asp:TableHeaderCell>
                                    <asp:TableHeaderCell>Patient Name</asp:TableHeaderCell>
                                    <asp:TableHeaderCell>Amount</asp:TableHeaderCell>
                                    <asp:TableHeaderCell>Amount Sanctioned</asp:TableHeaderCell>
                                </asp:TableHeaderRow>
                              <asp:TableRow runat="server" ID="row">
                                  <asp:TableCell runat="server" ID="rid"></asp:TableCell>
                                  <asp:TableCell runat="server" ID="name"></asp:TableCell>
                                  <asp:TableCell runat="server" ID="amt"></asp:TableCell>
                                  <asp:TableCell runat="server" ID="status"></asp:TableCell>
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
                        Pending Requests:</h3>
                      <p>
                          <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" ViewStateMode="Enabled" GridLines="None">
                              <AlternatingRowStyle BackColor="White" />
                              <Columns>
                                  <asp:BoundField HeaderText="RID" DataField="R_ID" />
                                  <asp:BoundField HeaderText="Patient Name" DataField="P_NAME" />
                                  <asp:BoundField HeaderText="Doctor Name" DataField="D_NAME" />
                                  <asp:BoundField HeaderText="Relation" DataField="RELATION" />
                                  <asp:BoundField HeaderText="Amount" DataField="AMT" />
                                  <asp:BoundField HeaderText="Reimbursement Type" DataField="R_TYPE" />
                                  <asp:BoundField HeaderText="Desription" DataField="DESCR" />
                                  <asp:TemplateField HeaderText="Tick to Approve">
                                        <itemtemplate>
                                            <asp:LinkButton ID="lnkSelect" Text="Approve" runat="server" CommandArgument='<%# Eval("R_ID") %>' OnClick="lnkSelect_Click"/>
                                        </itemtemplate>
                                  </asp:TemplateField>
                              </Columns>
                              <EditRowStyle BackColor="#7C6F57" />
                              <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                              <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                              <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                              <RowStyle BackColor="#E3EAEB" />
                              <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                              <SortedAscendingCellStyle BackColor="#F8FAFA" />
                              <SortedAscendingHeaderStyle BackColor="#246B61" />
                              <SortedDescendingCellStyle BackColor="#D4DFE1" />
                              <SortedDescendingHeaderStyle BackColor="#15524A" />
                          </asp:GridView>
                      </p>
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
