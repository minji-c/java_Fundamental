package java_20200520;

public class SubDemo {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Super s1 = new Super();
		System.out.println(s1.age);
		s1.playBadook();
		s1.work();//
		
		System.out.println("=========================");
		Sub s2 = new Sub();
		System.out.println(s2.height);
		s2.playGame();
		s2.work();//??
		
		s2.age = 20;
		System.out.println(s2.age);
		s2.playBadook();
		System.out.println("=========================");
		
		Super s3 = new Sub();
		
		//Super s3 = s2;
		System.out.println(s3.age);
		s3.playBadook();
		s3.work();
		
		//s3.height = 20;
		//s3.playGame();
		
		
		
		
		
		
		
		
		
		
		
		
	}

}