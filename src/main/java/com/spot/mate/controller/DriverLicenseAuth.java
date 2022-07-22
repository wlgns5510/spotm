package com.spot.mate.controller;

import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;

public class DriverLicenseAuth {
	
	public static final String WEB_DRIVER_ID = "webdriver.chrome.driver"; // 드라이버 ID
	public static final String WEB_DRIVER_PATH = "./chromedriver.exe"; // 드라이버 경로
	
	public static void main(String[] args) throws InterruptedException {

		System.setProperty(WEB_DRIVER_ID, WEB_DRIVER_PATH);
		
		ChromeOptions options = new ChromeOptions();
		options.addArguments("disable-gpu");
		options.addArguments("lang=ko_KR");
		options.addArguments("headless");
		options.addArguments("user-agent=Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36");
		
		WebDriver driver = new ChromeDriver(options);
		driver.get("https://www.safedriving.or.kr/LnrForRtnLicns/LnrForRtnLicnsTruthYn.do");
		
		driver.findElement(By.id("sName")).sendKeys("이준규");
		driver.findElement(By.id("sJumin1")).sendKeys("970107");
		driver.findElement(By.id("licence01")).sendKeys("서울");
		driver.findElement(By.id("licence02")).sendKeys("22");
		driver.findElement(By.id("licence03")).sendKeys("013848");
		driver.findElement(By.id("licence04")).sendKeys("10");
		driver.findElement(By.id("serialnum")).sendKeys("DN7PHK");
		driver.findElement(By.xpath("//*[@id=\"resultform\"]/div/div[3]/a")).sendKeys(Keys.RETURN);
		String str = driver.findElement(By.className("ul_list")).getText();
//		driver.quit();
		if (str.contains("일치하지 않습니다.")) {
			System.out.println(str);
		}else {
			System.out.println(str + "good!");
		}

}
}