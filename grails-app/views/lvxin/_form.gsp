<%@ page import="com.yuexuan.pw.domain.product.Lvxin" %>



<div class="fieldcontain ${hasErrors(bean: lvxinInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="lvxin.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" maxlength="128" required="" value="${lvxinInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: lvxinInstance, field: 'brand', 'error')} required">
	<label for="brand">
		<g:message code="lvxin.brand.label" default="Brand" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="brand" maxlength="64" required="" value="${lvxinInstance?.brand}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: lvxinInstance, field: 'marque', 'error')} required">
	<label for="marque">
		<g:message code="lvxin.marque.label" default="Marque" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="marque" maxlength="64" required="" value="${lvxinInstance?.marque}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: lvxinInstance, field: 'specification', 'error')} ">
	<label for="specification">
		<g:message code="lvxin.specification.label" default="Specification" />
		
	</label>
	<g:textArea name="specification" cols="40" rows="5" maxlength="256" value="${lvxinInstance?.specification}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: lvxinInstance, field: 'buyingPrice', 'error')} required">
	<label for="buyingPrice">
		<g:message code="lvxin.buyingPrice.label" default="Buying Price" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="buyingPrice" value="${fieldValue(bean: lvxinInstance, field: 'buyingPrice')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: lvxinInstance, field: 'salePrice', 'error')} required">
	<label for="salePrice">
		<g:message code="lvxin.salePrice.label" default="Sale Price" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="salePrice" value="${fieldValue(bean: lvxinInstance, field: 'salePrice')}" required=""/>
</div>



<div class="fieldcontain ${hasErrors(bean: lvxinInstance, field: 'life', 'error')} required">
	<label for="life">
		<g:message code="lvxin.life.label" default="Life" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="life" type="number" value="${lvxinInstance.life}" required=""/>
</div>



<div class="fieldcontain ${hasErrors(bean: lvxinInstance, field: 'type', 'error')} ">
	<label for="type">
		<g:message code="lvxin.type.label" default="Type" />
		
	</label>
	<g:textField name="type" value="${lvxinInstance?.type}"/>
</div>

