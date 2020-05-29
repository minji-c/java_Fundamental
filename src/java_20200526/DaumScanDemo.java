package java_20200526;

import java.net.URL;

public class DaumScanDemo {
	
	public static void main(String[] args)
			throws IOException {
		URL url = new URL("https://www.daum.net/");
		InputStream in = url.openStream();
		InputStreamReader isr = new InputStreamReader(in);
		BufferedReader br = new BufferedReader(isr);
		String readLine = null;
		
		while((readLine = br.readLine()) != null) {
			System.out.println(readLine);
		}
	}

}
