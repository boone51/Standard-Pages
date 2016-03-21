<%@ taglib uri="/Mactive/WebBaseTags" prefix="webbase" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html><!-- InstanceBegin template="/Templates/withmenu.dwt" codeOutsideHTMLIsLocked="false" -->
<head>
<title>AdBaseE</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link href="allstyles.css" rel="stylesheet" type="text/css">


<!-- InstanceBeginEditable name="JavaScript" -->
<script language="javascript">

</script>
<!-- InstanceEndEditable -->
<script language="javascript">
function disableBack(){
  history.go(1);
}
disableBack();
</script>

</head>

<body onLoad="disableBack()" class="standard">
<table width="750" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td colspan="2"><%@ include file="../includes/header.htm"%></td>
  </tr>
  <tr>
    <td width="150" valign="top"><!-- InstanceBeginEditable name="options" --><%@ include file="../includes/leftSide.htm"%><!-- InstanceEndEditable --></td>
	<td width="600" valign="top"><!-- InstanceBeginEditable name="content" --> 
       <span class="PageName"> !! -- SignIn.jsp</span>
                  <form name="LoginUser" method="post" action="WebBaseMain.do">
                            <table width="268" border="0" align="center">
                                      <tr align="center" valign="top">
                                        <td colspan="2" nowrap class="errormsg"><webbase:errorData dataType='ErrorMsg'/>
                                          <webbase:errorData dataType='ErrorURL' nextURL='/jsp/SignIn.jsp'/></td>
                                      </tr>
                                      <tr valign="top">
                                        <td colspan="2" nowrap class="heading">Sign In </td>
                                      </tr>
                                      <tr valign="top">
                                        <td colspan="2" nowrap>&nbsp;</td>
                                      </tr>
                                      <tr valign="top">
                                        <td width="84" nowrap>User
                                            Name:</td>
                                        <td width="174">
                                          <webbase:userLogin dataType="userName"/>                                        </td>
                                      </tr>
                                      <tr valign="top">
                                        <td nowrap>Password</td>
                                        <td>
                                          <webbase:userLogin dataType="userPassword"/>
                                          <webbase:userLogin dataType="lateLogin"/>                                        </td>
                                      </tr>
                                      <tr valign="top">
                                        <td nowrap>&nbsp;</td>
                                        <td><webbase:formHelper dataType="submitButton" label="Login" name="lateLogin" nextURL="/jsp/SignInLanding.jsp">
                                          <img src="../../../images/navigation/login.gif" width="49" height="17" border="0" alt="Back">
                                          </webbase:formHelper> 
                                          <webbase:formHelper dataType="formList"/>
                                          <webbase:formHelper dataType="FormValidate"/></td>
                                      </tr>
                                      <tr valign="top">
                                        <td nowrap>&nbsp;</td>
                                        <td>&nbsp;</td>
                                      </tr>
                                      <tr valign="top">
                                        <td colspan="2" nowrap>Or create a <a href="WebBaseMain.do?cmd=NewCustomerLL">new
                                          account</a>. </td>
                                      </tr>
                                      <tr valign="top">
                                        <td colspan="2" nowrap>&nbsp;</td>
                                      </tr>
                                      <tr valign="top">
                                        <td colspan="2" nowrap>Forget your
                                  password? Use our <a href="WebBaseMain.do?NextURL=/jsp/emailpasswordLL.jsp" class="mainlinks">Password
                                  Lookup</a>.</td>
                                      </tr>
                    </table>
                  </form>
    <!-- InstanceEndEditable --></td>
  </tr>
  <tr>
    <td colspan="2"><%@ include file="../includes/footer.htm"%></td>
  </tr>
</table>
</body>
<!-- InstanceEnd --></html>
