package com.yuexuan.pw.domain.product



import org.junit.*
import grails.test.mixin.*

@TestFor(LvxinController)
@Mock(Lvxin)
class LvxinControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/lvxin/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.lvxinInstanceList.size() == 0
        assert model.lvxinInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.lvxinInstance != null
    }

    void testSave() {
        controller.save()

        assert model.lvxinInstance != null
        assert view == '/lvxin/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/lvxin/show/1'
        assert controller.flash.message != null
        assert Lvxin.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/lvxin/list'

        populateValidParams(params)
        def lvxin = new Lvxin(params)

        assert lvxin.save() != null

        params.id = lvxin.id

        def model = controller.show()

        assert model.lvxinInstance == lvxin
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/lvxin/list'

        populateValidParams(params)
        def lvxin = new Lvxin(params)

        assert lvxin.save() != null

        params.id = lvxin.id

        def model = controller.edit()

        assert model.lvxinInstance == lvxin
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/lvxin/list'

        response.reset()

        populateValidParams(params)
        def lvxin = new Lvxin(params)

        assert lvxin.save() != null

        // test invalid parameters in update
        params.id = lvxin.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/lvxin/edit"
        assert model.lvxinInstance != null

        lvxin.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/lvxin/show/$lvxin.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        lvxin.clearErrors()

        populateValidParams(params)
        params.id = lvxin.id
        params.version = -1
        controller.update()

        assert view == "/lvxin/edit"
        assert model.lvxinInstance != null
        assert model.lvxinInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/lvxin/list'

        response.reset()

        populateValidParams(params)
        def lvxin = new Lvxin(params)

        assert lvxin.save() != null
        assert Lvxin.count() == 1

        params.id = lvxin.id

        controller.delete()

        assert Lvxin.count() == 0
        assert Lvxin.get(lvxin.id) == null
        assert response.redirectedUrl == '/lvxin/list'
    }
}
