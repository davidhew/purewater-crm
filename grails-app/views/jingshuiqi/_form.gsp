<%@ page import="com.yuexuan.pw.domain.product.Jingshuiqi" %>



<div class="fieldcontain ${hasErrors(bean: jingshuiqiInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="jingshuiqi.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" maxlength="128" required="" value="${jingshuiqiInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: jingshuiqiInstance, field: 'brand', 'error')} required">
	<label for="brand">
		<g:message code="jingshuiqi.brand.label" default="Brand" />
		<span class="required-indicator">*</span>`
	</label>
	<g:textField name="brand" maxlength="64" required="" value="${jingshuiqiInstance?.brand}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: jingshuiqiInstance, field: 'marque', 'error')} required">
	<label for="marque">
		<g:message code="jingshuiqi.marque.label" default="Marque" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="marque" maxlength="64" required="" value="${jingshuiqiInstance?.marque}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: jingshuiqiInstance, field: 'buyingPrice', 'error')} required">
	<label for="buyingPrice">
		<g:message code="jingshuiqi.buyingPrice.label" default="Buying Price" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="buyingPrice" value="${fieldValue(bean: jingshuiqiInstance, field: 'buyingPrice')}" required=""/>
</div>


<div class="fieldcontain ${hasErrors(bean: jingshuiqiInstance, field: 'color', 'error')} ">
	<label for="color">
		<g:message code="jingshuiqi.color.label" default="Color" />
		
	</label>
	<g:textField name="color" value="${jingshuiqiInstance?.color}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: jingshuiqiInstance, field: 'lvxins', 'error')} ">
	<label for="lvxins">
		<g:message code="jingshuiqi.lvxins.label" default="Lvxins" />
		
	</label>
	<g:select name="lvxins" from="${com.yuexuan.pw.domain.product.Lvxin.list()}" multiple="multiple" optionKey="id" size="5" value="${jingshuiqiInstance?.lvxins*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: jingshuiqiInstance, field: 'salePrice', 'error')} required">
	<label for="salePrice">
		<g:message code="jingshuiqi.salePrice.label" default="Sale Price" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="salePrice" value="${fieldValue(bean: jingshuiqiInstance, field: 'salePrice')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: jingshuiqiInstance, field: 'subClass', 'error')} ">
	<label for="subClass">
		<g:message code="jingshuiqi.subClass.label" default="Sub Class" />
		
	</label>
	<g:textField name="subClass" value="${jingshuiqiInstance?.subClass}"/>
</div>

