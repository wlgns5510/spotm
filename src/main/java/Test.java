public class Test {

	public static void main(String[] args) throws Exception {
		Runnable thread1 = new Digit1("방배로 15길 54-16", "방배역");
		Runnable thread3 = new Digit3("경주", "공주", "해운대", "한옥마을");
		Runnable thread2 = new Digit2("전주","창원", "마산","서울","미아리", "창녕");
		Runnable thread5 = new Digit5("부산", "홍대","마포","가로수길","제주도");
		Runnable thread4 = new Digit4("파주","일산","수원","영통","부여성","인사동", "가로수길");
		Runnable thread6 = new Digit6("철원", "창녕", "양양", "목포");
		
		new Thread(thread1).start();
		new Thread(thread2).start();
		new Thread(thread3).start();
		new Thread(thread4).start();
		new Thread(thread5).start();
		new Thread(thread6).start();
		
//		NaverDirec nd = new NaverDirec();
//		String[] arr = nd.stop0("철원", "서울");
//		String[] arr1 = nd.stop1("철원", "창녕", "양양");
//		String[] arr2 = nd.stop2("경주", "공주", "해운대", "한옥마을");
//		String[] arr3 = nd.stop3("부산", "홍대","마포","가로수길","제주도");
//		String[] arr4 = nd.stop4("전주","창원", "마산","서울","미아리", "창녕");
//		String[] arr5 = nd.stop5("파주","일산","수원","영통","부여성","인사동", "가로수길");
//		
//		System.out.println(arr[0].split(" ")[3] + "\n"+arr[1]);
//		System.out.println(arr1[0].split(" ")[3] + "\n"+arr1[1]);
//		System.out.println(arr2[0].split(" ")[3] + "\n"+arr2[1]);
//		System.out.println(arr3[0].split(" ")[3] + "\n"+arr3[1]);
//		System.out.println(arr4[0].split(" ")[3] + "\n"+arr4[1]);
//		System.out.println(arr5[0].split(" ")[3] + "\n"+arr5[1]);
	}

}
