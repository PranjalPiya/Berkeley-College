<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Department_Details.aspx.cs" Inherits="Berkeley_College.Department_Details" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <section id ="main-content">
        <section id ="wrapper">
            <div class="row">
                <div class="col-col-lg-12">
                    <section class="panel">
                        <header class="panel-heading">
                            <div class="col-md-6 col-md-offset-4">
                                <h1>Departments Details</h1>
                            </div>
                        
                        </header>


                          <div class="panel-body">
                     
                              <div class="row">
                              <div class="col-md-4 col-md-offset-1">
                                <asp:FormView ID="FormView1" runat="server" DataKeyNames="DEPARTMENT_ID" DataSourceID="SqlDataSource1">
                                <EditItemTemplate>
                                    DEPARTMENT_ID:
                                    <asp:Label ID="DEPARTMENT_IDLabel1" runat="server" Text='<%# Eval("DEPARTMENT_ID") %>' />
                                    <br />
                                    DEPARTMENT_NAME:
                                    <asp:TextBox ID="DEPARTMENT_NAMETextBox" runat="server" Text='<%# Bind("DEPARTMENT_NAME") %>' />
                                    <br />
                                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" CssClass="btn btn-primary" Width="100px" />
                                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" CssClass="btn btn-danger" Width="100px"/>
                                </EditItemTemplate>
                                <InsertItemTemplate>
                                    DEPARTMENT ID:
                                    <asp:TextBox ID="DEPARTMENT_IDTextBox" runat="server" Text='<%# Bind("DEPARTMENT_ID") %>' CssClass="form-control" />
                                 
                                    DEPARTMENT NAME:
                                    <asp:TextBox ID="DEPARTMENT_NAMETextBox" runat="server" Text='<%# Bind("DEPARTMENT_NAME") %>' CssClass="form-control" />
                                    <br />
                                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" CssClass="btn btn-success" Width="100px"/>
                                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" CssClass="btn btn-danger" Width="100px"/>
                                    <br /><br />

                                </InsertItemTemplate>
                                <ItemTemplate>
                                    <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="Add Department" CssClass="btn btn-primary" Width="100%" />
                                    <br /><br />
                                </ItemTemplate>
                            </asp:FormView>
                                       </div>
                                         <asp:SqlDataSource ID="SqlDataSource2" runat="server"></asp:SqlDataSource>

                                
               <div class="row">
                                <div class="col-md-10 col-md-offset-1">
                                  <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="DEPARTMENT_ID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="666px">
                                      <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                      <Columns>
                                          <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                                          <asp:BoundField DataField="DEPARTMENT_ID" HeaderText="DEPARTMENT_ID" ReadOnly="True" SortExpression="DEPARTMENT_ID" />
                                          <asp:BoundField DataField="DEPARTMENT_NAME" HeaderText="DEPARTMENT_NAME" SortExpression="DEPARTMENT_NAME" />
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
                                 
                              <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM &quot;DEPARTMENT&quot; WHERE &quot;DEPARTMENT_ID&quot; = :DEPARTMENT_ID" InsertCommand="INSERT INTO &quot;DEPARTMENT&quot; (&quot;DEPARTMENT_ID&quot;, &quot;DEPARTMENT_NAME&quot;) VALUES (:DEPARTMENT_ID, :DEPARTMENT_NAME)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;DEPARTMENT_ID&quot;, &quot;DEPARTMENT_NAME&quot; FROM &quot;DEPARTMENT&quot;" UpdateCommand="UPDATE &quot;DEPARTMENT&quot; SET &quot;DEPARTMENT_NAME&quot; = :DEPARTMENT_NAME WHERE &quot;DEPARTMENT_ID&quot; = :DEPARTMENT_ID">
                                  <DeleteParameters>
                                      <asp:Parameter Name="DEPARTMENT_ID" Type="String" />
                                  </DeleteParameters>
                                  <InsertParameters>
                                      <asp:Parameter Name="DEPARTMENT_ID" Type="String" />
                                      <asp:Parameter Name="DEPARTMENT_NAME" Type="String" />
                                  </InsertParameters>
                                  <UpdateParameters>
                                      <asp:Parameter Name="DEPARTMENT_NAME" Type="String" />
                                      <asp:Parameter Name="DEPARTMENT_ID" Type="String" />
                                  </UpdateParameters>
                              </asp:SqlDataSource>
                                   
                              </div>
                                     
                        </div>
                        </section>
                    </div>
                </div>
            </section>
         </section>
















</asp:Content>


