package com.spot.mate.controller;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

public class HTMLRequest {
	
	public static void main(String[] args) {
		
		System.out.println(executePost("https://datahub-dev.scraping.co.kr/assist/eCar/CarRegiste",
				"TASK:2, REGINUMBER:64부7499, OWNERNAME:이은열, CARREGIOPEN:0"));
	}
	
	public static String executePost(String targetURL, String urlParameters) {
		  HttpURLConnection connection = null;
		 
		  try {
		    //Create connection
		    URL url = new URL(targetURL);
		    connection = (HttpURLConnection) url.openConnection();
		    connection.setRequestMethod("POST");
		    connection.setRequestProperty("Content-Type", 
		        "application/json");
		    connection.setRequestProperty("Authorization", 
			        "Token 0689bebad1ba4295a760fba070e44a797264b7c3");
		 
		 
		    connection.setUseCaches(false);
		    connection.setDoOutput(true);
		 
		    //Send request
		    DataOutputStream wr = new DataOutputStream (
		        connection.getOutputStream());
		    wr.writeBytes(urlParameters);
		    wr.close();
		 
		    //Get Response  
		    InputStream is = connection.getInputStream();
		    BufferedReader rd = new BufferedReader(new InputStreamReader(is));
		    StringBuilder response = new StringBuilder(); // or StringBuffer if Java version 5+
		    String line;
		    while ((line = rd.readLine()) != null) {
		      response.append(line);
		      response.append('\r');
		    }
		    rd.close();
		    return response.toString();
		  } catch (Exception e) {
		    e.printStackTrace();
		    return null;
		  } finally {
		    if (connection != null) {
		      connection.disconnect();
		    }
		  }
		}
}