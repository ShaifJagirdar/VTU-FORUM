<%@ Page Language="C#" AutoEventWireup="true" CodeFile="forum.aspx.cs" Inherits="forum" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1
        {
            height: 874px;
            width: 1333px;
        }
        #TextArea1
        {
            width: 803px;
            height: 85px;
        }
        .newStyle1 {
            font-family: "Adobe Hebrew";
            font-size: x-large;
        }
        .auto-style1 {
            font-size: xx-large;
        }
        .auto-style3 {
            color: #660066;
        }
        .auto-style2 {
            color: #660033;
        }
        .auto-style4 {
            color: #660033;
            font-size: large;
        }
        .style1
        {
            font-family: "Times New Roman", Times, serif;
            color: #660033;
        }
        .style2
        {
            color: #FFFFFF;
        }
        </style>
    <script language="javascript" type="text/javascript">
// <![CDATA[

        function TextArea1_onclick() {

        }

        function TextArea1_onclick() {

        }

// ]]>
    </script>
</head>
<body style="height: 879px; width: 1350px;">
    <form id="form1" runat="server">
    <asp:Panel ID="Panel1" runat="server" Height="44px" 
        style="text-align: center; border-style: outset" 
        BackImageUrl="~/images/latest.jpg">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; !<strong><span class="auto-style1"><span 
            class="auto-style3">VTU-FORUM!</span></span></strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton1" runat="server" CssClass="style1" 
            onclick="LinkButton1_Click">Home</asp:LinkButton>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton2" runat="server" CssClass="style1" 
            onclick="LinkButton2_Click">LogOut</asp:LinkButton>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server" Height="811px" Width="1327px" 
        BackImageUrl="~/images/latest.jpg">
        <asp:Panel ID="Panel3" runat="server" Height="330px" 
            style="border-style: inset" Width="237px" BackColor="#FF9900">
            <asp:Panel ID="Panel4" runat="server" Height="29px" style="margin-left: 252px" 
                Width="1008px">
                <br />
                <asp:Panel ID="Panel6" runat="server" BackImageUrl="~/images/latest.jpg" 
                    BorderColor="#FF6600" Height="791px" style="margin-left: 1px" Width="1076px">
                    <br />
                    <span class="newStyle1">&nbsp;&nbsp;&nbsp;&nbsp; Whats On Your Mind?<br /> </span>
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox1" runat="server" Height="109px" 
                        OnTextChanged="TextBox1_TextChanged" TextMode="MultiLine" Width="846px"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Post" 
                        Width="92px" />
                    <br />
                    <hr />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label4" runat="server" Height="93px" Width="862px" 
                        BackColor="#999966" Visible="False"></asp:Label>
                    <hr />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label5" runat="server" BackColor="#999966" Height="100px" 
                        Width="862px"></asp:Label>
                    <br />
                    &nbsp; &nbsp;&nbsp;<br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<asp:Label ID="Label9" runat="server" BackColor="#99CCFF" 
                        Visible="False" Width="859px"></asp:Label>
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<asp:TextBox ID="TextBox2" runat="server" Height="25px" 
                        TextMode="MultiLine" Width="689px"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
                        Text="Comment" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="DropDownList1" runat="server" 
                        onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                        <asp:ListItem>Share</asp:ListItem>
                        <asp:ListItem>Github</asp:ListItem>
                        <asp:ListItem Selected="True">Stack_Overflow</asp:ListItem>
                        <asp:ListItem>Quara</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label6" runat="server" BackColor="#999966" 
                        Height="114px" Width="862px"></asp:Label>
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label10" runat="server" BackColor="#99CCFF" Height="22px" 
                        Visible="False" Width="859px"></asp:Label>
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox3" runat="server" Height="25px" TextMode="MultiLine" 
                        Width="718px"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button3" runat="server" onclick="Button3_Click" 
                        Text="Comment" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="DropDownList2" runat="server" 
                        onselectedindexchanged="DropDownList2_SelectedIndexChanged">
                        <asp:ListItem>Share</asp:ListItem>
                        <asp:ListItem>Github</asp:ListItem>
                        <asp:ListItem>Stack_Overflow</asp:ListItem>
                        <asp:ListItem>Quara</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    <br />
                    </asp:Panel>
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <br />
                &nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
                <br />
            </asp:Panel>
            <table>
                <tr>
                    <td rowspan="3" valign="top">
                        <asp:Image ID="ProfileImage" runat="server" Height="115px" Width="210px" />
                    </td>
                </tr>
            </table>
            <br />
            &nbsp; <strong>NAME :</strong>
            <asp:Label ID="Label1" runat="server"></asp:Label>
            <br />
            <br />
            &nbsp; <strong>EMAIL-ID :</strong>
            <asp:Label ID="Label2" runat="server"></asp:Label>
            <br />
            <br />
            &nbsp; <strong>GENDER :</strong>
            <asp:Label ID="Label3" runat="server"></asp:Label>
            <br />
            <br />
            <br />
            <br />
        </asp:Panel>
        <br />
        <br />
        <br />
        <asp:Image ID="Image2" runat="server" Height="88px" 
            ImageUrl="~/images/Untitled-2 (2).jpg" Width="169px" />
        <br />
        <br />
        <asp:Label ID="Label7" runat="server"></asp:Label>
        <br />
        <br />
        <hr style="margin-left: 0px" />
        <br />
        <br />
        <asp:Image ID="Image3" runat="server" Height="97px" 
            ImageUrl="~/images/Untitled-2 (2).jpg" Width="175px" />
        <br />
        <br />
        <asp:Label ID="Label8" runat="server"></asp:Label>
        <br />
        <span class="style2">
        <br />
        <br />
        @wisywig 2015</span></asp:Panel>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </form>
</body>
</html>
