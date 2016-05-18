package com.dcits.mine;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

/**
 * 测试Java结合lambda表达式实现本地缓存
 * @author dc_zjl
 *
 */
public class Java8LocalCache {
	static Map<Integer,Integer> cache = new HashMap<>();

	public static void main(String[] args) {
		System.out.println(System.currentTimeMillis());
		System.out.println(fibonacci(18));
		System.out.println(System.currentTimeMillis());
	}

	private static int fibonacci(int i) {
		if(i == 0) {
			return 0;
		}
		if(i == 1) {
			return 1;
		}
		//return fibonacci(i-2) + fibonacci(i-1);
		//return cache.computeIfAbsent(i, (key) -> fibonacci(i-2) + fibonacci(i-1));
		return cache.computeIfAbsent(i, (key) -> {
			System.out.println(
		            "Slow calculation of " + key);
			return fibonacci(i-2) + fibonacci(i-1);
		});
	}

}
