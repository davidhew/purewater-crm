
<%@ page import="com.yuexuan.pw.domain.product.Lvxin" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'lvxin.label', default: 'Lvxin')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-lvxin" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-lvxin" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list lvxin">
			
				<g:if test="${lvxinInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="lvxin.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${lvxinInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${lvxinInstance?.brand}">
				<li class="fieldcontain">
					<span id="brand-label" class="property-label"><g:message code="lvxin.brand.label" default="Brand" /></span>
					
						<span class="property-value" aria-labelledby="brand-label"><g:fieldValue bean="${lvxinInstance}" field="brand"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${lvxinInstance?.marque}">
				<li class="fieldcontain">
					<span id="marque-label" class="property-label"><g:message code="lvxin.marque.label" default="Marque" /></span>
					
						<span class="property-value" aria-labelledby="marque-label"><g:fieldValue bean="${lvxinInstance}" field="marque"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${lvxinInstance?.buyingPrice}">
				<li class="fieldcontain">
					<span id="buyingPrice-label" class="property-label"><g:message code="lvxin.buyingPrice.label" default="Buying Price" /></span>
					
						<span class="property-value" aria-labelledby="buyingPrice-label"><g:fieldValue bean="${lvxinInstance}" field="buyingPrice"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${lvxinInstance?.specification}">
				<li class="fieldcontain">
					<span id="specification-label" class="property-label"><g:message code="lvxin.specification.label" default="Specification" /></span>
					
						<span class="property-value" aria-labelledby="specification-label"><g:fieldValue bean="${lvxinInstance}" field="specification"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${lvxinInstance?.life}">
				<li class="fieldcontain">
					<span id="life-label" class="property-label"><g:message code="lvxin.life.label" default="Life" /></span>
					
						<span class="property-value" aria-labelledby="life-label"><g:fieldValue bean="${lvxinInstance}" field="life"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${lvxinInstance?.salePrice}">
				<li class="fieldcontain">
					<span id="salePrice-label" class="property-label"><g:message code="lvxin.salePrice.label" default="Sale Price" /></span>
					
						<span class="property-value" aria-labelledby="salePrice-label"><g:fieldValue bean="${lvxinInstance}" field="salePrice"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${lvxinInstance?.type}">
				<li class="fieldcontain">
					<span id="type-label" class="property-label"><g:message code="lvxin.type.label" default="Type" /></span>
					
						<span class="property-value" aria-labelledby="type-label"><g:fieldValue bean="${lvxinInstance}" field="type"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${lvxinInstance?.id}" />
					<g:link class="edit" action="edit" id="${lvxinInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
