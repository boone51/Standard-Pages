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
      <span class="PageName"> !! -- ReviewOrder.jsp</span>
	  <webbase:mactiveAction dataType="RunCommand" dataValue="<DoAction action='GenerateAd'/>"/> 
	  <webbase:mactiveAction dataType="UpdateData" dataValue=""/> 
	  <form name="ReviewOrder" method="post" action="WebBaseMain.do"> 
	  <%-- <webbase:adData dataType="TemplateValidation"/> --%>
      <webbase:errorData dataType="ErrorURL" nextURL="/jsp/ReviewOrder.jsp"/>
        <div align="center">
          <font color="#CC0000" size="3"><b> <webbase:errorData dataType="ErrorMsg"/> </b></font><br> 
		  <table width="400" border="0" cellpadding="0" cellspacing="0" class="navborder"> 
            <tr align="left"> 
              <td colspan="2" class="heading">Review
                Order</td> 
            </tr>
            <tr>
              <td colspan="2" valign="top">&nbsp;</td>
            </tr>
            <tr> 
              <td colspan="2">Your selected Ad Category
                is: <span class="mgroupname"><webbase:adData dataType='AdCategory' showCategoryName='false' showCategoryDescription='true' categoryTextSeparator=':'/></span></td> 
            </tr> 
			
			<tr>
              <td colspan="2" class="mgrouptable">&nbsp;</td>
            </tr>
			
			
            <tr>
              <td colspan="2" class="mgrouptable">&nbsp;</td>
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

		<%-- AdMission Images 
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
		--%>

		<%-- Show Media Loader Images --%>
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

            <tr class="bgcolor"> 
              <td colspan="2" valign="top" style="padding: 8px;"><table width="100%"  border="0" cellspacing="0" cellpadding="2">
			  <webbase:adIt>
              <tr>
                <td colspan="2" class="mgroupname">Ad Preview</td>
                </tr>
              <tr>
                <td colspan="2"><table width="100%"  border="1" cellspacing="0" cellpadding="4">
                  <tr>
                    <td><webbase:adData dataType="ImagePreviewAllVersions"/></td>
                  </tr>
                </table>
                <webbase:adData dataType="PDFPreview">View PDF preview of this ad.</webbase:adData>
                
                </td>
                </tr>
				


              <tr align="left">
                <td colspan="2" valign="top"><span class="mgroupname" style="font-weight: bold">Ad Information</span></td>
                </tr>
              <tr align="left">
                <td width="22%" valign="top" class="mattrlabeltext">Ad Type:</td>
                <td width="78%" valign="top" class="standard12px"><webbase:adData dataType="AdType"/></td>
              </tr>
              <tr align="left">
                <td valign="top" class="mattrlabeltext">Size:</td>
                <td valign="top" class="standard12px"><webbase:adData dataType="AdDepthInUnits"/></td>
              </tr>
              <tr align="left">
                <td valign="top" class="mattrlabeltext">Run Schedule: </td>
                <td valign="top" class="standard12px"><webbase:runScheduleIt><webbase:RSDetail dataType="DateRangeBegin" plus="../../../images/plus.gif" minus="../../../images/minus.gif"/>
                              <webbase:RSDetail dataType="NumInserts"/> 
                              day(s) starting
                              <webbase:RSDetail dataType="Fday"/> 
                              in
                              <webbase:RSDetail dataType="Product"/><br> 
                              <webbase:RSDetail dataType="DateRangeEnd"/> 
                    </webbase:runScheduleIt></td>
              </tr>
              <tr align="left">
                <td valign="top" class="mattrlabeltext">Price:</td>
                <td valign="top" class="standard12px"><webbase:adData dataType="AdPrice"/></td>
              </tr>
              </webbase:adIt>
            </table></td> 
              </tr> 
            <tr> 
              <td colspan="2" align="right" valign="top" class="mgrouptable">&nbsp;</td> 
            </tr> 
<!-- If customer is not in edit mode -->

		<webbase:showIf expression="!adInEditMode">
			<webbase:showIf expression="!isFakeCustomerLoggedIn" >
			  <webbase:showIf expression="!isAdOrderZeroCost" >
				<tr align="left">
				  <td colspan="2" ><span class="mgroupname">Credit Card: <webbase:adOrderPaymentInfo dataType="PayForCurrentOrder" editMode="1"/></span></td>
				</tr>
				<tr>
				 <td colspan="2"><span class="mgroupname">CCID: <webbase:adOrderPaymentInfo dataType="CreditCardSecurityNumber" editMode="1"/>
				 </td>
				</tr>
				<tr align="left">
				  <td colspan="2" align="center" ><a href="WebBaseMain.do?NextURL=/jsp/AddCreditCard.jsp&urlaction=push"><img src="../../../images/navigation/addcreditcard.gif" width="115" height="17" border="0"></a></td>
				</tr>
				<tr align="left">
				  <td colspan="2" >&nbsp;</td>
				</tr>
				<tr align="left">
				  <td colspan="2" >&nbsp;</td>
				</tr>
			  </webbase:showIf>
			</webbase:showIf>
		</webbase:showIf>

<!-- If customer is in edit mode -->
		<webbase:showIf expression="adInEditMode">
		  <webbase:showIf expression="!isFakeCustomerLoggedIn">
		    <webbase:showIf expression="!isAdOrderZeroCost">
			<webbase:showIf expression="orderHasBalanceDue">
				<tr align="left">
				  <td colspan="2" ><span class="mgroupname">Credit Card: <webbase:adOrderPaymentInfo dataType="PayForCurrentOrder" editMode="1"/></span></td>
				   
				</tr>
				<tr align="left">
				  <td colspan="2" >&nbsp;</td>
				</tr>
				<tr align="left">
				  <td colspan="2" >&nbsp;</td>
				</tr>
			</webbase:showIf>
			<webbase:showIf expression="orderRefundIsDue">
				<tr align="left">
				  <td colspan="2" >
				     <span class="mgroupname">
					Original Order Price: <webbase:orderData dataType="AdOrderPreEditCost"/><br>
					Your Refund: <webbase:orderData dataType="TotalOrderAmountDue"/>
				     </span>
				  </td> 
				</tr>
				<tr align="left">
				  <td colspan="2" >&nbsp;</td>
				</tr>
				<tr align="left">
				  <td colspan="2" >&nbsp;</td>
				</tr>
			</webbase:showIf>
		    </webbase:showIf>
		 </webbase:showIf>
	      </webbase:showIf>

            <tr> 
              <td colspan="2" valign="top"  style="padding: 8px;"><webbase:showIf expression="isFakeCustomerLoggedIn" ><table width="100%" border="0" cellspacing="0" cellpadding="0"> 
                  
                  <tr> 
                    <td width="33%">
					  <webbase:showIf expression="adIsPartOfPackage">
					    <webbase:formHelper dataType="cancelButton" label="Back" name="GoBack" nextURL="/jsp/PreviewAds.jsp"> 
                          <img src="../../../images/navigation/previous.gif" width="70" height="17" border="0" alt="Back"></webbase:formHelper>					 
						  </webbase:showIf>
					  
					  <webbase:showIf expression="!adIsPartOfPackage">
					    <webbase:formHelper dataType="cancelButton" label="Back" name="GoBack" nextURL="/jsp/AllOnePage.jsp"> 
                          <img src="../../../images/navigation/previous.gif" width="70" height="17" border="0" alt="Back">                        </webbase:formHelper>					  </webbase:showIf>					  </td> 
                    <td width="34%">&nbsp;</td> 
                    <td width="33%"><div align="right"><webbase:formHelper dataType="submitButton" label="Continue" name="SetLayout" nextURL="/jsp/SignIn.jsp"> 
                      <img src="../../../images/navigation/login.gif" width="49" height="17" border="0"> 
                      </webbase:formHelper></div></td>  
                  </tr> 
                </table>
                </webbase:showIf>
				<webbase:showIf expression="!isFakeCustomerLoggedIn" >
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr> 
                    <td width="33%">
					  <webbase:showIf expression="adIsPartOfPackage">
					    <webbase:formHelper dataType="cancelButton" label="Back" name="GoBack" nextURL="/jsp/PreviewAds.jsp"><img src="../../../images/navigation/previous.gif" width="70" height="17" border="0" alt="Back"></webbase:formHelper>					  
					  </webbase:showIf>
					  
					  <webbase:showIf expression="!adIsPartOfPackage">
					    <webbase:formHelper dataType="cancelButton" label="Back" name="GoBack" nextURL="/jsp/AllOnePage.jsp"><img src="../../../images/navigation/previous.gif" width="70" height="17" border="0" alt="Back"></webbase:formHelper>
					  </webbase:showIf>
					</td>
                    <td width="34%" align="center">
                      <div align="center"> <webbase:orderData dataType="SaveQuoteBtn" nextURL="/jsp/OrderConfirmationQuote.jsp" label="Save as Quote"><img src="../../../images/navigation/saveasquote.gif" width="99" height="17"></webbase:orderData></div>                    
					</td>
                    <td width="33%">
                      <div align="right"> <webbase:orderData dataType="SaveOrderBtn" label="Save Order" nextURL="/jsp/OrderConfirmation.jsp" unlock="1"><img src="../../../images/navigation/place_ad_now.gif" width="89" height="17" border="0"></webbase:orderData> </div>                    </td>
                  </tr>
                </table>
				</webbase:showIf>
			  </td> 
            </tr> 
            <tr> 
              <td colspan="2" align="right" valign="top">&nbsp;</td> 
            </tr>
          </table> 
        </div> 
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
