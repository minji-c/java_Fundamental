package java_20200521;

import java.util.ArrayList;

public class WrapperDemo {
	public static void main(String[] args) {
		
		
		/*
		자바 1.4이전 버전에서는 primitive data type를 Collection에 저장
		할 수 없었기 때문에 primitive data type를 객체화 할 수 있는 
		wrapper class가 필요함. 아래와 같이 1을 추가할 수 없음.
		Collection에 1을 저장하기 위해서는 primitive data type를 객체화한
		Integer 클래스로 변환해야 함.
		*/	
		ArrayList list = new ArrayList();
		list.add(1);
		list.add(new Integer(1));
		
		//1. primitive data type => wrapper class( new Integer(1) )
		
		Integer i1 = new Integer(10);
		Integer i2 = new Integer(20);
		
		//2. wrapper class => primitive data type( xxxValue() )
		
		int i3 = i1.intValue() + i2.intValue();
		
		//3. String => primitive data type
		
		String s1 = "10";
		String s2 = "20";
		
		int i4 = Integer.parseInt(s1+s2) + Integer.parseInt(s2);
		
		System.out.println(i4);
		
		//4. primitive data type => String
		
		String s3 = 10+"";
		String s4 = String.valueOf(10);
		
		//primitive data type 자동으로 wrapper class 
		//변환하는 것을 auto boxing
		Integer i5 = 10;
		Integer i6 = 20;
		
		//wrapper class가 자동으로 primitive data type 변환하는 것을
		//auto un-boxing
		int i7 = i5 + i6;
		
		System.out.println(i7);
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	}
}