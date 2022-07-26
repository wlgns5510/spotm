public class Test {

	public static void main(String[] args) throws Exception {
		
		Runnable thread1 = new Digit1("방배역", "부산");
		Runnable thread3 = new Digit3("서울역", "가산디지털단지");
		Runnable thread2 = new Digit2("전주", "당진" , "창녕");
		Runnable thread5 = new Digit5("부산", "홍대", "마포", "제주도", "가로수길");
		Runnable thread4 = new Digit4("파주","일산","수원","영통","부여성","인사동", "가로수길");
		Runnable thread6 = new Digit6("철원", "창녕", "양양", "목포");
		
		new Thread(thread1).start();
		new Thread(thread2).start();
		new Thread(thread3).start();
		new Thread(thread4).start();
		new Thread(thread5).start();
		new Thread(thread6).start();
		
//		DriverLicenseAuth dla = new DriverLicenseAuth();
//		
//		System.out.println(dla.LicenseAuth("이준규", "970107", "11-22-013848-10", "DN7PHK"));
		
//		NaverDirec nd = new NaverDirec();
//		ArrayList<String> arr = nd.stop0("철원", "서울");
//		ArrayList<String> arr1 = nd.stop1("철원", "창녕", "양양");
//		ArrayList<String> arr2 = nd.stop2("경주", "공주", "해운대", "한옥마을");
//		ArrayList<String> arr3 = nd.stop3("부산", "홍대","마포","가로수길","제주도");
//		ArrayList<String> arr4 = nd.stop4("전주","창원", "마산","서울","미아리", "창녕");
//		ArrayList<String> arr5 = nd.stop5("파주","일산","수원","영통","부여성","인사동", "가로수길");
//		
//		for (int i=0;i<3;i++) {
//			System.out.println(arr.get(i));
//			System.out.println(arr1.get(i));
//			System.out.println(arr2.get(i));
//			System.out.println(arr3.get(i));
//			System.out.println(arr4.get(i));
//			System.out.println(arr5.get(i));
//		}
	}

}
