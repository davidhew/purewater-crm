package com.yuexuan.pw.domain



import grails.test.mixin.*
import org.junit.*

import com.yuexuan.pw.domain.product.Jingshuiqi;

/**
 * See the API for {@link grails.test.mixin.domain.DomainClassUnitTestMixin} for usage instructions
 */
@TestFor(Jingshuiqi)
class JingshuiqiTests {

//    void testSomething() {
//       fail "Implement me"
//    }
	
	void testStringArrayChangeTOLongArray(){
		def ids = ["180","380"]
		def ids2 = ids.collect{it.toLong()}
//		def ids2 = []
//		ids.each{
//			ids2.add(it.toLong())
//		}
//		
		System.out.println(ids2[0].class)
	}
}
