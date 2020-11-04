<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="WebApplication1.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    
        <div>
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>

                    <table>
                        <tr>
                            <td>Q.<%# Eval("id") %>: <%# Eval("question") %></td>
                        </tr>
                        <tr>
                            <td>
                                 <asp:RadioButton  ID="RadOption1"   GroupName="rdexam" Text='<%# Eval("option1") %>' runat="server"></asp:RadioButton>
                            </td>
                            <td>
                                 <asp:RadioButton ID="RadOption2" GroupName="rdexam" Text='<%# Eval("option2") %>' runat="server"></asp:RadioButton>
                            </td>
                            <td>
                                  <asp:RadioButton ID="RadOption3" GroupName="rdexam" Text='<%# Eval("option3") %>' runat="server"></asp:RadioButton>
                            </td>
                            <td>
                                 <asp:RadioButton ID="RadOption4" GroupName="rdexam" Text='<%# Eval("option4") %>' runat="server"></asp:RadioButton>
                            </td>
                            <br />
                             <asp:Label ForeColor="red" ID="LabCorrectAns" Visible="false" runat="server" Text='<%# Eval("answer") %>'></asp:Label>
                              </tr>


                       


                         <tr>
                            <td>
                                 <asp:Label ID="LabUserSelectedOption" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>
                    </table>
                   
                 
                    
                </ItemTemplate>
                      
  </asp:Repeater>
          
            
            <asp:Button ID="BtnSubmit" runat="server" Text="SUBMIT" OnClick="BtnSubmit_Click" />
        



           
        </div>

    </form>
</body>
</html>
