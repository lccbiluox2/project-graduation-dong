package com.neo.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.json.simple.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.neo.config.MyConfig;
import com.neo.domain.RentTable;
import com.neo.domain.UserTable;
import com.neo.service.RentService;
import com.neo.service.UserService;
import com.neo.utils.DateUtils;
import com.neo.utils.UploadImgToPointDir;

@Controller
@RequestMapping("/rentController") 
public class RentController {

	private Logger logger = Logger.getLogger(RentController.class);
	
	
	@Resource
	private RentService rentService;
	
	
	//添加出租信息
	@RequestMapping("/addRent") 
    public String  addRent(Model model,RentTable rent,HttpServletRequest req,HttpServletResponse res) {
		
		System.out.println( "========================="+ rent.toString() );
		
		HttpSession session =  req.getSession();
		UserTable user = (UserTable) session.getAttribute("admin");
		
		rent.setH_address(rent.getH_province()+rent.getH_city()+rent.getH_qu()+rent.getH_address_detail());
		rent.setH_create_time(DateUtils.getFormatDateTime(new Date(), DateUtils.yyyyMMddFormat));
		
		rent.setUser_id(user.getId());
		rent.setUser_name(user.getUser_name());
		rent.setUser_phone(user.getUser_phone());
		
		System.out.println( "========================="+ rent.toString() );
	    return null;
	  
	   
    }
	
	//添加出租信息 添加出租信息内容的时候 会是图文混排序 这里是上传单张图片的
	@RequestMapping("/addRentPicture") 
    public void  addRentPicture(Model model,HttpServletRequest req,HttpServletResponse res) {
		
		// 图片
		String uploadfileDir = "/upload/rent";
		String newFileName = UploadImgToPointDir.getDate();
		String fileNameString = UploadImgToPointDir.uploadImgToPointDir2(
				req, uploadfileDir, newFileName);
		if (!fileNameString.equals(newFileName)) {
			System.out.println("------1" + fileNameString);
			System.out.println(newFileName);
			String filePath =  uploadfileDir + "/"+ fileNameString.trim();
			
			System.out.println("------filePath=" + filePath);
			
			//product.setP_img_path(filePath);
			
			PrintWriter out = null;
			try {
				out = res.getWriter();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			JSONObject obj = new JSONObject();
			obj.put("error", 0);
			obj.put("url", filePath);
			
			out.println(obj.toJSONString());
		}
	    return;
    }
	
	

	
	
	
}
