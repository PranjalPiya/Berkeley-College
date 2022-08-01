<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Teacher_Details.aspx.cs" Inherits="Berkeley_College.Teacher_Details" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <section id ="main-content">
        <section id ="wrapper">
            <div class="row">
                <div class="col-col-lg-12">
                    <section class="panel">
                        <header class="panel-heading">
                            <div class="col-md-6 col-md-offset-4">
                                <h1>Teacher Details</h1>
                            </div>
                        </header>

                        <div class="panel-body">
                          <%--  <div class="row">
                                <div class="col-md-4 col-md-offset-1">
                                    <div class="form-group">
                                        <asp:Label Text="Teacher Name" runat="server" />
                                        <asp:TextBox runat="server" Enabled="true" CssClass="form-control input-sm" placeholder="Teacher Name" />
                                    </div>
                                </div>
                                <div class="col-md-4 col-md-offset-1">
                                    <div class="form-group">
                                        <asp:Label Text="Address" runat="server" />
                                        <asp:TextBox runat="server" Enabled="true" CssClass="form-control input-sm" placeholder="Address" />
                                    </div>
                                </div>
                            </div>


                               <div class="row">
                                <div class="col-md-4 col-md-offset-1">
                                    <div class="form-group">
                                        <asp:Label Text="DOB" runat="server" />
                                        <asp:TextBox runat="server" Enabled="true" TextMode="Date" CssClass="form-control input-sm" placeholder="Student Name" />
                                    </div>
                                </div>
                                <div class="col-md-4 col-md-offset-1">
                                    <div class="form-group">
                                        <asp:Label Text="Phone Number" runat="server" />
                                        <asp:TextBox runat="server" Enabled="true" CssClass="form-control input-sm" placeholder="Phone Number" />
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-4 col-md-offset-1">
                                    <asp:Button Text="Insert" ID="btnSave" CssClass="btn btn-primary" Width="100px" runat="server" />
                                    <asp:Button Text="Cancel" ID="btnCancel" CssClass="btn btn-danger" Width="100px" runat="server" />
                                </div>--%>
                              <div class="row">
                                <div class="col-md-4 col-md-offset-5">
                                    <asp:FormView ID="FormView1" runat="server" DataKeyNames="TEACHER_ID" DataSourceID="SqlDataSource1">
                                        <EditItemTemplate>
                                            TEACHER_ID:
                                            <asp:Label ID="TEACHER_IDLabel1" runat="server" Text='<%# Eval("TEACHER_ID") %>' />
                                            <br />
                                            PERSON_ID:
                                            <br />
                                            QUALIFICATION:
                                            <asp:TextBox ID="QUALIFICATIONTextBox" runat="server" Text='<%# Bind("QUALIFICATION") %>' />
                                            <br />
                                            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                        </EditItemTemplate>
                                        <InsertItemTemplate>
                                            TEACHER ID:
                                            <asp:TextBox ID="TEACHER_IDTextBox" runat="server" Text='<%# Bind("TEACHER_ID") %>' CssClass="form-control" />
                                           
                                            PERSON ID:
                                            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="PERSON_ID" CssClass="form-control" DataValueField="PERSON_ID" SelectedValue='<%# Bind("PERSON_ID") %>'>
                                            </asp:DropDownList>
                                           
                                            QUALIFICATION:
                                            <asp:TextBox ID="QUALIFICATIONTextBox" runat="server" Text='<%# Bind("QUALIFICATION") %>' CssClass="form-control"/>
                                            <br />
                                            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" CssClass="btn btn-success" Width="100px" />
&nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" CssClass="btn btn-danger" Width="100px"/>
                                            <br /><br />
                                        </InsertItemTemplate>
                                        <ItemTemplate>
                                        <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="Add Teacher" CssClass="btn btn-primary" Width="100%"/>
                                            <br /><br />
                                        </ItemTemplate>
                                    </asp:FormView>

                                    </div>
                                  

                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;TEACHER_ID&quot;, &quot;PERSON_ID&quot;, &quot;QUALIFICATION&quot; FROM &quot;TEACHER&quot;" DeleteCommand="DELETE FROM &quot;TEACHER&quot; WHERE &quot;TEACHER_ID&quot; = :TEACHER_ID" InsertCommand="INSERT INTO &quot;TEACHER&quot; (&quot;TEACHER_ID&quot;, &quot;PERSON_ID&quot;, &quot;QUALIFICATION&quot;) VALUES (:TEACHER_ID, :PERSON_ID, :QUALIFICATION)" UpdateCommand="UPDATE &quot;TEACHER&quot; SET &quot;PERSON_ID&quot; = :PERSON_ID, &quot;QUALIFICATION&quot; = :QUALIFICATION WHERE &quot;TEACHER_ID&quot; = :TEACHER_ID">
                                    <DeleteParameters>
                                        <asp:Parameter Name="TEACHER_ID" Type="String" />
                                    </DeleteParameters>
                                    <InsertParameters>
                                        <asp:Parameter Name="TEACHER_ID" Type="String" />
                                        <asp:Parameter Name="PERSON_ID" Type="Decimal" />
                                        <asp:Parameter Name="QUALIFICATION" Type="String" />
                                    </InsertParameters>
                                    <UpdateParameters>
                                        <asp:Parameter Name="PERSON_ID" Type="Decimal" />
                                        <asp:Parameter Name="QUALIFICATION" Type="String" />
                                        <asp:Parameter Name="TEACHER_ID" Type="String" />
                                    </UpdateParameters>
                                </asp:SqlDataSource>
                               
                                

                               
                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;PERSON_ID&quot;, &quot;FULL_NAME&quot; FROM &quot;PERSON&quot;"></asp:SqlDataSource>
                                  <div class="row">
                                <div class="col-md-4 col-md-offset-1">
                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="TEACHER_ID" DataSourceID="SqlDataSource1" Width="754px" CellPadding="4" ForeColor="#333333" GridLines="None">
                                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                    <Columns>
                                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                                        <asp:BoundField DataField="TEACHER_ID" HeaderText="TEACHER_ID" ReadOnly="True" SortExpression="TEACHER_ID" />
                                        <asp:BoundField DataField="PERSON_ID" HeaderText="PERSON_ID" SortExpression="PERSON_ID" />
                                        <asp:BoundField DataField="QUALIFICATION" HeaderText="QUALIFICATION" SortExpression="QUALIFICATION" />
                                        <asp:TemplateField HeaderText="Teacher Name">
                                            <ItemTemplate>
                                                <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="FULL_NAME" Enabled="false" DataValueField="PERSON_ID" SelectedValue='<%# Bind("PERSON_ID") %>'>
                                                </asp:DropDownList>
                                                <asp:SqlDataSource ID="SqlDataSource3" runat="server"></asp:SqlDataSource>
                                            </ItemTemplate>
                                        </asp:TemplateField>
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
                        </div>
                    </section>
                </div>
            </div>
        </section>
    </section>
</asp:Content>
