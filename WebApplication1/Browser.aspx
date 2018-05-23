<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Browser.aspx.cs" Inherits="WebApplication1.Browser" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

<div class="row">
  <div class="col-md-3 col-xs-12">
    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam tincidunt velit at vestibulum interdum. Sed blandit, lacus quis cursus elementum, lectus ex elementum turpis, sed fringilla eros massa et sem. Quisque porttitor tempor ligula a rhoncus. Phasellus vestibulum, neque a vestibulum varius, lacus sapien ornare velit, vitae vehicula tellus mauris in lectus. Aliquam erat volutpat. Suspendisse volutpat turpis ante, at interdum magna faucibus at. Morbi iaculis arcu mi, ut aliquet odio suscipit sed. Sed ut quam felis. Vivamus eu erat vitae nibh elementum posuere eget eu lorem. Donec consectetur ornare commodo. Nulla auctor rutrum pellentesque. Fusce consectetur mauris id ipsum porttitor, a bibendum massa elementum. Donec ullamcorper aliquet velit, id semper urna iaculis non. Mauris sed dui eget ante dictum gravida quis sed libero. Vestibulum at maximus sapien, at elementum magna.
  </div>
    <div class="col-md-9 col-xs-12">
    
   <asp:GridView ID="GridView1" CssClass="table table-bordered table-hover" runat="server" AutoGenerateColumns="False" 
    DataSourceID="XmlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <Columns>
        
        <asp:TemplateField>
            
            <ItemTemplate>
                <asp:Image ID="Image1"
                           runat="server" Height="100px" 
                           ImageUrl='<%# XPath("zdjecie") %>' 
                           Width="100px" />
                
               
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
            <Columns>
                <asp:TemplateField>
            <ItemTemplate>
                <asp:Label ID="Label1" 
                           runat="server" 
                           Text='<%# XPath("marka") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
            </Columns>
            <Columns>
                <asp:TemplateField>
            <ItemTemplate>
                <asp:Label ID="Label1" 
                           runat="server" 
                           Text='<%# XPath("model") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
            </Columns>
            <Columns>
                <asp:TemplateField>
            <ItemTemplate>
                <asp:Label ID="Label1" 
                           runat="server" 
                           Text='<%# XPath("rodzaj") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
            </Columns>
</asp:GridView>       
<asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/App_Data/Zegarki.xml" 
    XPath="Zegarki/Zegarek"></asp:XmlDataSource>
           
</div>
    </div>

<!--
 <div class="row">
  <div class="col-md-4">
    
  </div>
  <div class="col-md-4">
    
  </div>
  <div class="col-md-4">
    
  </div>
</div>
        -->
    



   




</asp:Content>