<%@ page import="com.yuexuan.pw.domain.product.Peijian" %>



<div class="fieldcontain ${hasErrors(bean: peijianInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="peijian.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" maxlength="128" required="" value="${peijianInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: peijianInstance, field: 'brand', 'error')} required">
	<label for="brand">
		<g:message code="peijian.brand.label" default="Brand" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="brand" maxlength="64" required="" value="${peijianInstance?.brand}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: peijianInstance, field: 'marque', 'error')} required">
	<label for="marque">
		<g:message code="peijian.marque.label" default="Marque" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="marque" maxlength="64" required="" value="${peijianInstance?.marque}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: peijianInstance, field: 'memo', 'error')} required">
	<label for="memo">
		<g:message code="peijian.memo.label" default="Memo" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="memo" cols="40" rows="5" maxlength="256" required="" value="${peijianInstance?.memo}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: peijianInstance, field: 'specification', 'error')} required">
	<label for="specification">
		<g:message code="peijian.specification.label" default="Specification" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="specification" cols="40" rows="5" maxlength="256" required="" value="${peijianInstance?.specification}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: peijianInstance, field: 'type', 'error')} ">
	<label for="type">
		<g:message code="peijian.type.label" default="Type" />

		
	</label>
	<g:select name="type" from="${com.yuexuan.pw.domain.product.Peijian$PEIJIAN_TYPE?.values()}" keys="${com.yuexuan.pw.domain.product.Peijian$PEIJIAN_TYPE.values()*.name()}" required="" value="${peijianInstance?.type?.name()}"/>
	
</div>

