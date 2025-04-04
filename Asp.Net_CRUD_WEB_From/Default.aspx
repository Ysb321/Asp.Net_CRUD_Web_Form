<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Asp.Net_CRUD_WEB_From._Default" %>



<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

   

    <table class="w-100">
        <tr>
            <td colspan="2" style="font-family: Arial, Helvetica, sans-serif; font-size: x-large; font-weight: 600; font-style: normal">Complete CRUD Operation in Asp .Net with Sql Stored Procedure</td>
            <td style="font-family: Arial, Helvetica, sans-serif; font-size: x-large; font-weight: 600; font-style: normal">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2" style="font-family: Arial, Helvetica, sans-serif; font-size: x-large; font-weight: 600; font-style: normal; height: 29px;"></td>
            <td style="font-family: Arial, Helvetica, sans-serif; font-size: x-large; font-weight: 600; font-style: normal; height: 29px;"></td>
        </tr>
        <tr>
            <td style="height: 21px">
                <asp:Label ID="Label1" runat="server" Text="ProductID"></asp:Label>
            </td>
            <td style="height: 21px">
                <asp:TextBox ID="TextBox1" runat="server" Width="493px"></asp:TextBox>
                <asp:Button ID="Button4" runat="server" BackColor="#0066FF" ForeColor="White" Height="33px" OnClick="Button4_Click" Text="Search" Width="93px" style="margin-left: 26px" Font-Bold="True" Font-Size="Medium" />
            </td>
            <td style="height: 21px">&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Item Name"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Width="494px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 21px">
                <asp:Label ID="Label3" runat="server" Text="Specification"></asp:Label>
            </td>
            <td style="height: 21px">
                <asp:TextBox ID="TextBox3" runat="server" Width="495px"></asp:TextBox>
            </td>
            <td style="height: 21px"></td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label4" runat="server" Text="Unit"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" Width="200px">
                    <asp:ListItem>PCS</asp:ListItem>
                    <asp:ListItem>KG</asp:ListItem>
                    <asp:ListItem>DZ</asp:ListItem>
                    <asp:ListItem>Ltr</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Status</td>
            <td>
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" Font-Bold="True" Height="22px" RepeatDirection="Horizontal" Width="165px">
                    <asp:ListItem>Running</asp:ListItem>
                    <asp:ListItem>Unused</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 21px">Creation Date</td>
            <td style="height: 21px">
                <asp:TextBox ID="TextBox4" runat="server" Width="501px"></asp:TextBox>
            </td>
            <td style="height: 21px">&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 21px">&nbsp;</td>
            <td style="height: 21px"></td>
            <td style="height: 21px">&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 35px"></td>
            <td style="height: 35px">
                <asp:Button ID="Button1" runat="server" BackColor="#CC33FF" ForeColor="White" Height="33px" OnClick="Button1_Click" Text="Insert" Width="93px" />
                <asp:Button ID="Button2" runat="server" BackColor="#660066" ForeColor="White" Height="33px" OnClick="Button2_Click" Text="Update" Width="93px" style="margin-left: 26px" Font-Bold="True" Font-Size="Medium" />
                <asp:Button ID="Button3" runat="server" BackColor="Red" ForeColor="White" Height="33px" OnClick="Button3_Click" Text="Delete" Width="93px" style="margin-left: 26px" Font-Bold="True" Font-Size="Medium" />
            </td>
            <td style="height: 35px"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:GridView ID="GridView1" runat="server" Width="910px">
                    <HeaderStyle BackColor="#CC33FF" ForeColor="White" />
                </asp:GridView>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>

   

</asp:Content>
