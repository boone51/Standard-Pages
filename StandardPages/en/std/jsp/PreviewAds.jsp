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
    <td width="150" valign="top"><!-- InstanceBeginEditable name="options" --><%@ include file="../includes/leftSide.htm"%><!-- InstanceEndEditable --></td>
	<td width="600" valign="top"><!-- InstanceBeginEditable name="content" --> 
	<span class="PageName"> !! -- PreviewAds.jsp</span>
	<webbase:mactiveAction dataType="UpdateData" dataValue=""/>
	  <webbase:showIf expression="!allPackageAdsComplete">
	    <webbase:showIf expression="adIsPartOfPackage">
          <webbase:showIf expression="allPackageUserInputComplete">
              <webbase:mactiveAction dataType="GeneratePackageAdPreviews" dataValue=""/> 
          </webbase:showIf>
        </webbase:showIf>
	  </webbase:showIf>
	  <webbase:showIf expression="allPackageAdsComplete">
	    <webbase:mactiveAction dataType="UpdateData" dataValue=""/>
		<webbase:mactiveAction dataType="RunCommand" dataValue="<DoAction action='GenerateAd'/>"/>
s			<webbase:mactiveAction dataType="UpdateData" dataValue=""/>
	  </webbase:showIf>
      <form method="post" action="WebBaseMain.do" name="merchattributes"> 
	<%-- Updates the fielded data upon submitting this page --%>
	<webbase:orderData dataType="UpdateFieldedData" />
        <webbase:errorData dataType='ErrorMsg'/> 
        <webbase:errorData dataType='ErrorURL' nextURL='/jsp/PreviewAds.jsp'/> 
        <table width="400" border="0" align="center" cellpadding="0" cellspacing="0" class="navborder"> 
          <tr> 
            <td colspan="2" class="heading">View and Edit Ad(s) </td> 
          </tr> 
          <tr align="center">
            <td height="30" colspan="2">You may edit individual ads and change
              styles by<br> 
              clicking the edit button below the ad. </td>
          </tr>
          <tr align="center"> 
            <td height="30" colspan="2">            Your selected Ad Category is:  <br>
              <span class="mgroupname">
              <webbase:adData dataType='AdCategory' showCategoryName='false' showCategoryDescription='true' categoryTextSeparator=':'/> 
            </span>            </td> 
          </tr> 
          <tr> 
            <td colspan="2"><table width="100%"  border="0" cellspacing="0" cellpadding="2">
              
              
              <tr>
                <td width="50%">&nbsp;</td>
                <td align="center"><a href="WebBaseMain.do?NextURL=/jsp/SetPackage.jsp"> 
              <img src="../../../images/navigation/changepackage.gif" width="115" height="17" border="0"> 
              </a></td>
              </tr>
			  
              <tr>
                <td colspan="2"><span class="mgroupname">Ad Cost</span></td>
              </tr>
			  <tr>
                <td colspan="2"><webbase:orderData dataType="Total Price"/></td>
              </tr>

<%-- AdPay show uploaded images
<webbase:showIf expression="isOnlinePhotoUploaded">
  		  <tr>
                <td colspan="2">&nbsp;</td>
              </tr>
              <tr>
                <td colspan="2"><span class="mgroupname">Uploaded Photos</span></td>
              </tr>
		  <tr>
                <td colspan="2"><webbase:AdPay dataType="PreviewWebPhotos" /></td>
              </tr>
</webbase:showIf>
 --%>
			  <tr>
                <td colspan="2">&nbsp;</td>
              </tr>
			  <webbase:adIt>
              <tr>
                <td colspan="2"><span class="mgroupname">Ad Preview</span></td>
                </tr>
              <tr>
                <td colspan="2"><table width="100%"  border="1" cellspacing="0" cellpadding="4">
                  
                  <tr>
                    <td>The preview below is how your ad will appear in the following
                      product(s):<br>
					  <webbase:runScheduleIt> &#8226;<webbase:RSDetail dataType="Product"/></webbase:runScheduleIt></td>
                  </tr>
                  <tr>
                    <td><webbase:adData dataType="ImagePreviewAllVersions"/></td>
                  </tr>
                </table></td>
                </tr>
              <tr align="center">
                <td colspan="2"><webbase:adData dataType="EditAdButton" label="EditAd" nextURL="/jsp/EditAd.jsp"><img src="../../../images/navigation/editad.gif" width="61" height="17" border="0"></webbase:adData></td>
              </tr>
              <tr>
                <td colspan="2"><span>Ad Information</span></td>
                </tr>
              <tr>
                <td colspan="2">Ad Depth: <webbase:adData dataType="AdDepthInUnits"/>            <br>                  <br>
                  Run Schedule Information<br>

                      <span>(NOTE: Click the plus and minus buttons to see a list the individual
                      days) </span><br>
			        </p>
                  <webbase:runScheduleIt><webbase:RSDetail dataType="DateRangeBegin" plus="../../../images/plus.gif" minus="../../../images/minus.gif"/>
                              <webbase:RSDetail dataType="NumInserts"/> 
                              day(s) starting
                              <webbase:RSDetail dataType="Fday"/> 
                              in
                              <webbase:RSDetail dataType="ProductDescription"/> <webbase:RSDetail dataType="DateRangeEnd"/> 
                              <br> 
                  </webbase:runScheduleIt> </td>
                </tr>
              <tr>
                <td>&nbsp;</td>
                <td width="50%"> </td>
                </tr></webbase:adIt>
            </table></td>
          </tr> 
		  
          <tr> 
            <td width="50%" align="center"><webbase:formHelper dataType="cancelButton" label="Back" name="GoBack" nextURL="/jsp/GetPackageInformation.jsp"> 
                <img src="../../../images/navigation/previous.gif" width="70" height="17" border="0"> 
                </webbase:formHelper></td> 
            <td align="center">
			  <webbase:showIf expression="!isFakeCustomerLoggedIn">
			    <webbase:formHelper dataType="submitButton" label="Continue" nextURL="/jsp/ReviewOrder.jsp"> 
                  <img src="../../../images/navigation/checkout.gif" width="80" height="17"> 
                </webbase:formHelper>
			  </webbase:showIf>
			  
			  <webbase:showIf expression="isFakeCustomerLoggedIn">
			    <webbase:formHelper dataType="submitButton" label="Continue" nextURL="/jsp/SignIn.jsp"> 
                  <img src="../../../images/navigation/checkout.gif" width="80" height="17"> 
                </webbase:formHelper>
			  </webbase:showIf>
			  </td>
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
