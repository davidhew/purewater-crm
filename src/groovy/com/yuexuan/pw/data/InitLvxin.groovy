package com.yuexuan.pw.data

import com.yuexuan.pw.domain.product.Lvxin

class InitLvxin implements IInitData{
	void populateData(){
		for ( i in 0..3 ) {
			def lvxin = new Lvxin()
			lvxin.with{
				name="美的1205_"+i
				brand="美的"
				marque="1205"
				type="高端"
				specification="电压:3v,使用温度:20~80度"
				buyingPrice=75.5
				salePrice=80
				life=30
				}
			lvxin.save(flush:true, failOnError: true);
		}
		}
	}
