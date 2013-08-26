package com.yuexuan.pw.data

import com.yuexuan.pw.domain.product.Jingshuiqi
import com.yuexuan.pw.domain.product.Lvxin

class InitJingshuiqi implements IInitData{
	void populateData(){
		for ( i in 0..4 ) {
			def jingshuiqi = new Jingshuiqi()
			jingshuiqi.with{
				name="美的1205_"+i+"_净水器"
				brand="美的"
				marque="1205"
				if(i%2==0){
					color="红色"
				}else{
					color="蓝色"
				}
				buyingPrice = 800
				salePrice = 1000
				lvxins = [Lvxin.get(1)]
			
			}
			jingshuiqi.save(flush:true, failOnError: true);
		}
	}
}
