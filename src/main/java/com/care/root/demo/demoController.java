package com.care.root.demo;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class demoController {

	@RequestMapping("menu")
	public String goMain() {
		return "demo/demo_menu";
	}
	
	@RequestMapping("pull1")
	public String pull1() {
		return "demo/demo_pull";
	}
	
	@RequestMapping("pull2")
	public String pull2() {
		return "demo/demo_pull2";
	}

}
