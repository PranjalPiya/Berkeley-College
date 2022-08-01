<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="student_details.aspx.cs" Inherits="Berkeley_College.student_details" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <section id ="main-content">
        <section id ="wrapper">
            <div class="row">
                <div class="col-col-lg-12">
                    <section class="panel">
                        <header class="panel-heading">
                            <div class="col-md-4 col-md-offset-4">
                                <h1>Student Form</h1>
                            </div>
                        </header>
                       
                        <div class="panel-body">
                       
                            <div class="row">
                                <div class="col-md-4 col-md-offset-1">
                                   
                                 
                                    
                                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;PERSON_ID&quot;, &quot;FULL_NAME&quot;, &quot;EMAIL&quot;, &quot;GENDER&quot;, &quot;MOBILE_NUMBER&quot; FROM &quot;PERSON&quot;"></asp:SqlDataSource>

                                    <asp:FormView ID="FormView1" runat="server" DataKeyNames="STUDENT_ID" DataSourceID="SqlDataSource1">
                                        <EditItemTemplate>
                                            STUDENT ID:
                                            <asp:Label ID="STUDENT_IDLabel1" runat="server" Text='<%# Eval("STUDENT_ID") %>' />
                                            <br />
                                            PERSON ID:
                                            <asp:TextBox ID="PERSON_IDTextBox" runat="server" Text='<%# Bind("PERSON_ID") %>' />
                                            <br />
                                            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                        </EditItemTemplate>
                                       <InsertItemTemplate>
                                            STUDENT ID:
                                            <asp:TextBox ID="STUDENT_IDTextBox" runat="server" Text='<%# Bind("STUDENT_ID") %>' CssClass="form-control" />
                                           
                                            PERSON ID:
                                            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="PERSON_ID" DataValueField="PERSON_ID" CssClass="form-control">
                                            </asp:DropDownList>
                                            <br />
                                            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" CssClass="btn btn-success" Width="100px"/>
                                            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" CssClass="btn btn-danger" Width="100px" />
                                            <br /><br />
                                        </InsertItemTemplate>
                                        <ItemTemplate>
                                         
                                            <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="Add Student" CssClass="btn btn-primary" Width="100%"  />
                                            <br /><br />
                                        </ItemTemplate>
                                    </asp:FormView>
                                   
                                </div>
                             

                             
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;STUDENT_ID&quot;, &quot;PERSON_ID&quot; FROM &quot;STUDENT&quot;" DeleteCommand="DELETE FROM &quot;STUDENT&quot; WHERE &quot;STUDENT_ID&quot; = :STUDENT_ID" InsertCommand="INSERT INTO &quot;STUDENT&quot; (&quot;STUDENT_ID&quot;, &quot;PERSON_ID&quot;) VALUES (:STUDENT_ID, :PERSON_ID)" UpdateCommand="UPDATE &quot;STUDENT&quot; SET &quot;PERSON_ID&quot; = :PERSON_ID WHERE &quot;STUDENT_ID&quot; = :STUDENT_ID">
                                    <DeleteParameters>
                                        <asp:Parameter Name="STUDENT_ID" Type="String" />
                                    </DeleteParameters>
                                    <InsertParameters>
                                        <asp:Parameter Name="STUDENT_ID" Type="String" />
                                        <asp:Parameter Name="PERSON_ID" Type="Decimal" />
                                    </InsertParameters>
                                    <UpdateParameters>
                                        <asp:Parameter Name="PERSON_ID" Type="Decimal" />
                                        <asp:Parameter Name="STUDENT_ID" Type="String" />
                                    </UpdateParameters>
                                </asp:SqlDataSource>
                                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;PERSON_ID&quot;, &quot;FULL_NAME&quot;, &quot;GENDER&quot;, &quot;EMAIL&quot;, &quot;MOBILE_NUMBER&quot; FROM &quot;PERSON&quot;"></asp:SqlDataSource>


                                
               <div class="row">
                                <div class="col-md-10 col-md-offset-1">
                                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="STUDENT_ID" DataSourceID="SqlDataSource1" Width="835px" CellPadding="4" ForeColor="#333333" GridLines="None">
                                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                    <Columns>
                                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                                        <asp:BoundField DataField="STUDENT_ID" HeaderText="STUDENT_ID" ReadOnly="True" SortExpression="STUDENT_ID"  />
                                        <asp:BoundField DataField="PERSON_ID" HeaderText="PERSON_ID" SortExpression="PERSON_ID" />
                                        <asp:TemplateField HeaderText="Student Name">
                                            <ItemTemplate>
                                                <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource3" DataTextField="FULL_NAME" Enabled="false" DataValueField="PERSON_ID" SelectedValue='<%# Bind("PERSON_ID") %>'>
                                                </asp:DropDownList>
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
                                    <br /><br />
                                    <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource4" DataTextField="STUDENT_ID" DataValueField="STUDENT_ID">
                                    </asp:DropDownList>
                                </div></div>
                            </div>
                            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;STUDENT_ID&quot;, &quot;PERSON_ID&quot; FROM &quot;STUDENT&quot;"></asp:SqlDataSource>
                        </div>
                    </section>
                </div>
            </div>
        </section>
    </section>


</asp:Content>
