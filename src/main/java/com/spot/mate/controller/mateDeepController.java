package com.spot.mate.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class mateDeepController {

	//메인폼
			@RequestMapping(value="/mateDeep", method = {RequestMethod.GET, RequestMethod.POST})
			public String main() {
				System.out.println(" mateDeepController >> main");
				
				
				return "mate/mateDeep";
			}
}
