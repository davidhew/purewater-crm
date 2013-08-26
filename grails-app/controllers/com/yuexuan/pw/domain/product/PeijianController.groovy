package com.yuexuan.pw.domain.product

import org.springframework.dao.DataIntegrityViolationException

class PeijianController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [peijianInstanceList: Peijian.list(params), peijianInstanceTotal: Peijian.count()]
    }

    def create() {
        [peijianInstance: new Peijian(params)]
    }

    def save() {
        def peijianInstance = new Peijian(params)
        if (!peijianInstance.save(flush: true)) {
            render(view: "create", model: [peijianInstance: peijianInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'peijian.label', default: 'Peijian'), peijianInstance.id])
        redirect(action: "show", id: peijianInstance.id)
    }

    def show(Long id) {
        def peijianInstance = Peijian.get(id)
        if (!peijianInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'peijian.label', default: 'Peijian'), id])
            redirect(action: "list")
            return
        }

        [peijianInstance: peijianInstance]
    }

    def edit(Long id) {
        def peijianInstance = Peijian.get(id)
        if (!peijianInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'peijian.label', default: 'Peijian'), id])
            redirect(action: "list")
            return
        }

        [peijianInstance: peijianInstance]
    }

    def update(Long id, Long version) {
        def peijianInstance = Peijian.get(id)
        if (!peijianInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'peijian.label', default: 'Peijian'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (peijianInstance.version > version) {
                peijianInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'peijian.label', default: 'Peijian')] as Object[],
                          "Another user has updated this Peijian while you were editing")
                render(view: "edit", model: [peijianInstance: peijianInstance])
                return
            }
        }

        peijianInstance.properties = params

        if (!peijianInstance.save(flush: true)) {
            render(view: "edit", model: [peijianInstance: peijianInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'peijian.label', default: 'Peijian'), peijianInstance.id])
        redirect(action: "show", id: peijianInstance.id)
    }

    def delete(Long id) {
        def peijianInstance = Peijian.get(id)
        if (!peijianInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'peijian.label', default: 'Peijian'), id])
            redirect(action: "list")
            return
        }

        try {
            peijianInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'peijian.label', default: 'Peijian'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'peijian.label', default: 'Peijian'), id])
            redirect(action: "show", id: id)
        }
    }
}
