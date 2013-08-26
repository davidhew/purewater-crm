
<%@ page import="com.yuexuan.pw.domain.product.Lvxin" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'lvxin.label', default: 'Lvxin')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-lvxin" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-lvxin" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="name" title="${message(code: 'lvxin.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="brand" title="${message(code: 'lvxin.brand.label', default: 'Brand')}" />
					
						<g:sortableColumn property="marque" title="${message(code: 'lvxin.marque.label', default: 'Marque')}" />
					
						<g:sortableColumn property="buyingPrice" title="${message(code: 'lvxin.buyingPrice.label', default: 'Buying Price')}" />
					
						<g:sortableColumn property="specification" title="${message(code: 'lvxin.specification.label', default: 'Specification')}" />
					
						<g:sortableColumn property="life" title="${message(code: 'lvxin.life.label', default: 'Life')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${lvxinInstanceList}" status="i" var="lvxinInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${lvxinInstance.id}">${fieldValue(bean: lvxinInstance, field: "name")}</g:link></td>
					
						<td>${fieldValue(bean: lvxinInstance, field: "brand")}</td>
					
						<td>${fieldValue(bean: lvxinInstance, field: "marque")}</td>
					
						<td>${fieldValue(bean: lvxinInstance, field: "buyingPrice")}</td>
					
						<td>${fieldValue(bean: lvxinInstance, field: "specification")}</td>
					
						<td>${fieldValue(bean: lvxinInstance, field: "life")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${lvxinInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
