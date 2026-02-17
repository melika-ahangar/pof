<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="Content/safeAval.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="pedar">
        <div class="balaSafeAval">
            <b>
                ورود به پنل کاربری آموزشگاه کامپیوتر فرایانه
            </b>
           <div class="khat">

           </div>

        </div>

        <div class="ajab">
           
            <asp:TextBox ID="TextBox1" runat="server" CssClass="khar" placeholder=" 👤  نام کاربری"></asp:TextBox>
           <br />
             <div class="chap">
                 <asp:Label ID="Label2" runat="server" Text="dd"  ></asp:Label>
            </div>

            <asp:TextBox ID="TextBox2" runat="server" CssClass="khar" placeholder="رمز عبور "></asp:TextBox>
            <br />
            <div class="chap">
                 <asp:Label ID="Label1" runat="server" Text="dd"  ></asp:Label>
            </div>
           
            <br />
            <asp:Button ID="Button1" runat="server" Text="ورود" CssClass="dokme" />
        </div>
    </div>
</asp:Content>

