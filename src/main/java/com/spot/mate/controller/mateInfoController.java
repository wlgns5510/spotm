package com.spot.mate.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class mateInfoController {

		//메인폼
		@RequestMapping(value="/mateInfo", method = {RequestMethod.GET, RequestMethod.POST})
		public String main() {
			System.out.println("mateInfoController >> main");
			
			return "mate/mateInfo";
		}

}
