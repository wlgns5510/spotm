package com.spot.mate.controller;

import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Scanner;

public class HTTPRequest {
	
	public static void main(String[] args) throws IOException {
		
		URL url = new URL("https://apis-navi.kakaomobility.com/v1/directions?origin=127.11015314141542,37.39472714688412&destination=127.10824367964793,37.401937080111644&waypoints=&priority=RECOMMEND&car_fuel=GASOLINE&car_hipass=false&alternatives=false&road_details=false");
		HttpURLConnection httpConn = (HttpURLConnection) url.openConnection();
		httpConn.setRequestMethod("GET");

		httpConn.setRequestProperty("Authorization", "KakaoAK 2b24f06df2137983cc98995c1ddce575");

		InputStream responseStream = httpConn.getResponseCode() / 100 == 2
				? httpConn.getInputStream()
				: httpConn.getErrorStream();
		Scanner s = new Scanner(responseStream).useDelimiter("\\A");
		String response = s.hasNext() ? s.next() : "";
		System.out.println(response);
		s.close();
	}
	
//	public static String executePost(String targetURL, String urlParameters) {
//		  HttpURLConnection connection = null;
//		 
//		  try {
//		    //Create connection
//		    URL url = new URL(targetURL);
//		    connection = (HttpURLConnection) url.openConnection();
//		    connection.setRequestMethod("POST");
//		    connection.setRequestProperty("Content-Type", 
//		        "application/json");
//		    connection.setRequestProperty("Authorization", 
//			        "KakaoAK 2b24f06df2137983cc98995c1ddce575");
//		 
//		 
//		    connection.setUseCaches(false);
//		    connection.setDoOutput(true);
//		 
//		    //Send request
//		    DataOutputStream wr = new DataOutputStream (
//		        connection.getOutputStream());
//		    wr.writeBytes(urlParameters);
//		    wr.close();
//		 
//		    //Get Response  
//		    InputStream is = connection.getInputStream();
//		    BufferedReader rd = new BufferedReader(new InputStreamReader(is));
//		    StringBuilder response = new StringBuilder(); // or StringBuffer if Java version 5+
//		    String line;
//		    while ((line = rd.readLine()) != null) {
//		      response.append(line);
//		      response.append('\r');
//		    }
//		    rd.close();
//		    return response.toString();
//		  } catch (Exception e) {
//		    e.printStackTrace();
//		    return null;
//		  } finally {
//		    if (connection != null) {
//		      connection.disconnect();
//		    }
//		  }
//		}
}