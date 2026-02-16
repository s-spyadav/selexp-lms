package com.seleniumexpress.selexplms.lmscontrollers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

@Controller
public class TestController {
	
	public TestController() {
		System.out.println("test controller");
	}

	@GetMapping("/testing")
	@ResponseBody
	public String test() {
		return "testing";
	}
}
