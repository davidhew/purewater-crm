package com.yuexuan.pw.data

import com.yuexuan.pw.domain.customer.Customer
import com.yuexuan.pw.domain.customer.Customer.CUSTOMER_TYPE
import com.yuexuan.pw.domain.product.Lvxin

class InitCustomer implements IInitData{
	void populateData(){
		for ( i in 0..4 ) {
			def customer = new Customer()
			customer.with{
				name="薛蛮子"
				contacts="警察"
				idNumber="610302196500180019"
				if(i%2==0){
					customerType=CUSTOMER_TYPE.PERSON
				}else{
					customerType=CUSTOMER_TYPE.ORGANIZATION
				}
				cellPhone = 13888888888
				address = "幸福大街9号"
				otherContactWay = "微博"
				
			
			}
			customer.save(flush:true, failOnError: true);
		}
	}
}
