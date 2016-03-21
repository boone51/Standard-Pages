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
      <webbase:mactiveAction dataType="NewOrder" dataValue=""/> 
      <webbase:TemplateControls dataType="clear"/> 
	  <script type="javascript" src="../../../script/FormUtils.jsp"></script>
	  <form action="WebBaseMain.do" method="post" name="adtype" class="nomargin">
	  
	  <webbase:mactiveAction dataType="RunCommand" dataValue="<SetOrder paymentMethod='Credit Card'/>" />
      <webbase:mactiveAction dataType="RunCommand" dataValue="<SetOrder orderStatus='Ready'/>"/> 
	  <webbase:mactiveAction dataType="RunCommand" dataValue="<SetOrder queue='Ready'/>"/>
	  <webbase:mactiveAction dataType="SetRep" dataValue="web"/>
	  <%-- Not normally used. These are commented out. Delete comments to set them
      <webbase:mactiveAction dataType="RunCommand" dataValue="<SetOrder source='No Source'/>"/>
      <webbase:mactiveAction dataType="SetProductionMethod" dataValue="Internal"/> --%>
	  
	  <webbase:mactiveAction dataType="UpdateData" dataValue=""/>
		
	  <webbase:errorData dataType="ErrorMsg"/>
      <webbase:errorData dataType="ErrorURL" nextURL="/jsp/SetAdType.jsp"/>
	  <table width="600" border="0" align="center" cellpadding="2" cellspacing="0">
	    
		<tr>
          <td colspan="2" class="heading" style="margin-top: 20px;">Choose a Category:</td>
        </tr>
		<tr>
		  <td colspan="2" class="heading" style="margin-top: 20px;">&nbsp;</td>
		  </tr>
		<tr>
	      <td width="50%" valign="top">
		  <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
            
			<!--This is the START of an Ad Category-->
			<tr>
              <td>
                  <table width="100%"  border="0" cellpadding="2" cellspacing="0">
                    <tr>
                      <td>
					  <div id="category">
					  <webbase:AdCategorySelectorTag formName="adtype" outputInternalFields="true" rootCategoryName="Automotive-Packages" rootCategoryDisplayClass="headingsub" rootCategoryCollapsed="true" displayClass="errormsg" useList="true" displayElements="description" leafImage="../../../images/navigation/leafnode.gif" expandImage="../../../images/navigation/categoryArrowRight.gif" collapseImage="../../../images/navigation/categoryArrowDown.gif" nextURL="/jsp/SetMerchandiseAttributes.jsp" packageURL="/jsp/SetPackage.jsp"/> 
					  </div></td>
                    </tr>
                    <tr>
                      <td>                        </td>
                    </tr>
                  </table>              </td>
            </tr>
			<tr>
              <td>&nbsp;</td>
            </tr>
			<!--This is the END of an Ad Category-->
			
			<!--This is the START of an Ad Category-->
			<tr>
              <td>
                  <table width="100%"  border="0" cellpadding="2" cellspacing="0">
                    <tr>
                      <td>
					  <div id="category">
					  <webbase:AdCategorySelectorTag formName="adtype" outputInternalFields="false" rootCategoryName="Merchandise" rootCategoryDisplayClass="headingsub" rootCategoryCollapsed="true" leafImage="../../../images/navigation/leafnode.gif" displayElements="description" displayClass="errormsg" useList="true" expandImage="../../../images/navigation/categoryArrowRight.gif" collapseImage="../../../images/navigation/categoryArrowDown.gif" nextURL="/jsp/SetMerchandiseAttributes.jsp" packageURL="/jsp/SetPackage.jsp"/> 
					  </div>					  </td>
                    </tr>
                    <tr>
                      <td>                        </td>
                    </tr>
                  </table>              </td>
            </tr>

            <tr>
              <td class="mgroupname">&nbsp;</td>
            </tr>
			<!--This is the END of an Ad Category-->
			
			
			<!--This is the START of an Ad Category-->
			<tr>
              <td>
                  <table width="100%"  border="0" cellpadding="2" cellspacing="0">
                    <tr>
                      <td>
					  <div id="category">
					  <webbase:AdCategorySelectorTag formName="adtype" outputInternalFields="false" rootCategoryName="Real Estate" rootCategoryDisplayClass="headingsub" leafImage="../../../images/navigation/leafnode.gif" rootCategoryCollapsed="true" displayClass="errormsg" displayElements="description" useList="true" expandImage="../../../images/navigation/categoryArrowRight.gif" collapseImage="../../../images/navigation/categoryArrowDown.gif" nextURL="/jsp/SetMerchandiseAttributes.jsp" packageURL="/jsp/SetPackage.jsp"/> 
					  </div>					  </td>
                    </tr>
                    <tr>
                      <td>                        </td>
                    </tr>
                  </table>              </td>
            </tr>

            <tr>
              <td class="mgroupname">&nbsp;</td>
            </tr>
			<!--This is the END of an Ad Category-->
			
			<%--
			
			<!--This is the START of an Ad Category-->
			<tr>
              <td>
                  <table width="100%"  border="0" cellpadding="2" cellspacing="0">
                    <tr>
                      <td>
					  <div id="category">
					  <webbase:AdCategorySelectorTag formName="adtype" outputInternalFields="false" rootCategoryName="Pets and Livestock" rootCategoryDisplayClass="headingsub" rootCategoryCollapsed="true" leafImage="../../../images/navigation/leafnode.gif" displayClass="errormsg" useList="true" displayElements="description" expandImage="../../../images/navigation/categoryArrowRight.gif" collapseImage="../../../images/navigation/categoryArrowDown.gif" nextURL="/jsp/SetMerchandiseAttributes.jsp" packageURL="/jsp/SetPackage.jsp"/> 
					  </div>					  </td>
                    </tr>
                    <tr>
                      <td>                        </td>
                    </tr>
                  </table>              </td>
            </tr>
			
            <tr>
              <td class="mgroupname">&nbsp;</td>
            </tr>
			<!--This is the END of an Ad Category-->
			
            </table>  </td>
		 
		  <td width="50%" valign="top"><table width="100%" cellpadding="0" cellspacing="0">
		  <!--This is the START of an Ad Category-->
		  <tr>
              <td>
                  <table width="100%"  border="0" cellpadding="2" cellspacing="0">
                    <tr>
                      <td>
					  <div id="category">
					  <webbase:AdCategorySelectorTag formName="adtype" outputInternalFields="false" rootCategoryName="Merchandise" rootCategoryDisplayClass="headingsub" rootCategoryCollapsed="true" leafImage="../../../images/navigation/leafnode.gif" displayClass="errormsg" useList="true" displayElements="description" expandImage="../../../images/navigation/categoryArrowRight.gif" collapseImage="../../../images/navigation/categoryArrowDown.gif" nextURL="/jsp/SetMerchandiseAttributes.jsp" packageURL="/jsp/SetPackage.jsp"/> 
					  </div>					  </td>
                    </tr>
                    <tr>
                      <td>                        </td>
                    </tr>
                  </table>              </td>
            </tr>
			
            <tr>
              <td class="mgroupname">&nbsp;</td>
            </tr>
			<!--This is the END of an Ad Category-->
			<!--This is the START of an Ad Category-->
			<tr>
              <td>
                  <table width="100%"  border="0" cellpadding="2" cellspacing="0">
                    <tr>
                      <td>
					  <div id="category">
					  <webbase:AdCategorySelectorTag formName="adtype" outputInternalFields="false" rootCategoryName="Real Estate" rootCategoryDisplayClass="headingsub" leafImage="../../../images/navigation/leafnode.gif" rootCategoryCollapsed="true" displayClass="errormsg" useList="true" displayElements="description" expandImage="../../../images/navigation/categoryArrowRight.gif" collapseImage="../../../images/navigation/categoryArrowDown.gif" nextURL="/jsp/SetMerchandiseAttributes.jsp" packageURL="/jsp/SetPackage.jsp"/> 
					  </div>					  </td>
                    </tr>
                    <tr>
                      <td>                        </td>
                    </tr>
                  </table>              </td>
            </tr>
			
            <tr>
              <td class="mgroupname">&nbsp;</td>
            </tr>
			<!--This is the END of an Ad Category-->
			
			<!--This is the START of an Ad Category-->
			
			<tr>
              <td>
                  <table width="100%"  border="0" cellpadding="2" cellspacing="0">
                    <tr>
                      <td>
					  <div id="category">
					  <webbase:AdCategorySelectorTag formName="adtype" outputInternalFields="false" rootCategoryName="Services Directory" rootCategoryDisplayClass="headingsub" leafImage="../../../images/navigation/leafnode.gif" rootCategoryCollapsed="true" displayClass="errormsg" useList="true" displayElements="description"  expandImage="../../../images/navigation/categoryArrowRight.gif" collapseImage="../../../images/navigation/categoryArrowDown.gif" nextURL="/jsp/SetMerchandiseAttributes.jsp" packageURL="/jsp/SetPackage.jsp"/> 
					  </div>					  </td>
                    </tr>
                    <tr>
                      <td>                        </td>
                    </tr>
                  </table>              </td>
            </tr>
			
            <tr>
              <td class="mgroupname">&nbsp;</td>
            </tr>
			<!--This is the END of an Ad Category-->
			<!--This is the START of an Ad Category-->
			<tr>
              <td>
                  <table width="100%"  border="0" cellpadding="2" cellspacing="0">
                    <tr>
                      <td>
					  <div id="category">
					   <webbase:AdCategorySelectorTag formName="adtype" outputInternalFields="false" rootCategoryName="Merchandise" rootCategoryDisplayClass="headingsub" leafImage="../../../images/navigation/leafnode.gif" rootCategoryCollapsed="true" displayClass="errormsg" useList="true" displayElements="description"  expandImage="../../../images/navigation/categoryArrowRight.gif" collapseImage="../../../images/navigation/categoryArrowDown.gif" nextURL="/jsp/SetMerchandiseAttributes.jsp" packageURL="/jsp/SetPackage.jsp"/> 
					  </div>					  </td>
                    </tr>
                    <tr>
                      <td>                        </td>
                    </tr>
                  </table>              </td>
            </tr> 
            <!--This is the END of an Ad Category--> --%>
			
            <tr><td>&nbsp;</td></tr></table></td>
		</tr>
		<tr>
		  <td colspan="2" valign="top">&nbsp;</td>
		  </tr>
		<tr>
		  <td colspan="2" valign="top">&nbsp; </td>
	     </tr>
	   </table>
	   <webbase:formHelper dataType="formList"/>
       <webbase:formHelper dataType="FormValidate"/> 
      </form>
	
      <br> 
      <!-- InstanceEndEditable --></td>
  </tr>
  <tr>
    <td colspan="2"><%@ include file="../includes/footer.htm"%></td>
  </tr>
</table>
</body>
<!-- InstanceEnd --></html>
