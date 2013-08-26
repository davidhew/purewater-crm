package com.yuexuan.pw.domain.product

/**
 * 滤芯
 * @author david
 *
 */
class Lvxin {
	//名称
	String name;
	
	//品牌
	String brand;
	
	//型号
	String marque;
	
	//类型
	String type;
	
	//规格
	String specification;
	
	//进价
	double buyingPrice;
	
	//销售价格
	double salePrice;
	
	//寿命，以天为计
	int life;
	
	static constraints = {
		name maxSize:128,blank: false, nullable: false
		brand maxSize: 64, blank: false, nullable: false
		marque maxSize: 64, blank: false, nullable: false
		buyingPrice blank: false, nullable: false
		specification maxSize:256
	}
	
	String toString(){"${this.name}"}
	
}
