package java_20200525;

public class TryCatchDemo {
	
	public static double getAve(int first, int second) {
		int sum = first + second;
		double avg = (double) sum/2;
		return avg;
	}
	
	public static void main(String[]args) {
		
		try {
			int Korean = Integer.parseInt(args[0]);
			int english = Integer.parseInt(args[1]);
			
			double average = getAve(korean, english);
			System.out.printf("평균 : %f", average);
		}catch(ArrayIndexOutOfBoundsException e) {
			//System.out.println("예외 메세지: "+e.getMessage());
			//System.err.println("2개 넣어주세요."); //사용자에게
			e.printStackTrace(); //개발할때
			

			/*
			 * 일반 출력 :  System.out
			 * 에러 출력 :  System.err
			 */
		}catch(NumberFormatException e) {
			//System.err.println("예외 메세지: "+e.getMessage());
			System.err.println("문자말고 숫자넣기");
		}finally {
			System.out.println("finally");
		}

		
		//catch 블럭이 여러 있을 경우 위에서 부터 하위 클래스 => 상위 클래스 순서로 
		//정한다.
		
		
}}
	
		