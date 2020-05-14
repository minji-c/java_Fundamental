package java_20200514;

public class LotteryDemo {
	public static void main(String[] args) {
		//로또복권
		//1. 1부터 45까지 숫자 중 임의 숫자 6개를 생성한다.
		//2. 6개의 숫자중 중복된 숫자가 나오면 안된다.
		//Math.random() => 0보다 크거나 같고 1보다 작은 양수를 
		//double 값으로 변환한다.0/00000 ~ 0.99999
		
		//1-45의 임의 랜던값을 반환
		//int random = (int)(Math.random()*45) +1;
		
		int[] lotto = new int[6];
		
		for(int i=0; i<lotto.length; i++) {
			int random = (int)(Math.random()*45) +1;
			lotto[i] = random;
			
		//중복되는 값이 있는지 체크하는 변수
		boolean isExisted = false;
		
		//중복체크하는 코드
		
		for(int j=0;j<i;j++) {
			if(lotto[j]==random) {
				isExisted = true;
				break;
			}
		}
			
		if(isExisted) {
			lotto [i] = random;
		} else {
			i--;
		}
			
		
		// 오름차순코드
		
		 
			
			
			
			
			
			
		}
		
		for(int value : lotto) {
			System.out.print(value + "\t");
		}
		
	
		
		
		

		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	}

}
