package com.yuexuan.pw.domain.order

/**
 * 
 * 一个订单里包含的产品的快照，和Product的区别是Product存放的产品元信息，或者你
 * 可以理解为Product就是一个产品目录；而这个类表达的是一个产品被出售的一个事实状态，所以
 * 比如某个产品卖完了，而且以后不再卖了，那么可以将其从Product删除，但是在OrderProduct，
 * 该产品的相关信息还是能够看到，便于日后统计和跟踪
 * @author david
 *
 */
class OrderProduct {
	//商品名称
	String name;
	
	/**
	 *  @see com.yuexuan.pw.domain.product.Jingshuiqi#attributes
	 */
	String attriubtes;
	
	/**
	 * 成交方式
	 * TODO:看是否需要做成更严格的枚举类型
	 */
	String dealType;
	
    //发票
	String invoice;
	
	//成交单价
	double price;
	
	//数量
	int count;
	
	//总价
	double totalPrice;
	
	//毛利
	double grossProfit;
	
	//提成
	double bonus;
	
	static belongsTo = [order: SaleOrder]
	
	static constraints = {
		name maxSize:128,blank: false, nullable: false
		price blank: false, nullable: false
		count blank: false, nullable: false
		
	}
	
}
