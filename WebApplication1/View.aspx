<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="View.aspx.cs" Inherits="WebApplication1.Content.View" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="containter.fluid">
        <div class="row ">

            <div class="col-md-2"></div>
            <div class="col-md-5">

                <br />
                <br />

                <img style="width:50%; text-align: center;" src="C:\Users\mariu\source\repos\Zagarki\WebApplication1\src\7.jpg"  runat="server" />

            </div>

            <div class="col-md-3">
                <br />
                <br />
                <table class="table table-sm">
                <tbody>
                    <tr>
                        <th scope="row">ID</th>
                        <td class="col-md-9">
                            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <th scope="row" style="height: 39px">marka</th>
                        <td class="col-md-9">
                            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <th scope="row">model</th>
                        <td class="col-md-9">
                            <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <th scope="row">rodzaj</th>
                        <td class="col-md-9">
                            <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    </tbody>
                    </table>
            </div>
            <div class="col-md-2"></div>

        </div>
    </div>

</asp:Content>
