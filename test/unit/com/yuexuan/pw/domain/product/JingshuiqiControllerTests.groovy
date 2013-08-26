package com.yuexuan.pw.domain.product



import org.junit.*
import grails.test.mixin.*

@TestFor(JingshuiqiController)
@Mock(Jingshuiqi)
class JingshuiqiControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/jingshuiqi/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.jingshuiqiInstanceList.size() == 0
        assert model.jingshuiqiInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.jingshuiqiInstance != null
    }

    void testSave() {
        controller.save()

        assert model.jingshuiqiInstance != null
        assert view == '/jingshuiqi/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/jingshuiqi/show/1'
        assert controller.flash.message != null
        assert Jingshuiqi.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/jingshuiqi/list'

        populateValidParams(params)
        def jingshuiqi = new Jingshuiqi(params)

        assert jingshuiqi.save() != null

        params.id = jingshuiqi.id

        def model = controller.show()

        assert model.jingshuiqiInstance == jingshuiqi
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/jingshuiqi/list'

        populateValidParams(params)
        def jingshuiqi = new Jingshuiqi(params)

        assert jingshuiqi.save() != null

        params.id = jingshuiqi.id

        def model = controller.edit()

        assert model.jingshuiqiInstance == jingshuiqi
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/jingshuiqi/list'

        response.reset()

        populateValidParams(params)
        def jingshuiqi = new Jingshuiqi(params)

        assert jingshuiqi.save() != null

        // test invalid parameters in update
        params.id = jingshuiqi.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/jingshuiqi/edit"
        assert model.jingshuiqiInstance != null

        jingshuiqi.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/jingshuiqi/show/$jingshuiqi.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        jingshuiqi.clearErrors()

        populateValidParams(params)
        params.id = jingshuiqi.id
        params.version = -1
        controller.update()

        assert view == "/jingshuiqi/edit"
        assert model.jingshuiqiInstance != null
        assert model.jingshuiqiInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/jingshuiqi/list'

        response.reset()

        populateValidParams(params)
        def jingshuiqi = new Jingshuiqi(params)

        assert jingshuiqi.save() != null
        assert Jingshuiqi.count() == 1

        params.id = jingshuiqi.id

        controller.delete()

        assert Jingshuiqi.count() == 0
        assert Jingshuiqi.get(jingshuiqi.id) == null
        assert response.redirectedUrl == '/jingshuiqi/list'
    }
}
