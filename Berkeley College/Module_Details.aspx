<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Module_Details.aspx.cs" Inherits="Berkeley_College.Module_Details" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <section id ="main-content">
        <section id ="wrapper">
            <div class="row">
                <div class="col-col-lg-12">
                    <section class="panel">
                        <header class="panel-heading">
                            <div class="col-md-4 col-md-offset-4">
                                <h1>Module Details</h1>
                            </div>
                        </header>

                        <div class="panel-body">
                   
                               <div class="row">
                                <div class="col-md-4 col-md-offset-1">
                                    <asp:FormView ID="FormView1" runat="server" DataKeyNames="MODULE_CODE" DataSourceID="SqlDataSource1">
                                        <EditItemTemplate>
                                            MODULE_CODE:
                                            <asp:Label ID="MODULE_CODELabel1" runat="server" Text='<%# Eval("MODULE_CODE") %>' />
                                            <br />
                                            MODULE_NAME:
                                            <asp:TextBox ID="MODULE_NAMETextBox" runat="server" Text='<%# Bind("MODULE_NAME") %>' />
                                            <br />
                                            CREDIT_HOURS:
                                            <asp:TextBox ID="CREDIT_HOURSTextBox" runat="server" Text='<%# Bind("CREDIT_HOURS") %>' />
                                            <br />
                                            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                        </EditItemTemplate>
                                        <InsertItemTemplate>
                                            MODULE CODE:
                                            <asp:TextBox ID="MODULE_CODETextBox" runat="server" Text='<%# Bind("MODULE_CODE") %>' />
                                            <br /><br />
                                            MODULE NAME:
                                            <asp:TextBox ID="MODULE_NAMETextBox" runat="server" Text='<%# Bind("MODULE_NAME") %>' />
                                            <br /><br />
                                            CREDIT HOURS:
                                            <asp:TextBox ID="CREDIT_HOURSTextBox" runat="server" Text='<%# Bind("CREDIT_HOURS") %>' />
                                            <br /><br />
                                            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" CssClass="btn btn-success" Width="100px"/>
                                            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" CssClass="btn btn-danger" Width="100px"/>
                                            <br /><br />
                                        </InsertItemTemplate>
                                        <ItemTemplate>
                                      <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="Add Student" CssClass="btn btn-primary" Width="100%"/>
                                            <br /><br />
                                        </ItemTemplate>
                                    </asp:FormView>
                                    </div>

                                                      
               <div class="row">
                                <div class="col-md-10 col-md-offset-1">
                                  <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="MODULE_CODE" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="824px">
                                      <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                      <Columns>
                                          <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                                          <asp:BoundField DataField="MODULE_CODE" HeaderText="MODULE_CODE" ReadOnly="True" SortExpression="MODULE_CODE" />
                                          <asp:BoundField DataField="MODULE_NAME" HeaderText="MODULE_NAME" SortExpression="MODULE_NAME" />
                                          <asp:BoundField DataField="CREDIT_HOURS" HeaderText="CREDIT_HOURS" SortExpression="CREDIT_HOURS" />
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
                                  <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM &quot;MODULE&quot; WHERE &quot;MODULE_CODE&quot; = :MODULE_CODE" InsertCommand="INSERT INTO &quot;MODULE&quot; (&quot;MODULE_CODE&quot;, &quot;MODULE_NAME&quot;, &quot;CREDIT_HOURS&quot;) VALUES (:MODULE_CODE, :MODULE_NAME, :CREDIT_HOURS)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;MODULE_CODE&quot;, &quot;MODULE_NAME&quot;, &quot;CREDIT_HOURS&quot; FROM &quot;MODULE&quot;" UpdateCommand="UPDATE &quot;MODULE&quot; SET &quot;MODULE_NAME&quot; = :MODULE_NAME, &quot;CREDIT_HOURS&quot; = :CREDIT_HOURS WHERE &quot;MODULE_CODE&quot; = :MODULE_CODE">
                                      <DeleteParameters>
                                          <asp:Parameter Name="MODULE_CODE" Type="String" />
                                      </DeleteParameters>
                                      <InsertParameters>
                                          <asp:Parameter Name="MODULE_CODE" Type="String" />
                                          <asp:Parameter Name="MODULE_NAME" Type="String" />
                                          <asp:Parameter Name="CREDIT_HOURS" Type="Decimal" />
                                      </InsertParameters>
                                      <UpdateParameters>
                                          <asp:Parameter Name="MODULE_NAME" Type="String" />
                                          <asp:Parameter Name="CREDIT_HOURS" Type="Decimal" />
                                          <asp:Parameter Name="MODULE_CODE" Type="String" />
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
