
<%@ page import="com.yuexuan.pw.domain.customer.Customer" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'customer.label', default: 'Customer')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-customer" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-customer" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="address" title="${message(code: 'customer.address.label', default: 'Address')}" />
					
						<g:sortableColumn property="cellPhone" title="${message(code: 'customer.cellPhone.label', default: 'Cell Phone')}" />
					
						<g:sortableColumn property="contacts" title="${message(code: 'customer.contacts.label', default: 'Contacts')}" />
					
						<g:sortableColumn property="customerType" title="${message(code: 'customer.customerType.label', default: 'Customer Type')}" />
					
						<g:sortableColumn property="name" title="${message(code: 'customer.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="otherContactWay" title="${message(code: 'customer.otherContactWay.label', default: 'Other Contact Way')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${customerInstanceList}" status="i" var="customerInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${customerInstance.id}">${fieldValue(bean: customerInstance, field: "address")}</g:link></td>
					
						<td>${fieldValue(bean: customerInstance, field: "cellPhone")}</td>
					
						<td>${fieldValue(bean: customerInstance, field: "contacts")}</td>
					
						<td>${fieldValue(bean: customerInstance, field: "customerType")}</td>
					
						<td>${fieldValue(bean: customerInstance, field: "name")}</td>
					
						<td>${fieldValue(bean: customerInstance, field: "otherContactWay")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${customerInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
