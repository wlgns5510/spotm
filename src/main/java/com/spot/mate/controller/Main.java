package com.spot.mate.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
	@RequestMapping(value="/driverMain", method={RequestMethod.GET, RequestMethod.POST})
	public String driveMain() {
		return "/users/driverMain";
	}
	@RequestMapping(value="/main4", method={RequestMethod.GET, RequestMethod.POST})
	public String tmap(Model model) throws IOException {
		List<Double> start = new ArrayList<Double>();
		start.add(126.99381542283633);
		start.add(37.48271740269386);
		List<Double> end = new ArrayList<Double>();
		end.add(126.98761047624417);
		end.add(37.46912968716258);
		NaviHttpRequest nhr = new NaviHttpRequest(start, end);
		model.addAttribute("latlng", nhr.getVer());
		model.addAttribute("start", start);
		model.addAttribute("end", end);
		return "/main4";
	}

}