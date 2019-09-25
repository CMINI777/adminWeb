package com.boot.controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

@Controller
@RequestMapping("ckeditorUpload")
public class CkeditorUploadController {
	
	/** 
	 * 上传图片文件夹 
	 */  
	private static final String UPLOAD_PATH = "upload";  
	
	/**
	 * 分隔符
	 */
	private static final String SEPA = File.separator;


	@RequestMapping("fileupload")
	public void fileUpload(@RequestParam("upload")CommonsMultipartFile file,HttpServletRequest request,HttpServletResponse response) throws IOException{
		
		response.setCharacterEncoding("UTF-8");		
        PrintWriter print = response.getWriter();  
        
		String callback = request.getParameter("CKEditorFuncNum");// CKEditor提交的一个参数
		String path = request.getRealPath(UPLOAD_PATH);//获取上传文件的路径

		String fileName = file.getOriginalFilename();//获取文件名称
		String uploadContentType = file.getContentType();//获取文件类型		
		String expandedName = "";  
		
		if (uploadContentType.equals("image/pjpeg")  
		|| uploadContentType.equals("image/jpeg")) {  
		// IE6上传jpg图片的headimageContentType是image/pjpeg，而IE9以及火狐上传的jpg图片是image/jpeg  
		expandedName = ".jpg";  
		} else if (uploadContentType.equals("image/png")  
		|| uploadContentType.equals("image/x-png")) {  
		// IE6上传的png图片的headimageContentType是"image/x-png"  
		expandedName = ".png";  
		} else if (uploadContentType.equals("image/gif")) {  
		expandedName = ".gif";  
		} else if (uploadContentType.equals("image/bmp")) {  
		expandedName = ".bmp";  
		} else {  
			print.println("<script type=\"text/javascript\">");  
			print.println("window.parent.CKEDITOR.tools.callFunction("  
		+ callback + ",'',"  
		+ "'文件格式不正确（必须为.jpg/.gif/.bmp/.png文件）');");  
			print.println("</script>");  
		return;  
		} 		
		
		if (file.getSize() > 1024 * 1024 * 2) {  
			print.println("<script type=\"text/javascript\">");  
			print.println("window.parent.CKEDITOR.tools.callFunction("  
			+ callback + ",''," + "'文件大小不得大于2M');");  
			print.println("</script>");  
			return;  
		}  
		
		String randomName = java.util.UUID.randomUUID().toString();//采用UUID的方式随机命名  
		fileName = randomName + expandedName;  
		file.transferTo(new File(path + SEPA + fileName));  

        // 返回“图像”选项卡并显示图片  
		print.println("<script type=\"text/javascript\">");    
		print.println("window.parent.CKEDITOR.tools.callFunction(" + callback + ",'" + "../upload/" + fileName + "','')");    
		print.println("</script>");  

	}
}
