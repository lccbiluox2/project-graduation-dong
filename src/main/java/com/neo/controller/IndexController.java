package com.neo.controller;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController {
   
	private Logger logger = Logger.getLogger(IndexController.class);
    
    @RequestMapping("/welcome") 
    public String  welcome(Model model) {
    /*	Map model = new HashMap();
	    model.put("message", "这是测试的内容。。。");  
	    model.put("toUserName", "张三");  
	    model.put("fromUserName", "老许"); */ 
	    model.addAttribute("message", "这是测试的内容。。。");
	    
	    logger.info("test mesg========================");
	    
	    return "index" ;  
    }
    
    
}