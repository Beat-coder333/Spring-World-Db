package it.object.spring.world.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class LoginController {

	@GetMapping("/login")
	public String login() {
		return "login";

	}

	@PostMapping("/login")
	public String getUsername(HttpServletRequest request, @RequestParam("username") String username) {
		HttpSession session = request.getSession();
		session.setAttribute("username", username);
		return "city_info";
	}

}
