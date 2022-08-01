<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Student_Assignment.aspx.cs" Inherits="Berkeley_College.Student_Assignment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

      <section id ="main-content">
        <section id ="wrapper">
            <div class="row">
                <div class="col-col-lg-12">
                    <section class="panel">
                        <header class="panel-heading">
                            <div class="col-md-8 col-md-offset-2">
                                <h1>Student Assignment Mapping Form</h1>
                            </div>
                        </header>

                        <div class="panel-body">
                              <div class="row">
                                <div class="col-md-4 col-md-offset-1">
                                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="MODULE_CODE,STUDENT_ID,GRADE" DataSourceID="SqlDataSource3" ForeColor="#333333" GridLines="None" Width="738px">
                                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                        <Columns>
                                            <asp:BoundField DataField="MODULE_CODE" HeaderText="MODULE_CODE" ReadOnly="True" SortExpression="MODULE_CODE" />
                                            <asp:BoundField DataField="CREDIT_HOURS" HeaderText="CREDIT_HOURS" SortExpression="CREDIT_HOURS" />
                                            <asp:BoundField DataField="MODULE_NAME" HeaderText="MODULE_NAME" SortExpression="MODULE_NAME" />
                                            <asp:BoundField DataField="ASSIGNMENT_ID" HeaderText="ASSIGNMENT_ID" SortExpression="ASSIGNMENT_ID" />
                                            <asp:BoundField DataField="STUDENT_ID" HeaderText="STUDENT_ID" ReadOnly="True" SortExpression="STUDENT_ID" />
                                            <asp:BoundField DataField="GRADE" HeaderText="GRADE" ReadOnly="True" SortExpression="GRADE" />
                                            <asp:BoundField DataField="STATUS" HeaderText="STATUS" SortExpression="STATUS" />
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
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM &quot;RESULT&quot; WHERE &quot;ASSIGNMENT_ID&quot; = :ASSIGNMENT_ID AND &quot;STUDENT_ID&quot; = :STUDENT_ID AND &quot;GRADE&quot; = :GRADE" InsertCommand="INSERT INTO &quot;RESULT&quot; (&quot;ASSIGNMENT_ID&quot;, &quot;MODULE_CODE&quot;, &quot;STUDENT_ID&quot;, &quot;GRADE&quot;) VALUES (:ASSIGNMENT_ID, :MODULE_CODE, :STUDENT_ID, :GRADE)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;ASSIGNMENT_ID&quot;, &quot;MODULE_CODE&quot;, &quot;STUDENT_ID&quot;, &quot;GRADE&quot; FROM &quot;RESULT&quot;" UpdateCommand="UPDATE &quot;RESULT&quot; SET &quot;MODULE_CODE&quot; = :MODULE_CODE WHERE &quot;ASSIGNMENT_ID&quot; = :ASSIGNMENT_ID AND &quot;STUDENT_ID&quot; = :STUDENT_ID AND &quot;GRADE&quot; = :GRADE">
                                        <DeleteParameters>
                                            <asp:Parameter Name="ASSIGNMENT_ID" Type="String" />
                                            <asp:Parameter Name="STUDENT_ID" Type="String" />
                                            <asp:Parameter Name="GRADE" Type="String" />
                                        </DeleteParameters>
                                        <InsertParameters>
                                            <asp:Parameter Name="ASSIGNMENT_ID" Type="String" />
                                            <asp:Parameter Name="MODULE_CODE" Type="String" />
                                            <asp:Parameter Name="STUDENT_ID" Type="String" />
                                            <asp:Parameter Name="GRADE" Type="String" />
                                        </InsertParameters>
                                        <UpdateParameters>
                                            <asp:Parameter Name="MODULE_CODE" Type="String" />
                                            <asp:Parameter Name="ASSIGNMENT_ID" Type="String" />
                                            <asp:Parameter Name="STUDENT_ID" Type="String" />
                                            <asp:Parameter Name="GRADE" Type="String" />
                                        </UpdateParameters>
                                    </asp:SqlDataSource>
                                </div>
                                  <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT PERSON.PERSON_ID, PERSON.FULL_NAME, STUDENT.STUDENT_ID FROM PERSON JOIN STUDENT ON PERSON.PERSON_ID = STUDENT.PERSON_ID"></asp:SqlDataSource>
                                  <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;MODULE&quot;.MODULE_CODE, &quot;MODULE&quot;.CREDIT_HOURS, &quot;MODULE&quot;.MODULE_NAME, RESULT.ASSIGNMENT_ID, STUDENT.STUDENT_ID, GRADE.GRADE, GRADE.STATUS FROM RESULT
 JOIN &quot;MODULE&quot; ON RESULT.MODULE_CODE=&quot;MODULE&quot;.MODULE_CODE 
JOIN STUDENT ON RESULT.STUDENT_ID=STUDENT.STUDENT_ID 
JOIN ASSIGNMENT ON RESULT.ASSIGNMENT_ID=ASSIGNMENT.ASSIGNMENT_ID 
JOIN GRADE ON RESULT.GRADE=GRADE.GRADE"></asp:SqlDataSource>
                                </div>
                        </div>
                        </section>
                    </div>
                </div>
            </section>
          </section>






</asp:Content>
