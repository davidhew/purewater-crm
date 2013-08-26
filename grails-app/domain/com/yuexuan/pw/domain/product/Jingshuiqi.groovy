package com.yuexuan.pw.domain.product

/**
 * 不了解净水器这个行业的英语术语，所以相关的类名都以全拼音来代替
 * 
 * 净水器这个类
 * @author david
 *
 */
class Jingshuiqi {
	
	//名称
	String name;
	
	//品牌
	String brand;
	
	//商品型号
	String marque;
	
	String color;
	//细类
	String subClass;
	
	//进价
	double buyingPrice;
	
	//销售价
	double salePrice;
	
	/**商品属性信息，比如颜色，电压等；商品的属性信息会以属性名称ID:属性值对IDs;的方式存放
	*比如，一个商品在颜色这个属性上，有红色，蓝色；在电压这个属性上，有5V，10V
	*假设颜色的属性ID为5，电压的属性ID为6，红色对应的属性值id为c_1,蓝色为c_2,5v为v_1,10v
	*为v_2，则该商品的这个字段的值为5:c_1,c_2;6:v_1,v_2
	*/
	String attributes;
	
	static hasMany = [lvxins: Lvxin]
	
   	static constraints = {
		name maxSize:128,blank: false, nullable: false
		brand maxSize: 64, blank: false, nullable: false
		marque maxSize: 64, blank: false, nullable: false
		buyingPrice blank: false, nullable: false
		attributes nullable:true
		subClass nullable:true
		
	}
}
