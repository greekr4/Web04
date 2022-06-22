package com.tkhospital.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.UUID;

import javax.annotation.Resource;
import javax.inject.Inject;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.IOUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.tkhospital.common.MediaUtils;
import com.tkhospital.common.ScriptUtils;
import com.tkhospital.common.UploadFileUtils;
import com.tkhospital.dto.BoardDTO;
import com.tkhospital.dto.Data_BoardDTO;
import com.tkhospital.service.Data_BoardService;


/**
 * Handles requests for the application home page.
 */



@Controller
@RequestMapping("/data_board/*")
public class Data_BoardController {

	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	
	@Resource(name = "uploadPath")
	private String uploadPath;
	
	@Inject
	private Data_BoardService service;
	
	ScriptUtils ScriptUtils = new ScriptUtils();
	
	
	

	
	@RequestMapping("data_boardList")
	public String boardList(Model model,HttpServletResponse response) throws Exception {
		List<Data_BoardDTO> list = service.boardList();
		model.addAttribute("list",list);
		return "databank/data_boardList";
	}
	
	@RequestMapping("WriteForm")
	public String WriteForm(Model model,HttpServletResponse response) throws Exception {
		return "databank/databankWriteForm";
	}
	
	@RequestMapping(value = "more",method = RequestMethod.GET)
	public String boardRead(Model model,@RequestParam int no) throws Exception {
		Data_BoardDTO DTO = service.boardRead(no);
		model.addAttribute("DTO",DTO);
		return "databank/data_boardMore";
	}
	
	
	@RequestMapping(value = "uploadForm", method = RequestMethod.GET)
	public String uploadFormGET() {
		return "databank/uploadForm";
	}
	/////////////////////////
	
	
	@RequestMapping(value = "insert",method = RequestMethod.POST)
	public String boardWrite(Model model,Data_BoardDTO DTO,HttpServletResponse response) throws Exception {
		service.boardWrite(DTO);
		ScriptUtils.alertAndMovePage(response, "글쓰기성공", "./list");
//		List<BoardDTO> list = service2.boardList();
//		model.addAttribute("list2",list);
		return "redirect:.board/list"; 
	}
	
	
	
	
	
	
	/////////////////////
	//Post 방식으로 업로드 폼 열기
	@RequestMapping("uploadForm")  
	public String uploadFormPOST(MultipartFile file, Model model) throws Exception {
		logger.info("uploadFormPost");
		if(file != null) {
			logger.info("originalName:" + file.getOriginalFilename());
			logger.info("size:" + file.getSize());
			logger.info("ContentType:" + file.getContentType());
		}
		String savedName = uploadFile(file.getOriginalFilename(), file.getBytes());
		model.addAttribute("savedName", savedName);
		model.addAttribute("uploadFile", savedName);
		return "databank/uploadForm";
	}

	
	private String uploadFile(String originalName, byte[] fileDate) throws IOException {
		UUID uid = UUID.randomUUID();
		String savedName = uid.toString() + "_" + originalName;
		File target = new File(uploadPath, savedName);
		FileCopyUtils.copy(fileDate, target);		
		return savedName;
	}
	
	
	
	
	
	
	
	
	//Ajax 파일 업로드
	@RequestMapping(value="uploadAjax.do", method = RequestMethod.GET)
	public String uploadAjaxGET() {
		return "databank/uploadAjax";
	}
	
	//Ajax로 한글 파일이름이나 데이터를 받아서 처리
	@ResponseBody
	@RequestMapping(value="uploadAjax.do", method = RequestMethod.POST, produces="text/plain;charset=UTF-8")
	public ResponseEntity<String> uploadAjaxPOST(MultipartFile file, Model model) throws Exception {
		logger.info("originalName:" + file.getOriginalFilename());
		logger.info("size:" + file.getSize());
		logger.info("contentType:" + file.getContentType());
		model.addAttribute("uploadFile", file.getOriginalFilename());
		return new ResponseEntity<>(UploadFileUtils.uploadFile(uploadPath, file.getOriginalFilename(), file.getBytes()), HttpStatus.CREATED);
	}
	
	
	
	
	//화면에 저장된 파일을 보여주는 컨트롤러 /년/월/일/파일명 형태
	@ResponseBody
	@RequestMapping(value="displayFile.do", method = RequestMethod.GET)
	public ResponseEntity<byte[]> displayFile(String fileName) throws Exception {
		InputStream in = null;
		ResponseEntity<byte[]> entity = null;		
		logger.info("File name: " + fileName);
		try {
			String formatName = fileName.substring(fileName.lastIndexOf(".")+1);			
			MediaType mType = MediaUtils.getMediaType(formatName);
			HttpHeaders headers = new HttpHeaders();
			in = new FileInputStream(uploadPath + fileName);		
			if(mType != null) {
				headers.setContentType(mType);
			}else {
				fileName = fileName.substring(fileName.indexOf("_")+1);
				headers.setContentType(MediaType.APPLICATION_OCTET_STREAM);
				headers.add("Content-Disposition", "attachment; filename=\"" + new String(fileName.getBytes("UTF-8"), "ISO-8859-1") + "\"");
			}
			entity = new ResponseEntity<byte[]>(IOUtils.toByteArray(in), headers, HttpStatus.CREATED);			
		} catch(Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<byte[]>(HttpStatus.BAD_REQUEST);
		} finally {
			in.close();
		}
		return entity;
	}
	
	@ResponseBody
	@RequestMapping(value="deleteFile.do", method = RequestMethod.POST)
	public ResponseEntity<String> deleteFile(String fileName) throws Exception {
		logger.info("delete file:" + fileName);		
		String formatName = fileName.substring(fileName.lastIndexOf(".")+1);
		MediaType mType = MediaUtils.getMediaType(formatName);		
		if(mType != null) {
			String front = fileName.substring(0, 12);
			String end = fileName.substring(14);
			new File(uploadPath + (front+end).replace('/', File.separatorChar)).delete();
		}//if
		new File(uploadPath + fileName.replace('/', File.separatorChar)).delete();	
		return new ResponseEntity<String>("deleted", HttpStatus.OK);
	}
	
}