<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Fee.aspx.cs" Inherits="Berkeley_College.Fee" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <section id ="main-content">
        <section id ="wrapper">
            <div class="row">
                <div class="col-col-lg-12">
                    <section class="panel">
                        <header class="panel-heading">
                            <div class="col-md-7 col-md-offset-3">
                                <h1>Student Fee Mapping Form</h1>
                            </div>
                        </header>

                        <div class="panel-body">
                             <div class="row">
                                <div class="col-md-4 col-md-offset-1">
                                    </div>
                                                <div class="row">
                                <div class="col-md-10 col-md-offset-1">
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="FEE_ID,STUDENT_ID,DEPARTMENT_ID" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" Width="827px">
                                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                <Columns>
                                    <asp:BoundField DataField="FEE_ID" HeaderText="FEE_ID" ReadOnly="True" SortExpression="FEE_ID" />
                                    <asp:BoundField DataField="PAYMENT_DATE" HeaderText="PAYMENT_DATE" SortExpression="PAYMENT_DATE" />
                                    <asp:BoundField DataField="AMOUNT" HeaderText="AMOUNT" SortExpression="AMOUNT" />
                                    <asp:BoundField DataField="STUDENT_ID" HeaderText="STUDENT_ID" SortExpression="STUDENT_ID" ReadOnly="True" />
                                    <asp:BoundField DataField="DEPARTMENT_ID" HeaderText="DEPARTMENT_ID" SortExpression="DEPARTMENT_ID" ReadOnly="True" />
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
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM &quot;FEE&quot; WHERE &quot;FEE_ID&quot; = :FEE_ID" InsertCommand="INSERT INTO &quot;FEE&quot; (&quot;FEE_ID&quot;, &quot;AMOUNT&quot;, &quot;PAYMENT_DATE&quot;, &quot;DEPARTMENT_ID&quot;, &quot;STUDENT_ID&quot;) VALUES (:FEE_ID, :AMOUNT, :PAYMENT_DATE, :DEPARTMENT_ID, :STUDENT_ID)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;FEE_ID&quot;, &quot;AMOUNT&quot;, &quot;PAYMENT_DATE&quot;, &quot;DEPARTMENT_ID&quot;, &quot;STUDENT_ID&quot; FROM &quot;FEE&quot;" UpdateCommand="UPDATE &quot;FEE&quot; SET &quot;AMOUNT&quot; = :AMOUNT, &quot;PAYMENT_DATE&quot; = :PAYMENT_DATE, &quot;DEPARTMENT_ID&quot; = :DEPARTMENT_ID, &quot;STUDENT_ID&quot; = :STUDENT_ID WHERE &quot;FEE_ID&quot; = :FEE_ID">
                                <DeleteParameters>
                                    <asp:Parameter Name="FEE_ID" Type="String" />
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="FEE_ID" Type="String" />
                                    <asp:Parameter Name="AMOUNT" Type="Single" />
                                    <asp:Parameter Name="PAYMENT_DATE" Type="DateTime" />
                                    <asp:Parameter Name="DEPARTMENT_ID" Type="String" />
                                    <asp:Parameter Name="STUDENT_ID" Type="String" />
                                </InsertParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="AMOUNT" Type="Single" />
                                    <asp:Parameter Name="PAYMENT_DATE" Type="DateTime" />
                                    <asp:Parameter Name="DEPARTMENT_ID" Type="String" />
                                    <asp:Parameter Name="STUDENT_ID" Type="String" />
                                    <asp:Parameter Name="FEE_ID" Type="String" />
                                </UpdateParameters>
                            </asp:SqlDataSource>
                                 <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT FEE.FEE_ID,FEE.PAYMENT_DATE, FEE.AMOUNT, STUDENT.STUDENT_ID, DEPARTMENT.DEPARTMENT_ID, DEPARTMENT.DEPARTMENT_NAME FROM FEE
JOIN DEPARTMENT ON FEE.DEPARTMENT_ID=DEPARTMENT.DEPARTMENT_ID
JOIN STUDENT ON STUDENT.STUDENT_ID=FEE.STUDENT_ID"></asp:SqlDataSource>
                                 <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT PERSON.PERSON_ID, PERSON.FULL_NAME, STUDENT.STUDENT_ID FROM PERSON JOIN STUDENT ON PERSON.PERSON_ID = STUDENT.PERSON_ID"></asp:SqlDataSource>
                                 </div>
                        </div>
                        </section>
                    </div>
                </div>
            </section>
         </section>







</asp:Content>
