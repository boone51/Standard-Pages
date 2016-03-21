<%@ taglib uri="/Mactive/WebBaseTags" prefix="webbase" %>
<webbase:webbasePageSetup securePage="no" noLoginRedirectURL="WebBaseMain.do"/>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html><!-- InstanceBegin template="/Templates/withmenu.dwt" codeOutsideHTMLIsLocked="false" -->
<head>
<title>AdBaseE</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link href="allstyles.css" rel="stylesheet" type="text/css">


<!-- InstanceBeginEditable name="JavaScript" -->
<SCRIPT type="text/javascript" SRC="../../../scripts/ZapatecCalendar-licensed/utils/zapatec.js"></SCRIPT>
<SCRIPT type="text/javascript" SRC="../../../scripts/ZapatecCalendar-licensed/src/calendar.js"></SCRIPT>
<SCRIPT type="text/javascript" SRC="../../../scripts/ZapatecCalendar-licensed/lang/calendar-en.js"></SCRIPT>
<SCRIPT type="text/javascript" SRC="../../../scripts/ZapatecCalendar-licensed/src/calendar-setup.js"></SCRIPT>
<SCRIPT type="text/javascript" SRC="../../../scripts/ZapatecCalendar-licensed/src/calendar-mactive.js"></SCRIPT>


<link rel="stylesheet" type="text/css" href="../../../scripts/ZapatecCalendar-licensed/themes/aqua.css"/>
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
	  <span class="PageName"> !! -- GetPackageInformation.jsp.</span>
	  <%--
	  <!-- main calendar program -->

<!-- calendar stylesheet -->
<link rel="stylesheet" type="text/css" media="all" href="../../../scripts/calendar/calendar-win2k-cold-1.css" title="win2k-cold-1" />
<!-- main calendar program -->
<script type="text/javascript" src="../../../scripts/calendar.js"></script>
<script type="text/javascript" src="../../../scripts/calendar/calendar.js"></script>
<!-- language for the calendar -->
<script type="text/javascript" src="../../../scripts/calendar/lang/calendar-en.js"></script>
<!-- the following script defines the Calendar.setup helper function, which makes adding a calendar a matter of 1 or 2 lines of code -->
<script type="text/javascript" src="../../../scripts/calendar/calendar-setup.js"></script>
<!-- contains Mactive specific calendar related functions -->
<script type="text/javascript" src="../../../scripts/calendar/calendar-mactive.js"></script> --%>
      <form method="post" action="WebBaseMain.do" name="merchattributes"> 
        <webbase:errorData dataType='ErrorMsg'/> 
        <webbase:errorData dataType='ErrorURL' nextURL='/jsp/GetPackageInformation.jsp'/> 
		<table width="400" border="0" align="center" cellpadding="0" cellspacing="0" class="navborder"> 
          <tr align="left"> 
            <td colspan="4" class="heading">Schedule Ad</td> 
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
            <td colspan="4"><webbase:PackageDayPatternTag displayDetails="true" displayElements="product" optionalRunScheduleHeadingText="Optional Products" displayAllAtOnce="true" displayOptionalAsDropDownIfOnlyOne="true"  dispOptMessage=" Select a product (optional)"/>
			</td> 
          </tr> 
          <tr> 
            <td align="center">&nbsp;</td> 
            <td align="center">&nbsp;</td> 
          </tr> 
          <tr> 
            <td width="50%" align="center">
			<webbase:formHelper dataType="cancelButton" label="Back" name="GoBack" nextURL="/jsp/AnswerQuestions.jsp"> 
              <img src="../../../images/navigation/previous.gif" width="70" height="17" border="0"> 
              </webbase:formHelper>
            </td> 
            <td align="center"><webbase:formHelper dataType="SubmitPackageSchedulingButton"  label="Submit Schedule" name="SubmitSchedule" nextURL="/jsp/PreviewAds.jsp"> 
                                    <img src="../../../images/navigation/continue.gif" width="70" height="17" border="0"> 
                                </webbase:formHelper>
			
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
