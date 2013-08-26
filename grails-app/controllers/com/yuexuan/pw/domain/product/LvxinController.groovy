package com.yuexuan.pw.domain.product

import org.springframework.dao.DataIntegrityViolationException

class LvxinController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [lvxinInstanceList: Lvxin.list(params), lvxinInstanceTotal: Lvxin.count()]
    }

    def create() {
        [lvxinInstance: new Lvxin(params)]
    }

    def save() {
        def lvxinInstance = new Lvxin(params)
        if (!lvxinInstance.save(flush: true)) {
            render(view: "create", model: [lvxinInstance: lvxinInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'lvxin.label', default: 'Lvxin'), lvxinInstance.id])
        redirect(action: "show", id: lvxinInstance.id)
    }

    def show(Long id) {
        def lvxinInstance = Lvxin.get(id)
        if (!lvxinInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'lvxin.label', default: 'Lvxin'), id])
            redirect(action: "list")
            return
        }

        [lvxinInstance: lvxinInstance]
    }

    def edit(Long id) {
        def lvxinInstance = Lvxin.get(id)
        if (!lvxinInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'lvxin.label', default: 'Lvxin'), id])
            redirect(action: "list")
            return
        }

        [lvxinInstance: lvxinInstance]
    }

    def update(Long id, Long version) {
        def lvxinInstance = Lvxin.get(id)
        if (!lvxinInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'lvxin.label', default: 'Lvxin'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (lvxinInstance.version > version) {
                lvxinInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'lvxin.label', default: 'Lvxin')] as Object[],
                          "Another user has updated this Lvxin while you were editing")
                render(view: "edit", model: [lvxinInstance: lvxinInstance])
                return
            }
        }

        lvxinInstance.properties = params

        if (!lvxinInstance.save(flush: true)) {
            render(view: "edit", model: [lvxinInstance: lvxinInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'lvxin.label', default: 'Lvxin'), lvxinInstance.id])
        redirect(action: "show", id: lvxinInstance.id)
    }

    def delete(Long id) {
        def lvxinInstance = Lvxin.get(id)
        if (!lvxinInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'lvxin.label', default: 'Lvxin'), id])
            redirect(action: "list")
            return
        }

        try {
            lvxinInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'lvxin.label', default: 'Lvxin'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'lvxin.label', default: 'Lvxin'), id])
            redirect(action: "show", id: id)
        }
    }
}
