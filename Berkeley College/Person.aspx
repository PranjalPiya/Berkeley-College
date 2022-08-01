<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Person.aspx.cs" Inherits="Berkeley_College.Person" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <section id ="main-content">
        <section id ="wrapper">
            <div class="row">
                <div class="col-col-lg-12">
                    <section class="panel">
                        <header class="panel-heading">
                            <div class="col-md-4 col-md-offset-4">
                                <h1>Person Details</h1>
                            </div>
                        </header>
                    
                
            <div class="row">
                                <div class="col-md-4 col-md-offset-1">
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="PERSON_ID" DataSourceID="SqlDataSource1">
            <EditItemTemplate>
                
                PERSON_ID:
                <asp:Label ID="PERSON_IDLabel1" runat="server" Text='<%# Eval("PERSON_ID") %>' />
                <br />
                                      
                FULL_NAME:
                <asp:TextBox ID="FULL_NAMETextBox" runat="server" Text='<%# Bind("FULL_NAME") %>' />
                <br />
                DATE_OF_BIRTH:
                <asp:TextBox ID="DATE_OF_BIRTHTextBox" runat="server" Text='<%# Bind("DATE_OF_BIRTH") %>' />
                <br />
                GENDER:
                <asp:TextBox ID="GENDERTextBox" runat="server" Text='<%# Bind("GENDER") %>' />
                <br />
                EMAIL:
                <asp:TextBox ID="EMAILTextBox" runat="server" Text='<%# Bind("EMAIL") %>' />
                <br />
                MOBILE_NUMBER:
                <asp:TextBox ID="MOBILE_NUMBERTextBox" runat="server" Text='<%# Bind("MOBILE_NUMBER") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                 
                PERSON ID:
                <asp:TextBox ID="PERSON_IDTextBox" runat="server" Text='<%# Bind("PERSON_ID") %>' CssClass="form-control"/>
                   
             
                FULL NAME:
                <asp:TextBox ID="FULL_NAMETextBox" runat="server" Text='<%# Bind("FULL_NAME") %>' CssClass="form-control"/>
              
                DATE OF BIRTH:
                <asp:TextBox ID="DATE_OF_BIRTHTextBox" runat="server" Text='<%# Bind("DATE_OF_BIRTH") %>' CssClass="form-control" />
            
                GENDER:
                <asp:TextBox ID="GENDERTextBox" runat="server" Text='<%# Bind("GENDER") %>' CssClass="form-control"/>
             
                EMAIL:
                <asp:TextBox ID="EMAILTextBox" runat="server" Text='<%# Bind("EMAIL") %>' CssClass="form-control"/>
               
                MOBILE NUMBER:
                <asp:TextBox ID="MOBILE_NUMBERTextBox" runat="server" Text='<%# Bind("MOBILE_NUMBER") %>' CssClass="form-control" />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" CssClass="btn btn-success" Width="100px" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" CssClass="btn btn-danger" Width="100px" />
                <br /><br />
            </InsertItemTemplate>
            <ItemTemplate>
              <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="Add Person" CssClass="btn btn-primary" Width="100%"/>
                <br /><br />
            </ItemTemplate>
    </asp:FormView>

</div>


    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM &quot;PERSON&quot; WHERE &quot;PERSON_ID&quot; = :PERSON_ID" InsertCommand="INSERT INTO &quot;PERSON&quot; (&quot;PERSON_ID&quot;, &quot;FULL_NAME&quot;, &quot;DATE_OF_BIRTH&quot;, &quot;GENDER&quot;, &quot;EMAIL&quot;, &quot;MOBILE_NUMBER&quot;) VALUES (:PERSON_ID, :FULL_NAME, :DATE_OF_BIRTH, :GENDER, :EMAIL, :MOBILE_NUMBER)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;PERSON_ID&quot;, &quot;FULL_NAME&quot;, &quot;DATE_OF_BIRTH&quot;, &quot;GENDER&quot;, &quot;EMAIL&quot;, &quot;MOBILE_NUMBER&quot; FROM &quot;PERSON&quot;" UpdateCommand="UPDATE &quot;PERSON&quot; SET &quot;FULL_NAME&quot; = :FULL_NAME, &quot;DATE_OF_BIRTH&quot; = :DATE_OF_BIRTH, &quot;GENDER&quot; = :GENDER, &quot;EMAIL&quot; = :EMAIL, &quot;MOBILE_NUMBER&quot; = :MOBILE_NUMBER WHERE &quot;PERSON_ID&quot; = :PERSON_ID">
        <DeleteParameters>
            <asp:Parameter Name="PERSON_ID" Type="Decimal" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="PERSON_ID" Type="Decimal" />
            <asp:Parameter Name="FULL_NAME" Type="String" />
            <asp:Parameter Name="DATE_OF_BIRTH" Type="DateTime" />
            <asp:Parameter Name="GENDER" Type="String" />
            <asp:Parameter Name="EMAIL" Type="String" />
            <asp:Parameter Name="MOBILE_NUMBER" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="FULL_NAME" Type="String" />
            <asp:Parameter Name="DATE_OF_BIRTH" Type="DateTime" />
            <asp:Parameter Name="GENDER" Type="String" />
            <asp:Parameter Name="EMAIL" Type="String" />
            <asp:Parameter Name="MOBILE_NUMBER" Type="String" />
            <asp:Parameter Name="PERSON_ID" Type="Decimal" />
        </UpdateParameters>
    </asp:SqlDataSource>


               <div class="row">
                                <div class="col-md-10 col-md-offset-1">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="PERSON_ID" DataSourceID="SqlDataSource1" Width="877px" CellPadding="100" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="PERSON_ID" HeaderText="PERSON_ID" ReadOnly="True" SortExpression="PERSON_ID" />
            <asp:BoundField DataField="FULL_NAME" HeaderText="FULL_NAME" SortExpression="FULL_NAME" />
            <asp:BoundField DataField="DATE_OF_BIRTH" HeaderText="DATE_OF_BIRTH" SortExpression="DATE_OF_BIRTH" />
            <asp:BoundField DataField="GENDER" HeaderText="GENDER" SortExpression="GENDER" />
            <asp:BoundField DataField="EMAIL" HeaderText="EMAIL" SortExpression="EMAIL" />
            <asp:BoundField DataField="MOBILE_NUMBER" HeaderText="MOBILE_NUMBER" SortExpression="MOBILE_NUMBER" />
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
                 </div></div>
                </div>
</section>
</div>
                </div>
            </section>
     </section>
</asp:Content>
