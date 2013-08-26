package com.yuexuan.pw.domain.product

import org.springframework.dao.DataIntegrityViolationException

class JingshuiqiController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [jingshuiqiInstanceList: Jingshuiqi.list(params), jingshuiqiInstanceTotal: Jingshuiqi.count()]
    }

    def create() {
        [jingshuiqiInstance: new Jingshuiqi(params)]
    }

    def save() {
		
		//默认的databing对于lvxins的关联会有问题，所以手动处理
		def lvxinIDs = params.lvxins;
//		有更简洁的办法把一个string数组转换成long数组吗?
		def lvxinIDs2 = lvxinIDs.collect{it.toLong()}
	
		def lvxins = Lvxin.getAll(lvxinIDs2);
		params.remove("lvxins");
		System.out.println(lvxins)
        def jingshuiqiInstance = new Jingshuiqi(params)
		jingshuiqiInstance.lvxins = lvxins
        if (!jingshuiqiInstance.save(flush: true)) {
            render(view: "create", model: [jingshuiqiInstance: jingshuiqiInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'jingshuiqi.label', default: 'Jingshuiqi'), jingshuiqiInstance.id])
        redirect(action: "show", id: jingshuiqiInstance.id)
    }

    def show(Long id) {
        def jingshuiqiInstance = Jingshuiqi.get(id)
        if (!jingshuiqiInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'jingshuiqi.label', default: 'Jingshuiqi'), id])
            redirect(action: "list")
            return
        }

        [jingshuiqiInstance: jingshuiqiInstance]
    }

    def edit(Long id) {
        def jingshuiqiInstance = Jingshuiqi.get(id)
        if (!jingshuiqiInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'jingshuiqi.label', default: 'Jingshuiqi'), id])
            redirect(action: "list")
            return
        }

        [jingshuiqiInstance: jingshuiqiInstance]
    }

    def update(Long id, Long version) {
        def jingshuiqiInstance = Jingshuiqi.get(id)
        if (!jingshuiqiInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'jingshuiqi.label', default: 'Jingshuiqi'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (jingshuiqiInstance.version > version) {
                jingshuiqiInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'jingshuiqi.label', default: 'Jingshuiqi')] as Object[],
                          "Another user has updated this Jingshuiqi while you were editing")
                render(view: "edit", model: [jingshuiqiInstance: jingshuiqiInstance])
                return
            }
        }

        jingshuiqiInstance.properties = params

        if (!jingshuiqiInstance.save(flush: true)) {
            render(view: "edit", model: [jingshuiqiInstance: jingshuiqiInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'jingshuiqi.label', default: 'Jingshuiqi'), jingshuiqiInstance.id])
        redirect(action: "show", id: jingshuiqiInstance.id)
    }

    def delete(Long id) {
        def jingshuiqiInstance = Jingshuiqi.get(id)
        if (!jingshuiqiInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'jingshuiqi.label', default: 'Jingshuiqi'), id])
            redirect(action: "list")
            return
        }

        try {
            jingshuiqiInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'jingshuiqi.label', default: 'Jingshuiqi'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'jingshuiqi.label', default: 'Jingshuiqi'), id])
            redirect(action: "show", id: id)
        }
    }
}
