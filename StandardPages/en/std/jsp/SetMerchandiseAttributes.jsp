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
<link href="allstyles.css" rel="stylesheet" type="text/css">
<SCRIPT type="text/javascript" SRC="../../../scripts/ZapatecCalendar-licensed/utils/zapatec.js"></SCRIPT>
<SCRIPT type="text/javascript" SRC="../../../scripts/ZapatecCalendar-licensed/src/calendar.js"></SCRIPT>
<SCRIPT type="text/javascript" SRC="../../../scripts/ZapatecCalendar-licensed/lang/calendar-en.js"></SCRIPT>
<SCRIPT type="text/javascript" SRC="../../../scripts/ZapatecCalendar-licensed/src/calendar-setup.js"></SCRIPT>
<SCRIPT type="text/javascript" SRC="../../../scripts/ZapatecCalendar-licensed/src/calendar-mactive.js"></SCRIPT>


<link rel="stylesheet" type="text/css" href="../../../scripts/ZapatecCalendar-licensed/themes/aqua.css"/>
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
	 <span class="PageName"> !! -- SetMerchandiseAttributes.jsp</span>
	  <webbase:errorData dataType='ErrorMsg'/> 

	  <%-- AdBase Upload Parameters 
	  <webbase:mactiveAction dataType="RunCommand" dataValue="<SetAdbaseImage imageParameters='active:true, width:160, height:160, xdpi:72, ydpi:72, printImage:true, numOfImage:4'/>"/>  --%>
      <webbase:mactiveAction dataType="RunCommand" dataValue="<SetAdbaseImage imageParameters='active:true, printImage:true, numOfImage:4'/>"/> 

	  <%-- AdMission Example Settings  
	  <webbase:mactiveAction dataType="RunCommand" dataValue="<SetIpix urlParameters='active:true,format:EPS,query:t=tr/m:Fit/w:172/h:228&t=ts/r:200x200&t=ts/c:gray&t=teps/pw:172/ph:228/pr:200/pv:1/prm:Fit&t=ts/f:eps' currentBundle='4U' photoCharge='material:iPIX Gold;1;20'/>"/>
	  --%>

	  <%-- AdPay Example Settings	 
	  <webbase:mactiveAction dataType="RunCommand" dataValue="<SetAdPay photoCharge='material:Ipix Basic;1, material:Ipix Extra;2;3, material:Ipix Extra;4;30' />"/> service='active:true,sendEmail:false,tranType:W,status:-2'
	  <webbase:mactiveAction dataType="RunCommand" dataValue="<SetAdPay urlParameters='format:EPS, active:true, query:classification=511' />"/>
	  --%>

	  <%-- Border Margins
        <webbase:mactiveAction dataType="RunCommand" dataValue="<SetAd borderMarginTop='4' borderMarginBottom='4' borderMarginRight='4' borderMarginLeft='4' />"/>
	  --%>
	  
	  <%-- Graphic Margins
	  <webbase:mactiveAction dataType="RunCommand" dataValue="<SetGraphicParams graphicMargins='Left:2,Right:2,Top:2,Bottom:2'/>"/>
	  --%>
	  
	  <%-- Order Options --%>
	  <webbase:mactiveAction dataType="RunCommand" dataValue="<SetOrder paymentMethod='Credit Card'/>" />
      <webbase:mactiveAction dataType="RunCommand" dataValue="<SetOrder orderStatus='Ready'/>"/> 
	  <webbase:mactiveAction dataType="RunCommand" dataValue="<SetOrder queue='Ready'/>"/>
      <webbase:mactiveAction dataType="RunCommand" dataValue="<SetOrder source='No Source'/>"/>
	  <webbase:mactiveAction dataType="RunCommand" dataValue="<SetOrder rep='WEB'/>"/>
      <webbase:mactiveAction dataType="SetProductionMethod" dataValue="Internal"/>
	  
	  <form method="post" action="WebBaseMain.do" name="merchattributes">	  
	  <webbase:errorData dataType='ErrorURL' nextURL='/jsp/SetMerchandiseAttributes.jsp'/>  
        <table width="400" border="0" align="center" cellpadding="0" cellspacing="0" class="navborder"> 
          <tr align="left"> 
            <td colspan="4" class="heading">Create Ad </td> 
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
          <tr> 
            <td colspan="4">
			
			<%-- Do not use Java Text Editors --%>
			<webbase:MerchandiseAttributesTag adTextOutput="AdGenTemplate" showJTEs="false"/>
			
			
			<%-- Use Java Text Editors 
			<webbase:MerchandiseAttributesTag adTextOutput="AdGenTemplate" showJTEs="true"/>
			--%>
			</td> 
          </tr> 
          <tr> 
            <td align="center">&nbsp;</td> 
            <td align="center">&nbsp;</td> 
          </tr> 
          <tr> 
            <td width="50%" align="center">
			  <!-- If the ad is part of a package the previous page should be the SetPackage page -->
			  <webbase:showIf expression="adIsPartOfPackage">               
                <webbase:formHelper dataType="cancelButton" label="Back" name="GoBack" nextURL="/jsp/SetPackage.jsp"> 
                  <img src="../../../images/navigation/previous.gif" width="70" height="17" border="0">                </webbase:formHelper>
			  </webbase:showIf>
			  
			  <!-- if the ad NOT part of a package go to the SetAdType.jsp -->
			  <webbase:showIf expression="!adIsPartOfPackage">               
                <webbase:formHelper dataType="cancelButton" label="Back" name="GoBack" nextURL="/jsp/SetAdType.jsp"> 
                  <img src="../../../images/navigation/previous.gif" width="70" height="17" border="0">                </webbase:formHelper>
			  </webbase:showIf>
            </td> 
            <td align="center">
			  
			  <!-- if it's part of a package, go to the answer questions page -->
			  <webbase:showIf expression="adIsPartOfPackage">				
					<webbase:formHelper dataType="submitButton" label="Continue" nextURL="/jsp/AnswerQuestions.jsp">
					  <img src="../../../images/navigation/continue.gif" width="70" height="17"> 
				    </webbase:formHelper>
				  </webbase:showIf>
			      

			
			  <!-- if it's not part of the package, go to the all one page. -->
			  <webbase:showIf expression="!adIsPartOfPackage">
			    <webbase:formHelper dataType="submitButton" label="Continue" nextURL="/jsp/AllOnePage.jsp">             
				  <img src="../../../images/navigation/continue.gif" width="70" height="17">                </webbase:formHelper>
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