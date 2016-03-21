<%@ taglib uri="/Mactive/WebBaseTags" prefix="webbase" %>
<webbase:webbasePageSetup securePage="no" noLoginRedirectURL="WebBaseMain.do"/>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html><!-- InstanceBegin template="/Templates/Obitswithmenu.dwt" codeOutsideHTMLIsLocked="false" -->
<head>
<title>AdBaseE</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link href="../jsp/allstyles.css" rel="stylesheet" type="text/css">


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
    <td colspan="2"><%@ include file="../includes/Obitsheader.htm"%></td>
  </tr>
  <tr>
    <td width="150" valign="top"><%@ include file="../includes/ObitsleftSide.htm"%></td>
	<td width="600" valign="top"><!-- InstanceBeginEditable name="content" --> 
      <span class="PageName"> !! -- AnswerQuestions.jsp</span>
      <form method="post" action="WebBaseMain.do" name="merchattributes"> 
	  <webbase:mactiveAction dataType="RunCommand" dataValue="<SetOrder paymentMethod='Credit Card'/>" />
      <webbase:mactiveAction dataType="RunCommand" dataValue="<SetOrder orderStatus='Ready'/>"/> 
	  <webbase:mactiveAction dataType="RunCommand" dataValue="<SetOrder queue='Ready'/>"/>
      <webbase:mactiveAction dataType="RunCommand" dataValue="<SetOrder source='No Source'/>"/>
	  <webbase:mactiveAction dataType="RunCommand" dataValue="<SetOrder rep='WEB'/>"/>
      <webbase:mactiveAction dataType="SetProductionMethod" dataValue="Internal"/>
	  
        <table width="450" border="0" align="center" cellpadding="0" cellspacing="0"> 
          <tr align="center"> 
            <td colspan="4" class="errormsg"><webbase:errorData dataType='ErrorMsg'/> 
              <webbase:errorData dataType='ErrorURL' nextURL='/Obits/SetLayout.jsp'/></td> 
          </tr> 
          <tr> 
            <td colspan="4" class="heading">Enter the Ad Text </td> 
          </tr> 
          <tr> 
            <td colspan="4">&nbsp; </td> 
          </tr> 
          <tr align="center"> 
            <td height="30" colspan="2">Your selected Ad Category is:<br> 
              <span class="chosencategory"><webbase:adData dataType='AdCategory' showCategoryName='false' showCategoryDescription='true' categoryTextSeparator=':'/></span></td> 
          </tr> 
          <tr>
            <td colspan="2">&nbsp;</td>
          </tr>
           
          <tr> 
            <td colspan="4"><table width="100%"  border="0" cellspacing="0" cellpadding="5" class="blue_tables"> 
                <tr> 
                  <td valign="top"> Fill in information that you would like to
                    appear in your ad. Items that are required are marked with
                    an asterisk (*).<br> 
                    <webbase:TemplateQuestions showJTEs="false" headerString="" bodyString="" footerString="" filterQuestionsByLayout="true" isBoldEnabled="true" isItalicEnabled="true" isUnderlineEnabled="false" /> </td> 
                </tr> 
              </table></td> 
          </tr> 
          <tr>
            <tr>
			<td colspan="2">
				<table align="center">
					<tr>
						<td>Column Layout</td>
						<td valign="top">
							<webbase:formHelper dataType="addActionParam" name="adColumns"/>
								<input type="radio" name="adColumns" value="<SetAd numberColumns='1'/>"> 1 Column Ad
								<input type="radio" name="adColumns" value="<SetAd numberColumns='2'/>"> 2 Column Ad
							</webbase:formHelper>
						</td>
					</tr>
			  </table>
				<br><br>
			</td>
		</tr>
          
          <tr> 
            <td width="50%" align="center">&nbsp;</td> 
            <td width="50%" align="center">&nbsp;</td> 
          </tr> 
          <tr align="center"> 
            <td> <webbase:formHelper dataType="cancelButton" label="Back" name="GoBack" nextURL="/Obits/SetLayout.jsp"> 
              <img src="../../../images/navigation/previous.gif" width="70" height="17" border="0"> 
              </webbase:formHelper></td> 
            <td>
			
			<webbase:showIf expression="allowPhotoUpload">
			<webbase:formHelper dataType="submitButton" label="Continue" nextURL="/Obits/SetIpixImage.jsp"> 
              <img src="../../../images/navigation/continue.gif" width="70" height="17"> 
              </webbase:formHelper>
			</webbase:showIf>
			<webbase:showIf expression="!allowPhotoUpload">
			<webbase:formHelper dataType="submitButton" label="Continue" nextURL="/Obits/adgenschedule.jsp"> 
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
    <td colspan="2"><%@ include file="../includes/Obitsfooter.htm"%></td>
  </tr>
</table>
</body>
<!-- InstanceEnd --></html>
