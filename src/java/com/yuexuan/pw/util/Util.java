package com.yuexuan.pw.util;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;

/**
 * 工具类
 * @author david
 *
 */
public class Util {

	private static final SimpleDateFormat SDF = new SimpleDateFormat("yyyyMMddHHmmss");
	private static final Random rand = new Random(100);
	public static String getOrderId(){
		return getCurrentDate()+ String.format("%03d", rand.nextInt(100));
	}
	
	
	private static String getCurrentDate(){
		Date date = new Date();
		return SDF.format(date);
		
	}
}
