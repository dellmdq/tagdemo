<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>



<c:set var="theLocale" 
value="${not empty param.theLocale ? param.theLocale : pageContext.request.locale }"
scope="session"/>
dellmdq.jsp.tagdemo.i18n.resources
<fmt:setLocale value="${theLocale}" />

<fmt:setBundle basename="dellmdq.jsp.tagdemo.i18n.resources.mylabels" />	 

<html>
<body>

<a href="i18n-messages-test.jsp?theLocale=en_US">English (US)</a>

<a href="i18n-messages-test.jsp?theLocale=es_ES">Spanish (ES)</a>

<a href="i18n-messages-test.jsp?theLocale=de_DE">German (DE)</a> <br/> <br/> <br/>

	<fmt:message key="label.greeting"/> <br/> <br/>
	
	<fmt:message key="label.firstName"/> <i>Johny</i> <br/>
	
	<fmt:message key="label.lastName"/> <i>Bravo</i> <br/><br/>
	
	<fmt:message key="label.welcome"/> <br/>
	
</body>


</html>


