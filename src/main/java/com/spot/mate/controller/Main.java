package com.spot.mate.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class Main {
	
	@RequestMapping(value="/nav", method={RequestMethod.GET, RequestMethod.POST})
	public String main() {
		return "/includes/nav";
	}
	
	@RequestMapping(value="/footer", method={RequestMethod.GET, RequestMethod.POST})
	public String footer() {
		return "/includes/footer";
	}
	
	@RequestMapping(value="/driver", method={RequestMethod.GET, RequestMethod.POST})
	public String drive() {
		return "/mypage/driverHistory";
	}
	
	@RequestMapping(value="/", method={RequestMethod.GET, RequestMethod.POST})
	public String tmap() {
		return "/index";
	}

}