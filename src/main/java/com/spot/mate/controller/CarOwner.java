package com.spot.mate.controller;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Scanner;

public class CarOwner {
	public static void main(String[] args) throws IOException {
		URL url = new URL("https://datahub-dev.scraping.co.kr/assist/eCar/CarRegiste");
		HttpURLConnection httpConn = (HttpURLConnection) url.openConnection();
		httpConn.setRequestMethod("POST");

		httpConn.setRequestProperty("Authorization", "Token 0689bebad1ba4295a760fba070e44a797264b7c3");
		httpConn.setRequestProperty("Content-Type", "application/json;charset=UTF-8");

		httpConn.setDoOutput(true);
		OutputStreamWriter writer = new OutputStreamWriter(httpConn.getOutputStream());
		writer.write("{\n  \"TASK\" : \"2\",\n  \"REGINUMBER\" : \"64\uBD807499\",\n  \"OWNERNAME\" : \"\uC774\uC740\uC5F4\",\n  \"CARREGIOPEN\" : \"0\"\n}");
		writer.flush();
		writer.close();
		httpConn.getOutputStream().close();

		InputStream responseStream = httpConn.getResponseCode() / 100 == 2
				? httpConn.getInputStream()
				: httpConn.getErrorStream();
		Scanner s = new Scanner(responseStream).useDelimiter("\\A");
		String response = s.hasNext() ? s.next() : "";
		System.out.println(response);
		s.close();
	}
}
