
<%@ page import="com.yuexuan.pw.domain.product.Jingshuiqi" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'jingshuiqi.label', default: 'Jingshuiqi')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-jingshuiqi" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-jingshuiqi" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list jingshuiqi">
			
				<g:if test="${jingshuiqiInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="jingshuiqi.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${jingshuiqiInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${jingshuiqiInstance?.brand}">
				<li class="fieldcontain">
					<span id="brand-label" class="property-label"><g:message code="jingshuiqi.brand.label" default="Brand" /></span>
					
						<span class="property-value" aria-labelledby="brand-label"><g:fieldValue bean="${jingshuiqiInstance}" field="brand"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${jingshuiqiInstance?.marque}">
				<li class="fieldcontain">
					<span id="marque-label" class="property-label"><g:message code="jingshuiqi.marque.label" default="Marque" /></span>
					
						<span class="property-value" aria-labelledby="marque-label"><g:fieldValue bean="${jingshuiqiInstance}" field="marque"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${jingshuiqiInstance?.buyingPrice}">
				<li class="fieldcontain">
					<span id="buyingPrice-label" class="property-label"><g:message code="jingshuiqi.buyingPrice.label" default="Buying Price" /></span>
					
						<span class="property-value" aria-labelledby="buyingPrice-label"><g:fieldValue bean="${jingshuiqiInstance}" field="buyingPrice"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${jingshuiqiInstance?.attributes}">
				<li class="fieldcontain">
					<span id="attributes-label" class="property-label"><g:message code="jingshuiqi.attributes.label" default="Attributes" /></span>
					
						<span class="property-value" aria-labelledby="attributes-label"><g:fieldValue bean="${jingshuiqiInstance}" field="attributes"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${jingshuiqiInstance?.color}">
				<li class="fieldcontain">
					<span id="color-label" class="property-label"><g:message code="jingshuiqi.color.label" default="Color" /></span>
					
						<span class="property-value" aria-labelledby="color-label"><g:fieldValue bean="${jingshuiqiInstance}" field="color"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${jingshuiqiInstance?.lvxins}">
				<li class="fieldcontain">
					<span id="lvxins-label" class="property-label"><g:message code="jingshuiqi.lvxins.label" default="Lvxins" /></span>
					
						<g:each in="${jingshuiqiInstance.lvxins}" var="l">
						<span class="property-value" aria-labelledby="lvxins-label"><g:link controller="lvxin" action="show" id="${l.id}">${l?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${jingshuiqiInstance?.salePrice}">
				<li class="fieldcontain">
					<span id="salePrice-label" class="property-label"><g:message code="jingshuiqi.salePrice.label" default="Sale Price" /></span>
					
						<span class="property-value" aria-labelledby="salePrice-label"><g:fieldValue bean="${jingshuiqiInstance}" field="salePrice"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${jingshuiqiInstance?.subClass}">
				<li class="fieldcontain">
					<span id="subClass-label" class="property-label"><g:message code="jingshuiqi.subClass.label" default="Sub Class" /></span>
					
						<span class="property-value" aria-labelledby="subClass-label"><g:fieldValue bean="${jingshuiqiInstance}" field="subClass"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${jingshuiqiInstance?.id}" />
					<g:link class="edit" action="edit" id="${jingshuiqiInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
