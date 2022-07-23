package com.spot.mate.controller;

import java.util.concurrent.TimeUnit;

import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import org.openqa.selenium.NoSuchElementException;
import org.openqa.selenium.PageLoadStrategy;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;

public class NaverDirec {
	
	public static final String WEB_DRIVER_ID = "webdriver.chrome.driver"; // 드라이버 ID
	public static final String WEB_DRIVER_PATH = "./chromedriver.exe"; // 드라이버 경로



	@SuppressWarnings("deprecation")
	public static void main(String[] args) throws InterruptedException {

		System.setProperty(WEB_DRIVER_ID, WEB_DRIVER_PATH);
		
		ChromeOptions options = new ChromeOptions();
		options.addArguments("disable-gpu");
		options.addArguments("lang=ko_KR");
//		options.addArguments("headless");
		options.addArguments("user-agent=Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36\r\n");
		options.setPageLoadStrategy(PageLoadStrategy.NORMAL);
		
		WebDriver driver = new ChromeDriver(options);
		driver.manage().timeouts().implicitlyWait(3, TimeUnit.SECONDS);
		driver.get("https://map.naver.com/v5/directions/-/-/-/car?c=14100939.1067141,4548416.6248709,14,0,0,0,dh");
		driver.findElement(By.id("directionStart0")).sendKeys("방배역");
		String str1 = driver.findElement(By.xpath("//*[@id=\"container\"]/shrinkable-layout/div/directions-layout/directions-result/div[1]/div[1]/directions-search/div[1]/directions-search-box[1]/div/directions-search-box-instant-search/div/instant-search-list/div")).getText();
		driver.findElement(By.id("directionStart0")).sendKeys(Keys.RETURN);
		try {
			//검색결과 여러개 일 때
			driver.findElement(By.xpath("//*[@id=\"container\"]/shrinkable-layout/div/directions-layout/directions-result/div[1]/directions-search-list/search-list/search-list-contents/perfect-scrollbar/div/div[1]/div/div/div/search-item-place[1]/div")).click();
		}catch (NoSuchElementException e) {
			//검색결과 한 개 일 때
			driver.findElement(By.xpath("//*[@id=\"container\"]/shrinkable-layout/div/directions-layout/directions-result/div[1]/directions-search-list/search-list/search-list-contents/perfect-scrollbar/div/div[1]/div/div/div/search-item-address/div")).click();
		}
		driver.findElement(By.id("directionGoal1")).sendKeys("이수 메가박스");
		driver.findElement(By.id("directionGoal1")).sendKeys(Keys.RETURN);
		try {
			//검색결과 여러개 일 때
			driver.findElement(By.xpath("//*[@id=\"container\"]/shrinkable-layout/div/directions-layout/directions-result/div[1]/directions-search-list/search-list/search-list-contents/perfect-scrollbar/div/div[1]/div/div/div/search-item-place[1]/div")).click();
		}catch (NoSuchElementException e) {
			//검색결과 한 개 일 때
			driver.findElement(By.xpath("//*[@id=\"container\"]/shrinkable-layout/div/directions-layout/directions-result/div[1]/directions-search-list/search-list/search-list-contents/perfect-scrollbar/div/div[1]/div/div/div/search-item-address/div")).click();
		}
		driver.findElement(By.xpath("//*[@id=\"container\"]/shrinkable-layout/div/directions-layout/directions-result/div[1]/div[1]/directions-search/div[2]/button[3]")).sendKeys(Keys.RETURN);
		Thread.sleep(5000);
		driver.findElement(By.xpath("//*[@id=\"container\"]/div[1]/maps-controller/dynamic-content-outlet[1]/control-widget/control-top-widget-holder/div/control-export-group/control-save/button")).sendKeys(Keys.RETURN);
		String str2 = driver.findElement(By.className("route_summary_box")).getText();
		String str3 = driver.getCurrentUrl();
		Thread.sleep(1000);
		driver.quit();

		System.out.println(str1);
		System.out.println(str2);
		System.out.println(str3);
	}
	


}
