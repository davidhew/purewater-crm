package com.yuexuan.pw.domain.product
/**
 * 配件
 * @author david
 *
 */
class Peijian {
	//名称
	String name;
	//类型，专用or通用
	String type;
	
	//品牌
	String brand;
	
	//型号
	String marque; 
	
	//规格
	String specification;
	
	//其他，备注
	String memo;
	
	static constraints = {
		name maxSize:128,blank: false, nullable: false
		brand maxSize: 64, blank: false, nullable: false
		marque maxSize: 64, blank: false, nullable: false
		memo maxSize:256,blank: false, nullable: false
		specification maxSize:256,blank: false, nullable: false
	}
}
