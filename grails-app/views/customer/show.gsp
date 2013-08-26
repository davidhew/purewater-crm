
<%@ page import="com.yuexuan.pw.domain.customer.Customer" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'customer.label', default: 'Customer')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-customer" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-customer" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list customer">
			
				<g:if test="${customerInstance?.address}">
				<li class="fieldcontain">
					<span id="address-label" class="property-label"><g:message code="customer.address.label" default="Address" /></span>
					
						<span class="property-value" aria-labelledby="address-label"><g:fieldValue bean="${customerInstance}" field="address"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${customerInstance?.cellPhone}">
				<li class="fieldcontain">
					<span id="cellPhone-label" class="property-label"><g:message code="customer.cellPhone.label" default="Cell Phone" /></span>
					
						<span class="property-value" aria-labelledby="cellPhone-label"><g:fieldValue bean="${customerInstance}" field="cellPhone"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${customerInstance?.contacts}">
				<li class="fieldcontain">
					<span id="contacts-label" class="property-label"><g:message code="customer.contacts.label" default="Contacts" /></span>
					
						<span class="property-value" aria-labelledby="contacts-label"><g:fieldValue bean="${customerInstance}" field="contacts"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${customerInstance?.customerType}">
				<li class="fieldcontain">
					<span id="customerType-label" class="property-label"><g:message code="customer.customerType.label" default="Customer Type" /></span>
					
						<span class="property-value" aria-labelledby="customerType-label"><g:fieldValue bean="${customerInstance}" field="customerType"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${customerInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="customer.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${customerInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${customerInstance?.otherContactWay}">
				<li class="fieldcontain">
					<span id="otherContactWay-label" class="property-label"><g:message code="customer.otherContactWay.label" default="Other Contact Way" /></span>
					
						<span class="property-value" aria-labelledby="otherContactWay-label"><g:fieldValue bean="${customerInstance}" field="otherContactWay"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${customerInstance?.id}" />
					<g:link class="edit" action="edit" id="${customerInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
