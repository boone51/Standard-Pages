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
      <span class="PageName"> !! -- ViewExistingOrder.jsp</span>
	  <form name="ViewOrders" method="post" action="WebBaseMain.do"> 
        <table width="450" border="0" align="center" cellpadding="0" cellspacing="0" >
          <tr>
            <td colspan="3" class="heading" >Current Orders</td>
          </tr>
          <tr>
            <td colspan="3" align="center">&nbsp;</td>
          </tr>
          
          <tr>
            <td colspan="3" valign="top">&nbsp;</td>
          </tr>
          <tr>
            <td width="275" valign="top"><table width="100%" border="0" cellpadding="0" cellspacing="2">
                <tr>
                  <td class="mattrlabeltext">Order Status:</td>
                </tr>
                <tr>
                  <td class="standard12px"><webbase:orderData dataType="Order Status"/></td>
                </tr>
                <tr>
                  <td class="mattrlabeltext">Order Confirmation Number:</td>
                </tr>
                <tr>
                  <td class="standard12px"><webbase:orderData dataType="Order Number" /></td>
                </tr>
                <tr>
                  <td class="mattrlabeltext">Ad Type:</td>
                </tr>
                <tr>
                  <td class="standard12px"><webbase:adData dataType="AdType"/></td>
                </tr>
                <tr>
                  <td class="mattrlabeltext">Number of Lines:</td>
                </tr>
                <tr>
                  <td class="standard12px"><webbase:adData  dataType="AdDepthInUnits"/></td>
                </tr>
                <tr>
                  <td class="mattrlabeltext">Run Schedule:</td>
                </tr>
                <tr>
                  <td nowrap class="standard12px"><webbase:runScheduleIt>
                      <webbase:RSDetail dataType="NumInserts"/>
            day(s) beginning on
            <webbase:RSDetail dataType="Fday"/>
            in
            <webbase:RSDetail dataType="Product"/>
            <br>
                  </webbase:runScheduleIt>                  </td>
                </tr>
                <tr>
                  <td class="mattrlabeltext">Total Price:</td>
                </tr>
                <tr>
                  <td class="standard12px"><webbase:orderData dataType="Total Price"/></td>
                </tr>
            </table></td>
            <td width="175" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td width="10"> <img src="../../../images/spacer.gif" width="10" height="8"> </td>
                  <td align="center"><span class="mattrlabeltext">Ad Preview
                  </span>                    <table width="20" border="1" align="center" cellpadding="2" cellspacing="2"> 
                      <tr> 
                        <td><webbase:adData dataType="ImagePreview"/></td> 
                      </tr> 
	
	
					  
					  <%-- Show Media Loader Images 
	      <!-- if online photos were uploaded, display photos -->
		<webbase:showIf expression="isOnlinePhotoUploaded">
		  <tr>
		    <td class="mgroupname">Uploaded Photos</td>
		  </tr>
		  <tr>
		    <td class="mgroupname"><webbase:uploadImage dataType="thumbNails" numColumns="4" thumbnailSize="100" displayOnly="true"/></td>
		  </tr>
		  <tr>
		    <td class="mgroupname">&nbsp;</td>
		  </tr>
		</webbase:showIf> --%>
					  
                  </table></td>
                  <td width="10"><img src="../../../images/spacer.gif" width="10" height="8"></td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td align="center">
			<br>
			<webbase:showIf expression="!isCurrentOrderKilled">
			    <webbase:orderData dataType="KillOrderBtn" label="Kill Order" nextURL="/jsp/ViewCurrentOrders.jsp">
                  		<img src="../../../images/navigation/cancelthisad.gif" width="115" height="17">
                	    </webbase:orderData>
			</webbase:showIf>
		  </td>
                  <td>&nbsp;</td>
                </tr>
		<tr>
		  <td>&nbsp;</td>
		  <td align="center">
			<br>
			<webbase:showIf expression="adInEditMode">
				Click below to edit your ad!
				<webbase:adData dataType="EditAdButton" label="Edit Ad" nextURL="/jsp/EditAd.jsp">
					<img src="../../../images/navigation/editad.gif" border="0">
				</webbase:adData> 
			</webbase:showIf>
		  </td>
		  <td>&nbsp;</td>
		</tr>
            </table></td>
          </tr>
          <tr>
            <td colspan="3" align="right" valign="top">&nbsp;</td>
          </tr>
          <tr>
            <td align="center" valign="top"><a href="WebBaseMain.do?NextURL=/jsp/ViewCurrentOrders.jsp"><img src="../../../images/navigation/back.gif" width="49" height="17" border="0"></a></td>
            <td colspan="2" align="right" valign="top">&nbsp;</td>
          </tr>
        </table>
        <webbase:formHelper dataType="formList"/>
        <webbase:formHelper dataType="FormValidate"/>
      </form> 
      <!-- InstanceEndEditable --></td>
  </tr>
  <tr>
    <td colspan="2"><%@ include file="../includes/footer.htm"%></td>
  </tr>
</table>
</body>
<!-- InstanceEnd --></html>
