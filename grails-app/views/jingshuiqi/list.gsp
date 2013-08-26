
<%@ page import="com.yuexuan.pw.domain.product.Jingshuiqi" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'jingshuiqi.label', default: 'Jingshuiqi')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-jingshuiqi" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-jingshuiqi" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="name" title="${message(code: 'jingshuiqi.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="brand" title="${message(code: 'jingshuiqi.brand.label', default: 'Brand')}" />
					
						<g:sortableColumn property="marque" title="${message(code: 'jingshuiqi.marque.label', default: 'Marque')}" />
					
						<g:sortableColumn property="buyingPrice" title="${message(code: 'jingshuiqi.buyingPrice.label', default: 'BuyingPrice')}"/>
					
						<g:sortableColumn property="color" title="${message(code: 'jingshuiqi.color.label', default: 'Color')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${jingshuiqiInstanceList}" status="i" var="jingshuiqiInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${jingshuiqiInstance.id}">${fieldValue(bean: jingshuiqiInstance, field: "name")}</g:link></td>
					
						<td>${fieldValue(bean: jingshuiqiInstance, field: "brand")}</td>
					
						<td>${fieldValue(bean: jingshuiqiInstance, field: "marque")}</td>
					
						<td>${fieldValue(bean: jingshuiqiInstance, field: "buyingPrice")}</td>
					
					
						<td>${fieldValue(bean: jingshuiqiInstance, field: "color")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${jingshuiqiInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
