package com.yuexuan.pw.domain.order

import com.yuexuan.pw.domain.customer.Customer


/**
 * 销售单子
 * 同一个客户，如果一次性购买了很多东西，则以这些东西的安装地址来进行拆单，即一个订单只能对应一个
 * 安装地址
 * @author david
 *
 */
class SaleOrder {

	//安装地址
	String installAddress;
	
	//销售方式
	SALE_TYPE saleType;
	
	//这笔订单对应的客户
	Customer customer;
	
	//销售主体
	String saler;
	
	//提成
	double bonus;
	
	//订单状态
	int status;
	
	static hasMany = [products: OrderProduct]

	public final static enum SALE_TYPE{
		
		MARKET_PLACE_SALE(0,"卖场"),
		EXPERIENCE_SALE(1,"体验销售"),
		PROJECT_SALE(2,"工程销售"),
		SALE_SALE(3,"行销"),
		CHANNEL_SALE(4,"渠道商提货"),
		COOPERATOR_SALE(5,"合作商销售"),
		ONLINE_SALE(6,"线上销售")
		
		public SALE_TYPE(int value,String desc){
			this.value = value;
			this.desc = desc;
		}
		
		private int value;
		private String desc;
		
		
		public int getId(){
			return value;
		}	
		
		public String toString(){
			return desc;
		}
	}
	
	
	static constraints = {
		installAddress maxSize:128,blank: false, nullable: false
		customer blank: false, nullable: false
		saler blank: false, nullable: false
		
	}
	
}
