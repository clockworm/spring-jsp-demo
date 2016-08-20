package com.kendoui.spring.controllers.numerictextbox;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller("numerictextbox-api-controller")
@RequestMapping(value="/numerictextbox/")
public class ApiController {
    
    @RequestMapping(value = {"api"}, method = RequestMethod.GET)
    public String index() {
        return "numerictextbox/api";
    }
}