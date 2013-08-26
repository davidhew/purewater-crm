
<%@ page import="com.yuexuan.pw.domain.product.Peijian" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'peijian.label', default: 'Peijian')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-peijian" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-peijian" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="name" title="${message(code: 'peijian.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="brand" title="${message(code: 'peijian.brand.label', default: 'Brand')}" />
					
						<g:sortableColumn property="marque" title="${message(code: 'peijian.marque.label', default: 'Marque')}" />
					
						<g:sortableColumn property="memo" title="${message(code: 'peijian.memo.label', default: 'Memo')}" />
					
						<g:sortableColumn property="specification" title="${message(code: 'peijian.specification.label', default: 'Specification')}" />
					
						<g:sortableColumn property="type" title="${message(code: 'peijian.type.label', default: 'Type')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${peijianInstanceList}" status="i" var="peijianInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${peijianInstance.id}">${fieldValue(bean: peijianInstance, field: "name")}</g:link></td>
					
						<td>${fieldValue(bean: peijianInstance, field: "brand")}</td>
					
						<td>${fieldValue(bean: peijianInstance, field: "marque")}</td>
					
						<td>${fieldValue(bean: peijianInstance, field: "memo")}</td>
					
						<td>${fieldValue(bean: peijianInstance, field: "specification")}</td>
					
						<td>${fieldValue(bean: peijianInstance, field: "type")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${peijianInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
