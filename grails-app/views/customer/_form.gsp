<%@ page import="com.yuexuan.pw.domain.customer.Customer" %>



<div class="fieldcontain ${hasErrors(bean: customerInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="customer.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${customerInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: customerInstance, field: 'idNumber', 'error')} ">
	<label for="idNumber">
		<g:message code="customer.idNumber.label" default="idNumber" />
		
	</label>
	<g:textField name="idNumber" value="${customerInstance?.idNumber}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: customerInstance, field: 'address', 'error')} ">
	<label for="address">
		<g:message code="customer.address.label" default="Address" />
		
	</label>
	<g:textField name="address" value="${customerInstance?.address}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: customerInstance, field: 'cellPhone', 'error')} ">
	<label for="cellPhone">
		<g:message code="customer.cellPhone.label" default="Cell Phone" />
		
	</label>
	<g:textField name="cellPhone" value="${customerInstance?.cellPhone}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: customerInstance, field: 'contacts', 'error')} ">
	<label for="contacts">
		<g:message code="customer.contacts.label" default="Contacts" />
		
	</label>
	<g:textField name="contacts" value="${customerInstance?.contacts}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: customerInstance, field: 'customerType', 'error')} required">
	<label for="customerType">
		<g:message code="customer.customerType.label" default="Customer Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="customerType" from="${com.yuexuan.pw.domain.customer.Customer$CUSTOMER_TYPE?.values()}" keys="${com.yuexuan.pw.domain.customer.Customer$CUSTOMER_TYPE.values()*.name()}" required="" value="${customerInstance?.customerType?.name()}"/>
</div>



<div class="fieldcontain ${hasErrors(bean: customerInstance, field: 'otherContactWay', 'error')} ">
	<label for="otherContactWay">
		<g:message code="customer.otherContactWay.label" default="Other Contact Way" />
		
	</label>
	<g:textField name="otherContactWay" value="${customerInstance?.otherContactWay}"/>
</div>

