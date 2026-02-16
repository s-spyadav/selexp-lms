package com.seleniumexpress.selexplms.lmscontrollers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class LoginController {
	
	@GetMapping("/myCustomLogin")
	public String showLoginPage() {
		return "my-custom-login-page";
	}
	@GetMapping("/accessDenied")
	public String showAccessDenied() {
		return "access-denied";
	}

}
