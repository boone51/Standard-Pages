<%@ taglib uri="/Mactive/WebBaseTags" prefix="webbase" %>
<webbase:webbasePageSetup securePage="no"/>
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
      <table width="100%" height="400" border="0" cellpadding="0" cellspacing="0"> 
        <tr> 
          <td align="center">
		    <font face="Arial, Helvetica, sans-serif" size="4" color="#FF0000"> 
              <webbase:errorData dataType='ErrorMsg'/> 
              <webbase:errorData dataType='ErrorURL' nextURL='AccessDenied.jsp'/> <br>
              Please Try again. <br>
			  <br>
			</font>
		  </td> 
        </tr> 
        <tr> 
          <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0" align="center"> 
              <tr> 
                <td valign="top" align="center"> <form method="post" action="WebBaseMain.do" name="LoginUser"> 
                    <table width="300" border="0" cellspacing="0" cellpadding="0"> 
                      <tr> 
                        <td><table width="300" border="0" cellpadding="2" cellspacing="0" > 
                            <tr> 
                              <td colspan="3" class="mgroupheadercell"><span align="left" class="mgroupname">USER
                                  LOGIN </span>&nbsp;</td> 
                            </tr> 
                            <tr> 
                              <td width="94" class="mattrlabelcell">Name:</td> 
                              <td width="67"><font face="Arial, Helvetica, sans-serif" size="2"> 
                                <webbase:userLogin dataType="userName"/> 
                                </font></td> 
                              <td width="127">&nbsp;</td> 
                            </tr> 
                            <tr> 
                              <td class="mattrlabelcell">Password:</td> 
                              <td><font face="Arial, Helvetica, sans-serif" size="2"> 
                                <webbase:userLogin dataType="userPassword"/> 
                                </font></td> 
                              <td>&nbsp;</td> 
                            </tr> 
                            <tr> 
                              <td>&nbsp;</td> 
                              <td align="right"><input name="imageField" type="image" src="../../../images/navigation/login.gif" alt="Click To Log In" width="49" height="17" border="0"> 
                                <input type="hidden" name="FormType" value="LoginUser"></td> 
                              <td align="center">&nbsp;</td> 
                            </tr> 
                            <tr> 
                              <td>&nbsp;</td> 
                              <td colspan="2" align="center">&nbsp;</td> 
                            </tr> 
                          </table></td> 
                      </tr> 
                      <tr> 
                        <td><span class="standard">Forget your password? Use
                            our <a href="WebBaseMain.do?cmd=EmailPassword"> Password
                            Lookup </a>. 
                          <webbase:formHelper dataType="formList"/> 
                          </span></td> 
                      </tr> 
                      <tr> 
                        <td>&nbsp;</td> 
                      </tr> 
                      <tr> 
                        <td><span class="standard">Create a <a href="WebBaseMain.do?cmd=NewCustomer">new
                              account </a></span></td> 
                      </tr> 
                    </table> 
                    <br>
					<br>
					<br>
                  </form></td> 
              </tr> 
            </table>
            <script language="JavaScript">
	  if(document.forms[0].userName){
	    document.forms[0].userName.focus();
	  }
	  </script></td> 
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
