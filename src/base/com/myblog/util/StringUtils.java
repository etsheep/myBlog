package com.myblog.util;

/**
 * 字符串操作类
 * @author 羊
 *
 */
public class StringUtils {

	/**
	 * 判断字符串是否为空串
	 * @param str
	 * @return true---空串，false---非空串
	 */
	public static boolean isBlank(String str){
		if (str == null || str.equals("")){
			return true;
		}else{
			return false;
		}
	}
}
