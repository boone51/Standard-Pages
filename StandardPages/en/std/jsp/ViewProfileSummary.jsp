<%@ taglib uri="/Mactive/WebBaseTags" prefix="webbase" %>
<webbase:webbasePageSetup securePage="no" noLoginRedirectURL="WebBaseMain.do"/>
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
    <td width="150" valign="top"><!-- InstanceBeginEditable name="options" --><%@ include file="../includes/leftSideOptions.htm"%><!-- InstanceEndEditable --></td>
	<td width="600" valign="top"><!-- InstanceBeginEditable name="content" --> 
      <span class="PageName"> !! -- ViewProfileSummary.jsp</span>
	  <webbase:mactiveAction dataType="UpdateData" dataValue=""/>
	  <form method="post" action="WebBaseMain.do" name="myaccount"> 
        <table width="450" border="0" align="center" cellpadding="2" cellspacing="0" > 
          <tr>
            <td colspan="2" class="errormsg" ><webbase:errorData dataType='ErrorMsg'/>
            <webbase:errorData dataType='ErrorURL' nextURL='/jsp/ViewProfileSummary.jsp'/></td>
          </tr>
          <tr> 
            <td colspan="2" class="heading" >Profile Information</td> 
          </tr>
          <tr>
            <td colspan="2">&nbsp;</td>
          </tr>
          <tr> 
            <td colspan="2" class="mgroupname">Personal Information</td> 
          </tr> 
          <tr>
            <td colspan="2">&nbsp;</td>
          </tr>
          <tr>
            <td width="100" nowrap>Account Number:</td>
            <td><webbase:customerData dataType="Accno" dataSource="U"/></td>
          </tr>
          <tr> 
            <td>Name:</td> 
            <td><webbase:customerData dataType="FullName" dataSource="U"/></td>
          </tr> 
          <tr> 
            <td>Address:</td> 
            <td><webbase:customerData dataType="AddrStreet1" dataSource="U"/></td>
          </tr> 
		  <tr> 
            <td>Address 2:</td> 
            <td><webbase:customerData dataType="AddrStreet2" dataSource="U"/></td>
          </tr> 
		  <tr> 
            <td>Address 3:</td> 
            <td><webbase:customerData dataType="AddrStreet3" dataSource="U"/></td>
          </tr> 
		  <tr> 
            <td>City:</td> 
            <td><webbase:customerData dataType="AddrCity" dataSource="U"/></td>
          </tr> 
		  <tr> 
            <td>State:</td> 
            <td><webbase:customerData dataType="AddrState" dataSource="U"/></td>
          </tr> 
		  <tr> 
            <td>Zip:</td> 
            <td><webbase:customerData dataType="AddrZip1" dataSource="U"/></td>
          </tr> 
		  <tr> 
            <td>Country:</td> 
            <td><webbase:customerData dataType="AddrCountry" dataSource="U"/></td>
          </tr> 
          <tr> 
            <td>Phone: </td><td>(<webbase:customerData dataType="PhoneAC" dataSource="U"/>) <webbase:customerData dataType="Phone3" dataSource="U"/>-<webbase:customerData dataType="Phone4" dataSource="U"/> Ext. <webbase:customerData dataType="Phonex" dataSource="U"/></td> 
          </tr> 
          <tr> 
            <td>Secondary Phone: </td><td>(<webbase:customerData dataType="SecPhoneAC" dataSource="U"/>) <webbase:customerData dataType="SecPhone3" dataSource="U"/>-<webbase:customerData dataType="SecPhone4" dataSource="U"/> Ext. <webbase:customerData dataType="SecPhonex" dataSource="U"/></td> 
          </tr> 
          <tr> 
            <td>Email:</td> 
            <td><webbase:customerData dataType="Email" dataSource="U"/></td>
          </tr> 
          <tr>
            <td colspan="2" align="center">&nbsp;</td>
          </tr>
          <tr> 
            <td colspan="2" align="center"><a href="WebBaseMain.do?NextURL=/jsp/editaccount.jsp"><img src="../../../images/navigation/editaccount.gif" width="99" height="17" border="0"></a></td> 
          </tr> 
          <tr> 
            <td colspan="2">&nbsp;</td> 
          </tr> 
          <tr> 
            <td colspan="2" class="mgroupname">Credit Cards on File</td> 
          </tr> 
          <tr>
            <td colspan="2" align="center"><a href="WebBaseMain.do?NextURL=/jsp/AddCreditCard.jsp&urlaction=push"><img src="../../../images/navigation/addcreditcard.gif" width="115" height="17" border="0"></a></td>
          </tr>
		  <webbase:CCardIt> 
          <tr>
            <td colspan="2">&nbsp;</td>
          </tr>
          <tr>
            <td colspan="2" class="mgroupname">&nbsp;</td>
          </tr>
          <tr> 
            <td>&nbsp;</td> 
            <td><webbase:CCardData dataType="CardKind"/></td>
          </tr> 
          <tr> 
            <td>&nbsp;</td> 
            <td><webbase:CCardData dataType="CardNum"/></td>
          </tr> 
          <tr> 
            <td>&nbsp;</td> 
            <td>Expires:
            <webbase:CCardData dataType="ExpDate"/></td>
          </tr> 
          <tr> 
            <td colspan="2" class="mgroupname">&nbsp;</td> 
          </tr> 
          <tr> 
            <td width="88">&nbsp;</td> 
            <td width="354"><webbase:CCardData dataType="Name"/></td>
          </tr> 
          <tr> 
            <td>&nbsp;</td> 
            <td><webbase:CCardData dataType="Addr1"/></td>
          </tr> 
          <tr> 
            <td>&nbsp;</td> 
            <td><webbase:CCardData dataType="City"/>
              ,
                <webbase:CCardData dataType="State"/>
                <webbase:CCardData dataType="Zip"/></td>
          </tr> 
          <tr> 
            <td>&nbsp;</td> 
            <td><webbase:CCardData dataType="Phone"/></td>
          </tr> 
          <tr><td colspan="2"></webbase:CCardIt> 
           <tr>
             <td colspan="2" align="center">&nbsp;</td>
           </tr>
           <tr> 
            <td colspan="2" align="center">&nbsp;</td> 
          </tr> 
          <tr> 
            <td colspan="2">&nbsp;</td> 
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
