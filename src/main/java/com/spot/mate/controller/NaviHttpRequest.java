package com.spot.mate.controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;

import com.google.gson.JsonElement;
import com.google.gson.JsonParser;

public class NaviHttpRequest {
	
	private List<Double> start = new ArrayList<Double>();
	private List<Double> end = new ArrayList<Double>();
	
	public NaviHttpRequest() {
	}
	public NaviHttpRequest(List<Double> start ,List<Double> end) throws IOException {
		this.start = start;
		this.end = end;
	}
	
	public List<Double> getVer() throws IOException {
		URL url = new URL("https://apis-navi.kakaomobility.com/v1/directions?origin="+start.get(0)+","+start.get(1)+"&destination="+end.get(0)+","+end.get(1)+"&waypoints=&priority=RECOMMEND&car_fuel=GASOLINE&car_hipass=true&alternatives=false&road_details=false");
		HttpURLConnection httpConn = (HttpURLConnection) url.openConnection();
		httpConn.setRequestMethod("GET");

		httpConn.setRequestProperty("Authorization", "KakaoAK 2b24f06df2137983cc98995c1ddce575");

//		InputStream responseStream = httpConn.getResponseCode() == 200
//				? httpConn.getInputStream()
//				: httpConn.getErrorStream();
//		s = new Scanner(responseStream).useDelimiter("\\A");
//		String result = s.hasNext() ? s.next() : "";
		BufferedReader br = new BufferedReader(new InputStreamReader(httpConn.getInputStream()));
		String line = "";
		String result = "";
        
		while ((line = br.readLine()) != null) {
			result += line;
		}
		
		JsonElement element = JsonParser.parseString(result);
		String info = element.getAsJsonObject().get("routes").toString();
		info = info.substring(1);
		info = info.substring(0, info.length()-1);
		
		JsonElement jSection = JsonParser.parseString(info);
		String section = jSection.getAsJsonObject().get("sections").toString();
		section = section.substring(1);
		section = section.substring(0, section.length()-1);
		
		JsonElement jRoad = JsonParser.parseString(section);
		String roads = jRoad.getAsJsonObject().get("roads").toString();
		roads = roads.substring(1);
		roads = roads.substring(0, roads.length()-1);
		String[] arr = roads.split("[{}]");
//		for(int i=0;i<arr.length;i++) {
//			System.out.println(arr[i]);
//		}
		List<String> lst = new ArrayList<String>();
		for(int i=0;i<arr.length;i++) {
			StringBuffer sb = new StringBuffer();
			sb.append(arr[i]);
			sb.insert(0, "{");
			sb.insert(arr[i].length()+1, "}");
			lst.add(sb.toString());
		}
		for(int i=0;i<lst.size();i++) {
			if (lst.get(i).equals("{}") || lst.get(i).equals("{,}")) {
				lst.remove(i);
			}
		}
		List<Double> latlng = new ArrayList<Double>();
		for(int i=0;i<lst.size();i++) {
			JsonElement vertexes = JsonParser.parseString(lst.get(i));
			String ver = vertexes.getAsJsonObject().get("vertexes").toString();
			ver = ver.substring(1);
			ver = ver.substring(0, ver.length()-1);
			for (int j=0;j<ver.split(",").length;j++) {
				latlng.add(Double.parseDouble(ver.split(",")[j]));
			}
		}
//		for(int k=0;k<latlng.size();k++) {
//			System.out.println(latlng.get(k));
//		}
//		System.out.println(latlng.size());
//		for(int i=0;i<lst.size();i++) {
//			JsonElement vertexes = JsonParser.parseString(lst.get(i));
//			JsonElement ver = vertexes.getAsJsonObject().get("vertexes");
////			ver = ver.substring(1);
////			ver = ver.substring(0, ver.length()-1);
//			System.out.println(ver);
//		}
		
//		ObjectMapper mapper = new ObjectMapper();
//		Map<String, String> map = null;
//		
//        try {
//        	for(int i=0;i<lst.size();i++) {
//        		map = mapper.readValue(lst.get(i), Map.class);
//    			System.out.println(map.get("vertexes"));
//    		}
//        } catch (IOException e) {
//            e.printStackTrace();
//        }
		
		
        
		return latlng;
	}
}