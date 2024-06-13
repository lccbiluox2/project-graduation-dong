package com.neo;

import java.io.File;

import org.apache.log4j.PropertyConfigurator;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.scheduling.annotation.EnableScheduling;

import com.neo.utils.PathUtils;

@SpringBootApplication
@EnableScheduling
public class Application {

	
	//代码块初始化log4j日志
	static {
	      try{
	          //初始化log4j
	    	  //String filePath=root+"WEB-INF" + File.separator+"config"+File.separator+"log4j.properties"; 
	          String log4jPath = Application.class.getClassLoader().getResource("").getPath()+"log4j.properties";
	          System.out.println("初始化Log4j。。。。");
	          System.out.println("path is "+ log4jPath);
	          PropertyConfigurator.configure(log4jPath);
	          
	          //这一点想让日志输出到WEB-INF下 但是没起作用
	          String root=PathUtils.root();
	 		  String logFilesPath = root + "WEB-INF" + File.separator+ "logs";
	 		  System.setProperty("logFilesPath", logFilesPath);
	 		  System.out.println(System.getProperty("logFilesPath"));
	 		  PropertyConfigurator.configure(System.getProperties());
	
	 		 
	          
	          
	      }catch (Exception e){
	          e.printStackTrace();
	      }
	}
	
	
	public static void main(String[] args) {
		SpringApplication.run(Application.class, args);
	}
}
