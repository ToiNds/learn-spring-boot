package com.toindph26899.firstwebapplication.hello;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class HelloController {

    @RequestMapping("hello-spring")
    @ResponseBody
    public String helloSpring() {
        return "Hello Spring! What you learn today?";
    }

    // prefix /WEB-INF/view
    @RequestMapping("hello-spring-jsp")
    public String helloSpringJsp() {
        return "/hello/hello-spring";
    }

    // heeloooo

}
