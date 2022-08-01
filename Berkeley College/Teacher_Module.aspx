<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Teacher_Module.aspx.cs" Inherits="Berkeley_College.Teacher_Module" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <section id ="main-content">
        <section id ="wrapper">
            <div class="row">
                <div class="col-col-lg-12">
                    <section class="panel">
                        <header class="panel-heading">
                            <div class="col-md-7 col-md-offset-3">
                                <h1>Teacher Module Mapping Form</h1>
                            </div>
                        </header>

                        <div class="panel-body">
                              <div class="row">
                                <div class="col-md-4 col-md-offset-1">
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="TEACHER_ID,MODULE_CODE" DataSourceID="SqlDataSource3" ForeColor="#333333" GridLines="None" Width="721px">
                                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                <Columns>
                                    <asp:BoundField DataField="TEACHER_ID" HeaderText="TEACHER_ID" ReadOnly="True" SortExpression="TEACHER_ID" />
                                    <asp:BoundField DataField="QUALIFICATION" HeaderText="QUALIFICATION" SortExpression="QUALIFICATION" />
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
                                    </div>




                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM &quot;TEACHER_MODULE&quot; WHERE &quot;TEACHER_ID&quot; = :TEACHER_ID AND &quot;MODULE_CODE&quot; = :MODULE_CODE" InsertCommand="INSERT INTO &quot;TEACHER_MODULE&quot; (&quot;TEACHER_ID&quot;, &quot;MODULE_CODE&quot;) VALUES (:TEACHER_ID, :MODULE_CODE)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;TEACHER_ID&quot;, &quot;MODULE_CODE&quot; FROM &quot;TEACHER_MODULE&quot;">
                                <DeleteParameters>
                                    <asp:Parameter Name="TEACHER_ID" Type="String" />
                                    <asp:Parameter Name="MODULE_CODE" Type="String" />
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="TEACHER_ID" Type="String" />
                                    <asp:Parameter Name="MODULE_CODE" Type="String" />
                                </InsertParameters>
                            </asp:SqlDataSource>
                                  <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;PERSON_ID&quot;, &quot;FULL_NAME&quot;, &quot;EMAIL&quot; FROM &quot;PERSON&quot;"></asp:SqlDataSource>
                                  <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT TEACHER.TEACHER_ID, TEACHER.QUALIFICATION, MODULE.MODULE_CODE, MODULE.MODULE_NAME, MODULE.CREDIT_HOURS FROM TEACHER_MODULE
JOIN TEACHER ON TEACHER_MODULE.TEACHER_ID=TEACHER.TEACHER_ID
JOIN MODULE ON TEACHER_MODULE.MODULE_CODE=MODULE.MODULE_CODE"></asp:SqlDataSource>
                                  <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT PERSON.PERSON_ID, PERSON.FULL_NAME, TEACHER.TEACHER_ID, TEACHER.QUALIFICATION, PERSON.EMAIL FROM PERSON JOIN TEACHER ON PERSON.PERSON_ID = TEACHER.PERSON_ID"></asp:SqlDataSource>
                                  </div>
                        </div>
                    </section>
                    </div>
                </div>
            </section>
         </section>









</asp:Content>
