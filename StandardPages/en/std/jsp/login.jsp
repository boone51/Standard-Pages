<%@ taglib uri="/Mactive/WebBaseTags" prefix="webbase" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html><!-- InstanceBegin template="/Templates/nomenu.dwt" codeOutsideHTMLIsLocked="false" -->
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link href="allstyles.css" rel="stylesheet" type="text/css">
</head>

<body class="standard">
<table width="750" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td><%@ include file="../includes/header.htm"%></td>
  </tr>
  <tr>
    <td><!-- InstanceBeginEditable name="content" --> 
	<span class="PageName"> !! -- login.jsp</span>
      <table width="750" height="400" border="0" cellpadding="0" cellspacing="0"> 
        <tr> 
          <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0" align="center"> 
              <tr> 
                <td>
                  <table width="747" border="0" cellpadding="0" cellspacing="0" bordercolor="#666666"> 
                    <tr align="center" valign="top">
                      <td colspan="3"><span class="errormsg">
                        <img src="../../../images/spacer.gif" width="1" height="1">
                        <webbase:errorData dataType='ErrorMsg'/>
                      </span></td>
                    </tr>
                    <tr valign="top"> 
                      <td width="250">
					    <table width="100%" border="0" cellspacing="0" cellpadding="5"> 
                          <tr> 
                            <td valign="top"><span class="heading">Start Building My Ad</span> 
                              <p>You can skip the account creation and begin
                                placing your ad. Once you're happy with your
                                ad you can create an account or login at that
                                time.</span></p> 
                              <p><a href="javascript:document.LoginUser2.submit()" class="mainlinks">Begin
                                  creating your ad now!</a>
                                <webbase:userLogin dataType="fakeLogin" loginAsUser="latelogin" lateLoginFormName="LoginUser2"/> 
                            </p></td> 
                          </tr>
                          <tr>
                            <td valign="top"><span class="heading">Create an Account</span>
                              <p>Setup your account first then create your ad.</p>
                              <p> <a href="WebBaseMain.do?cmd=NewCustomer" class="mainlinks">Create
                            a new account now </a>. </p></td>
                          </tr> 
                        </table>
                      </td>
                      <td width="250"><form method="post" action="WebBaseMain.do" name="LoginUser"> 
                          <table width="100%" border="0" cellspacing="0" cellpadding="5"> 
                            <tr> 
                              <td colspan="2"><span class="heading">Login</span>
                                <p>Enter your username and password. If you don't
                                  have a username and password, you can <a href="WebBaseMain.do?cmd=NewCustomer" class="mainlinks">create a new account</a>.</p></td> 
                            </tr> 
                            <tr> 
                              <td colspan="2">
                                <webbase:errorData dataType='ErrorURL' nextURL='/jsp/login.jsp'/></td> 
                            </tr> 
                            <tr> 
                              <td width="68" class="mattrlabeltext">Name: </td> 
                              <td width="162"><webbase:userLogin dataType="userName"/></td> 
                            </tr> 
                            <tr> 
                              <td class="mattrlabeltext">Password:</td> 
                              <td><webbase:userLogin dataType="userPassword"/></td> 
                            </tr> 
                            <tr> 
                              <td>&nbsp;</td> 
                              <td><input name="imageField" type="image" src="../../../images/navigation/login.gif" alt="Click To Log In" width="49" height="17" border="0"></td> 
                            </tr> 
                            <tr> 
                              <td>&nbsp;</td> 
                              <td> 
                                <webbase:formHelper dataType="formList"/> 
                                <webbase:formHelper dataType="FormValidate"/> 
                              </td> 
                            </tr> 
                            <tr> 
                              <td colspan="2">Forget your
                                  password? Use our <a href="WebBaseMain.do?cmd=EmailPassword" class="mainlinks">Password
                                  Lookup</a>.</td> 
                            </tr> 
                          </table> 
                        </form></td> 
                      <td width="250">
					    <form name="SoftLogin" method="post" action="WebBaseMain.do" class="nomargin">
					      <table width="100%"  border="0" cellspacing="0" cellpadding="5">
                            <tr>
                              <td colspan="2"><span class="heading">Soft Login</span>
							    <p>Enter last name and phone number. Entereing address will help to
								narrow our search down.
							      <webbase:errorData dataType='ErrorURL' nextURL='/jsp/login.jsp'/>
							    </p>
							  </td>
                            </tr>
                            <tr>
                              <td width="37%" class="mattrlabeltext">Last Name: </td>
                              <td width="63%"><webbase:userLogin dataType="customerLastName"/> </td>
                            </tr>
                            <tr>
                              <td class="mattrlabeltext">Phone Number:</td>
                              <td><webbase:userLogin dataType="customerTelephone"/>
                                <br>
                                xxxxxxxxxx</td>
                            </tr>
                            <tr>
                              <td class="mattrlabeltext">Address:</td>
                              <td><webbase:userLogin dataType="customerAddress"/></td>
                            </tr>
                            <tr>
                              <td>&nbsp;</td>
                              <td>
							    <webbase:formHelper dataType="submitButton" label="Login" name="questionableLogin" nextURL="/jsp/SetAdType.jsp">
								  <img src="../../../images/navigation/login.gif" width="49" height="17" border="0" alt="Login">
								</webbase:formHelper> 
                                <webbase:formHelper dataType="formList"/>
                                <webbase:formHelper dataType="FormValidate"/>
							  </td>
                            </tr>
                            <tr>
                              <td>&nbsp;</td>
                              <td>&nbsp;</td>
                            </tr>
                          </table>
					    </form>
						<form name="SecretQuestion" method="post" action="WebBaseMain.do" class="nomargin">
						  <table width="250" border="0" cellspacing="0" cellpadding="5">
						    <tr>
						      <td>
							    <span class="heading">Secret Question</span>
							    <p>Enter your username and answer your question. </p>
							    <webbase:userLogin dataType="userName"/>
                                <br>
                                <webbase:userLogin dataType="alterLogin"/>
                                <webbase:formHelper dataType="formList"/>
                                <webbase:formHelper dataType="FormValidate"/>
						      </td>
						    </tr>
						  </table>
                        </form>
					  </td> 
                    </tr> 
                  </table></td> 
              </tr> 
            </table></td> 
        </tr> 
      </table> 
      <!-- InstanceEndEditable --></td>
  </tr>
  <tr>
    <td><%@ include file="../includes/footer.htm"%></td>
  </tr>
</table>
</body>
<!-- InstanceEnd --></html>
