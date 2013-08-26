package com.yuexuan.pw.data

import com.yuexuan.pw.domain.product.Peijian
import com.yuexuan.pw.domain.product.Peijian.PEIJIAN_TYPE

class InitPeijian implements IInitData{
	void populateData(){
		for ( i in 0..4 ) {
			def peijian = new Peijian()
			peijian.with{
				name="美的1205_"+i+"_配件"
				brand="美的"
				marque="1205"
				if(i%2==0){
					type=PEIJIAN_TYPE.DEDICATED;
				}else{
					type=PEIJIAN_TYPE.COMMONUSE;
				}
				specification="电压:3v,使用温度:20~80度"
				memo="绝对好品质"
			}
			peijian.save(flush:true, failOnError: true);
		}
	}
}
