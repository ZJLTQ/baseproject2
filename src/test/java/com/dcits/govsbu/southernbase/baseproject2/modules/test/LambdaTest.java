package com.dcits.govsbu.southernbase.baseproject2.modules.test;

import java.util.Arrays;
import java.util.List;
import java.util.Objects;
import java.util.function.Function;
import java.util.function.UnaryOperator;

public class LambdaTest {

	public static void main(String[] args) {
		TriFunction<Integer, Integer, Integer, Integer> sumOfThree 
			= (i1, i2, i3) -> i1 + i2 + i3;
		System.out.println(sumOfThree.apply(1, 2, 3));
		
		Function<Integer, Function<Integer, UnaryOperator<Integer>>> tri1 = a -> b -> c -> a + b + c;
		System.out.println(tri1.apply(1).apply(2).apply(3)); //prints 6
		
		
		String[] atp = { "Rafael Nadal", "Novak Djokovic",
				"Stanislas Wawrinka", "David Ferrer", "Roger Federer",
				"Andy Murray", "Tomas Berdych", "Juan Martin Del Potro" };
		List<String> players = Arrays.asList(atp);

		// 以前的循环方式
		for (String player : players) {
			System.out.print(player + "; ");
		}

		// 使用 lambda 表达式以及函数操作(functional operation)
		System.out.print("\n");
		players.forEach((player) -> System.out.print(player + "; "));

		// 在 Java 8 中使用双冒号操作符(double colon operator)
		System.out.print("\n");
		players.forEach(System.out::println); 
		
		// 1.2 使用 lambda expression 排序 players  
		/*Comparator<String> sortByName = (String s1, String s2) -> (s1.compareTo(s2));  
		Arrays.sort(players, sortByName);*/
	}
	
	
	@FunctionalInterface
	interface TriFunction<A,B,C,R> {

	    R apply(A a, B b, C c);

	    default <V> TriFunction<A, B, C, V> andThen(
	                                Function<? super R, ? extends V> after) {
	        Objects.requireNonNull(after);
	        return (A a, B b, C c) -> after.apply(apply(a, b, c));
	    }
	}

}
