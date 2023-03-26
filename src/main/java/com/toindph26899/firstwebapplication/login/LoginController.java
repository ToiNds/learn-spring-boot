package com.toindph26899.firstwebapplication.login;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class LoginController {

    @RequestMapping("login")
    public String loginPage(@RequestParam String name, ModelMap modelMap) {
        // @RequestParam --> tuong tu nhu request.getParameter trong servlet --> dung de lay du lieu
        // ModelMap <==> tuong tu nhu request.setAttribute dung de hien thi gia tri tu controller -> jsp
        modelMap.put("name", name);
        System.out.println(name);
        return "/login/login";
    }

}
