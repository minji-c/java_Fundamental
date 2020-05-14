package java_20200514;

public class ArrayDemo {
			//main ctrl space enter
		public static void main(String[] args) {
			//1.배열선언 및 생성
			int [] a = new int [4];
			
			//2. 배열할당
			a[0] =1;
			a[1] =2;
			a[2] =3;
			a[3] =4;
			
			//syso ctrl space System.out.println();
			
			/*
			System.out.println(123);
			System.out.println(123);
			System.out.println(123);
			System.out.println(123);
			System.out.println(123);
			//ctrl alt 방향키아래
			
			 */
			// alt 방향키 위아래			
			
			//3. 배열출력
			//a.length : 배열의길이
			
			for (int i=0; i<a.length; i++) {
				System.out.println(a[i]);
			}
			
			// 배열선언, 생성, 할당을 동시에 이루어짐.
			int [] b = {100, 200, 300, 400, 500};
			
			// 배열의 값 변경(할당)
			b[0]=101;
			b[1]=201;
			b[2]=301;
			b[3]=401;
			b[4]=501;
			
			//배열출력 => for loop
			for(int i=0; i<b.length; i++) {
				System.out.println(b[i]);
			}
			
			//배열출력 => enhanced for loop
			
			for(int value : b) {
				System.out.println(value);
			}
			
		
			int [] c = a;
			c[0]=11;
			
			System.out.println(a[0]);
			System.out.println(c[0]);
			
			//착각하지 말기. primitive
			int a1 = 10;
			int b1 = a1;
			
			
			
			
			
			
			
			
		}
			
}
