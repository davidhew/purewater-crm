package com.yuexuan.pw.domain.customer

/**
 * 客户信息
 * @author david
 *
 */
class Customer {
	//客户姓名
	String name;
	
	//客户类型
	CUSTOMER_TYPE customerType;
	
	//联系人姓名
	//TODO:这个有点怪，需要确认一下
	String contacts;
	
	//手机号码
	String cellPhone;
	
	//地址
	String address;
	
	//其他联系方式
	String otherContactWay;
	
	//客户类型，暂时只有个人和机构2种
	public static final enum CUSTOMER_TYPE{
		PERSON(1,"个人"),
		ORGANIZATION(2,"机构");
		
		String desc;
		int value;
		
		public CUSTOMER_TYPE(int value,String desc){
			this.value = value;
			this.desc = desc;
		}
		
		public int getId(){
			return value;
		}
		
		public String toString(){
			return desc;
		}
	}
	
}
