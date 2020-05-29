package java_20200525;



public class ExceptionSampleDemo {
	public static void main(String[] args)	{
		//String msg = null;
		//NullPointerException 예외발생
		//int msgLength = msg.length();
		//System.out.println(msgLength);
		
		//int[] array = {1,2,3};
		//ArrayIndexOutOfBoundsException 예외발생
		//int temp = array[3];
		
		//ArithmeticException 예외발생
		//int result = 3/0;
		//System.out.println(result);
		
		//NumberFormatException 예외발생
		int first = Integer.parseInt("a");
		System.out.println(first);
		
	}
}
