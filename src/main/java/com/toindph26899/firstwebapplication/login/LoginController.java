package com.toindph26899.firstwebapplication.login;

import com.toindph26899.firstwebapplication.service.AuthenticationService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class LoginController {

    private AuthenticationService authentication;

    public LoginController(AuthenticationService authentication) {
        this.authentication = authentication;
    }

    @RequestMapping(value = "login", method = RequestMethod.GET) // RequestMapping --> dai dien cho POST, GET, DELETE, PUT, ...
    public String loginPage() {
        // @RequestParam --> tuong tu nhu request.getParameter trong servlet --> dung de lay du lieu
        // ModelMap <==> tuong tu nhu request.setAttribute dung de hien thi gia tri tu controller -> jsp
        return "/login/login";
    }

    @RequestMapping(value = "login", method = RequestMethod.POST) // method post
    public String welcomeToLogin(@RequestParam String name, @RequestParam String password, ModelMap map) {

        if(!authentication.isValidationAuthentication(name, password)) {
            System.out.println(authentication.isValidationAuthentication(name, password));
            map.addAttribute("error", "Tai khoan hoac mat khau khong chinh xac");
            return "/login/login";
        }

        map.addAttribute("name", name);
        map.addAttribute("password", password);

        return "/login/welcome";

    }

}
