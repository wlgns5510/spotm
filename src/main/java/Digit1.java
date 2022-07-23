import java.util.ArrayList;

import com.spot.mate.controller.NaverDirec;

public class Digit1 implements Runnable {
	
	private String start, stop1, stop2, stop3, stop4, stop5, end;
	private int chk = 0;
	public Digit1(String start, String end) {
		this.start = start;
		this.end = end;
	}
	public Digit1(String start, String stop1, String end) {
		this.start = start;
		this.stop1 = stop1;
		this.end = end;
	}
	public Digit1(String start, String stop1, String stop2, String end) {
		this.start = start;
		this.stop1 = stop1;
		this.stop2 = stop2;
		this.end = end;
	}
	public Digit1(String start, String stop1, String stop2, String stop3, String end) {
		this.start = start;
		this.stop1 = stop1;
		this.stop2 = stop2;
		this.stop3 = stop3;
		this.end = end;
	}
	public Digit1(String start, String stop1, String stop2, String stop3, String stop4, String end) {
		this.start = start;
		this.stop1 = stop1;
		this.stop2 = stop2;
		this.stop3 = stop3;
		this.stop4 = stop4;
		this.end = end;
	}
	public Digit1(String start, String stop1, String stop2, String stop3, String stop4, String stop5, String end) {
		this.start = start;
		this.stop1 = stop1;
		this.stop2 = stop2;
		this.stop3 = stop3;
		this.stop4 = stop4;
		this.stop5 = stop5;
		this.end = end;
	}

	@Override
	public void run() {
		String[] str = {start, stop1, stop2, stop3, stop4, stop5, end};
		ArrayList<String> arr = null;
		NaverDirec nd = new NaverDirec();
		for(int i=0;i<str.length;i++) {
			if (str[i]!=null) {
				chk++;
			}
		}
		try {
			switch (chk) {
				case 2 :
					arr = nd.stop0(start, end);
					for(int i=0;i<arr.size();i++) {
						System.out.println(arr.get(i));
					}
					break;
				case 3 :
					arr = nd.stop1(start, stop1, end);
					for(int i=0;i<arr.size();i++) {
						System.out.println(arr.get(i));
					}
					break;
				case 4 :
					arr = nd.stop2(start, stop1, stop2, end);
					for(int i=0;i<arr.size();i++) {
						System.out.println(arr.get(i));
					}
					break;
				case 5 :
					arr = nd.stop3(start, stop1, stop2, stop3, end);
					for(int i=0;i<arr.size();i++) {
						System.out.println(arr.get(i));
					}
					break;
				case 6 :
					arr = nd.stop4(start, stop1, stop2, stop3, stop4, end);
					for(int i=0;i<arr.size();i++) {
						System.out.println(arr.get(i));
					}
					break;
				case 7 :
					arr = nd.stop5(start, stop1, stop2, stop3, stop4, stop5, end);
					for(int i=0;i<arr.size();i++) {
						System.out.println(arr.get(i));
					}
					break;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
}
