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
  if (self != window.top) top.location.href=self.location.href;
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
      <span class="PageName"> !! -- AnswerQuestions.jsp</span>
	  <form method="post" action="WebBaseMain.do" name="editAd"> 
        <webbase:errorData dataType='ErrorMsg'/> 
        <webbase:errorData dataType='ErrorURL' nextURL='/jsp/AnswerQuestions.jsp'/>     
		<webbase:mactiveAction dataType="UpdateData" dataValue=""/>
		<table width="400" border="0" align="center" cellpadding="0" cellspacing="0" class="navborder"> 
          <tr align="left"> 
            <td colspan="4" class="heading">Review Ad Text and Add Graphics</td> 
          </tr> 
          <tr align="center">
            <td colspan="4">&nbsp;</td>
          </tr>
          <tr> 
            <td colspan="2"><br>
            Your selected Ad Category is:  <span class="mgroupname">
              <webbase:adData dataType='AdCategory' showCategoryName='false' showCategoryDescription='true' categoryTextSeparator=':'/> 
              </span><br>            </td> 
          </tr> 
		  <tr>
            <td colspan="2">&nbsp;</td>
          </tr>
<%--first day logo code
			<tr>
              <td colspan="2" class="mgroupname">First Day Logos</td>
            </tr>
			<tr>
              <td colspan="2" class="mgroupname"><webbase:orderData dataType="TemporaryStore" /><webbase:Image dataType="AutoGraphic" imageFilter="FirstRunLogos" numColumns="3"/></td>
            </tr>
			<tr>
              <td colspan="2" class="mgroupname">&nbsp;</td>
            </tr>
			--%>
			
            <%-- AdBase Upload Image  --%>
			 <webbase:showIf expression="allowPhotoUpload">    
				  
				  <!-- if a photo has not been uploaded yet -->
				  <webbase:showIf expression="!isOnlinePhotoUploaded">
					<tr>
					  <td colspan="2" class="mgroupname">Upload Photos</td>
					</tr>
					<tr>
					  <td colspan="2" class="mgroupname"><a href="WebBaseMain.do?NextURL=/jsp/SetAdbaseImage.jsp">Click to upload photos</a></td>
					</tr>
					<tr>
					  <td colspan="2" class="mgroupname">&nbsp;</td>
					</tr>
				  </webbase:showIf>
				  
				  <!-- if online photos were uploaded, display photos -->
				  <webbase:showIf expression="isOnlinePhotoUploaded">
					<tr>
					  <td colspan="2" class="mgroupname">Uploaded Photos</td>
					</tr>
					<tr>
					  <td colspan="2" class="mgroupname"><webbase:uploadImage dataType="thumbNails" numColumns="4" thumbnailSize="100" displayOnly="true"/></td>
					</tr>
					<tr>
					  <td colspan="2" class="mgroupname"><a href="WebBaseMain.do?NextURL=/jsp/SetAdbaseImage.jsp">Click to change photos</a></td>
					</tr>
					<tr>
					  <td colspan="2" class="mgroupname">&nbsp;</td>
					</tr>
				  </webbase:showIf>

			</webbase:showIf>
           
            
			<%-- Photo Upload for AdPay 
			  <!-- Is photo upload allowed? Based on active:true -->
				<webbase:showIf expression="allowPhotoUpload">
				  
				  <!-- if a photo has not been uploaded yet -->
				  <webbase:showIf expression="!isOnlinePhotoUploaded">
					<tr>
					  <td colspan="2" class="mgroupname">Upload Photos</td>
					</tr>
					<tr>
					  <td colspan="2" class="mgroupname"><a href="WebBaseMain.do?NextURL=/jsp/AdPay.jsp">Click to upload photos</a></td>
					</tr>
					<tr>
					  <td colspan="2" class="mgroupname">&nbsp;</td>
					</tr>
				  </webbase:showIf>
				  
				  <!-- if online photos were uploaded, display photos -->
				  <webbase:showIf expression="isOnlinePhotoUploaded">
					<tr>
					  <td colspan="2" class="mgroupname">Uploaded Photos</td>
					</tr>
					<tr>
					  <td colspan="2" class="mgroupname"><webbase:AdPay dataType="PreviewWebPhotos" /></td>
					</tr>
					<tr>
					  <td colspan="2" class="mgroupname"><a href="WebBaseMain.do?NextURL=/jsp/AdPay.jsp">Click to change photos</a></td>
					</tr>
					<tr>
					  <td colspan="2" class="mgroupname">&nbsp;</td>
					</tr>
				  </webbase:showIf>
			</webbase:showIf>
			--%>
			
			<%-- Photo Upload for Ipix 
			  <!-- Is photo upload allowed? Based on active:true -->
				<webbase:showIf expression="allowPhotoUpload">
				  
				  <!-- if a photo has not been uploaded yet -->
				  <webbase:showIf expression="!isOnlinePhotoUploaded">
					<tr>
					  <td colspan="2" class="mgroupname">Upload Photos</td>
					</tr>
					<tr>
					  <td colspan="2" class="mgroupname"><a href="WebBaseMain.do?NextURL=/jsp/SetIpixImage.jsp">Click to upload photos</a></td>
					</tr>
					<tr>
					  <td colspan="2" class="mgroupname">&nbsp;</td>
					</tr>
				  </webbase:showIf>
				  
				  <!-- if online photos were uploaded, display photos -->
				  <webbase:showIf expression="isOnlinePhotoUploaded">
					<tr>
					  <td colspan="2" class="mgroupname">Uploaded Photos</td>
					</tr>
					<tr>
					  <td colspan="2" class="mgroupname"><webbase:Ipix dataType="PreviewWebPhotos" heightDV="100" widthDV="100" modeDV="FitPad" numColumns="3"/></td>
					</tr>
					<tr>
					  <td colspan="2" class="mgroupname"><a href="WebBaseMain.do?NextURL=/jsp/SetIpixImage.jsp">Click to change photos</a></td>
					</tr>
					<tr>
					  <td colspan="2" class="mgroupname">&nbsp;</td>
					</tr>
				  </webbase:showIf>
			</webbase:showIf>
		--%>
<!---->
          <tr> 
            <td colspan="4">
			
			<webbase:TemplateQuestions showJTEs="false" filterQuestionsByLayout="false" headerString="" bodyString="" footerString=""/>
			</td> 
          </tr> 
          <tr> 
            <td align="center">&nbsp;</td> 
            <td align="center">&nbsp;</td> 
          </tr> 
          <tr> 
            <td width="50%" align="center">
			 <webbase:formHelper dataType="cancelButton" label="Back" name="GoBack" nextURL="/jsp/SetMerchandiseAttributes.jsp"> 
                  <img src="../../../images/navigation/previous.gif" width="70" height="18" border="0"> 
                </webbase:formHelper>
            </td> 
            <td align="center">
			  <!-- if package input is required, go to the scheduling page -->
			    <webbase:showIf expression="anyPackageUserInputRequired">
				  <webbase:showIf expression="!allPackageUserInputComplete">
					<webbase:formHelper dataType="submitButton" label="Continue" nextURL="/jsp/GetPackageInformation.jsp">
					  <img src="../../../images/navigation/continue.gif" width="70" height="17"> 
					</webbase:formHelper>
				  </webbase:showIf>
				  <webbase:showIf expression="allPackageUserInputComplete">
					<webbase:formHelper dataType="submitButton" label="Continue" nextURL="/jsp/GetPackageInformation.jsp">
					  <img src="../../../images/navigation/continue.gif" width="70" height="17"> 
					</webbase:formHelper>
				  </webbase:showIf>
			    </webbase:showIf>
				
				<!-- if no user input is required, go to the preview ad page. -->
			    <webbase:showIf expression="!anyPackageUserInputRequired">
			      <webbase:formHelper dataType="submitButton" label="Continue" nextURL="/jsp/PreviewAds.jsp">
                    <img src="../../../images/navigation/continue.gif" width="70" height="17"> 
                  </webbase:formHelper>
			    </webbase:showIf>
            </td> 
          </tr> 
          <tr> 
            <td colspan="4">&nbsp;</td> 
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
