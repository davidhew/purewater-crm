
<%@ page import="com.yuexuan.pw.domain.product.Peijian" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'peijian.label', default: 'Peijian')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-peijian" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-peijian" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list peijian">
			
				<g:if test="${peijianInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="peijian.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${peijianInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${peijianInstance?.brand}">
				<li class="fieldcontain">
					<span id="brand-label" class="property-label"><g:message code="peijian.brand.label" default="Brand" /></span>
					
						<span class="property-value" aria-labelledby="brand-label"><g:fieldValue bean="${peijianInstance}" field="brand"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${peijianInstance?.marque}">
				<li class="fieldcontain">
					<span id="marque-label" class="property-label"><g:message code="peijian.marque.label" default="Marque" /></span>
					
						<span class="property-value" aria-labelledby="marque-label"><g:fieldValue bean="${peijianInstance}" field="marque"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${peijianInstance?.memo}">
				<li class="fieldcontain">
					<span id="memo-label" class="property-label"><g:message code="peijian.memo.label" default="Memo" /></span>
					
						<span class="property-value" aria-labelledby="memo-label"><g:fieldValue bean="${peijianInstance}" field="memo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${peijianInstance?.specification}">
				<li class="fieldcontain">
					<span id="specification-label" class="property-label"><g:message code="peijian.specification.label" default="Specification" /></span>
					
						<span class="property-value" aria-labelledby="specification-label"><g:fieldValue bean="${peijianInstance}" field="specification"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${peijianInstance?.type}">
				<li class="fieldcontain">
					<span id="type-label" class="property-label"><g:message code="peijian.type.label" default="Type" /></span>
					
						<span class="property-value" aria-labelledby="type-label"><g:fieldValue bean="${peijianInstance}" field="type"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${peijianInstance?.id}" />
					<g:link class="edit" action="edit" id="${peijianInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
