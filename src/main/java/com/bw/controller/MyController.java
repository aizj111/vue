package com.bw.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Created by dell on 2019/5/16.
 */
@Controller
public class MyController {
    @RequestMapping("/index")
    public String index(){
        return "index";
    }
}
