package com.yuexuan.pw.domain.product



import org.junit.*
import grails.test.mixin.*

@TestFor(PeijianController)
@Mock(Peijian)
class PeijianControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/peijian/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.peijianInstanceList.size() == 0
        assert model.peijianInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.peijianInstance != null
    }

    void testSave() {
        controller.save()

        assert model.peijianInstance != null
        assert view == '/peijian/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/peijian/show/1'
        assert controller.flash.message != null
        assert Peijian.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/peijian/list'

        populateValidParams(params)
        def peijian = new Peijian(params)

        assert peijian.save() != null

        params.id = peijian.id

        def model = controller.show()

        assert model.peijianInstance == peijian
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/peijian/list'

        populateValidParams(params)
        def peijian = new Peijian(params)

        assert peijian.save() != null

        params.id = peijian.id

        def model = controller.edit()

        assert model.peijianInstance == peijian
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/peijian/list'

        response.reset()

        populateValidParams(params)
        def peijian = new Peijian(params)

        assert peijian.save() != null

        // test invalid parameters in update
        params.id = peijian.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/peijian/edit"
        assert model.peijianInstance != null

        peijian.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/peijian/show/$peijian.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        peijian.clearErrors()

        populateValidParams(params)
        params.id = peijian.id
        params.version = -1
        controller.update()

        assert view == "/peijian/edit"
        assert model.peijianInstance != null
        assert model.peijianInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/peijian/list'

        response.reset()

        populateValidParams(params)
        def peijian = new Peijian(params)

        assert peijian.save() != null
        assert Peijian.count() == 1

        params.id = peijian.id

        controller.delete()

        assert Peijian.count() == 0
        assert Peijian.get(peijian.id) == null
        assert response.redirectedUrl == '/peijian/list'
    }
}
