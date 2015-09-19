package com.arvo.www.web.controller;

import java.util.ArrayList;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.MessageSource;
import org.springframework.context.MessageSourceAware;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.arvo.www.dao.ICommonDAO;
import com.arvo.www.utils.CommonList;
import com.arvo.www.web.service.IVideoService;



@Controller
@RequestMapping("/video/*")
public class VideoController  implements MessageSourceAware{
	
	private static final Logger logger = LoggerFactory.getLogger(VideoController.class);

	@Resource(name = "commonDao")
	private ICommonDAO commonDao;
	
	@Resource(name = "videoService")
	private IVideoService videosv;

	private MessageSource messageSource;
	public void setMessageSource(MessageSource messageSource) {
		this.messageSource = messageSource;
	}
	
	
	
	@RequestMapping("videoAdd")
	public ModelAndView getVideo(HttpServletRequest request, HttpSession session, HttpServletResponse response, @RequestParam Map<String, Object> map) throws Exception {
		System.out.println("video videoAdd ?”ì²­ ?±ê³µ");
		
		
		ModelAndView mav;
		mav = new ModelAndView();
		mav.setViewName("jsonView");
		
		int page = 0;
		if (request.getParameter("page") == null)
			page = 0;
		else
			page = Integer.parseInt(request.getParameter("page"));
		JSONObject jobj = new JSONObject();
		JSONArray jarr = new JSONArray();
		CommonList resultList = new CommonList();
		resultList = videosv.getVideoAdd(page);
		//System.out.println("chk1 = " + resultList.getMap(0).get("youtube_id"));
		//System.out.println("chk1 = " + resultList.getMap(1).get("youtube_id"));
		//System.out.println("chk2 = " + resultList.getMap(0).get("title"));
		ArrayList arrList = new ArrayList();
		ArrayList arrList2 = new ArrayList();
		ArrayList arrList3 = new ArrayList();
		ArrayList arrList4 = new ArrayList();
		for(int i=0;i<resultList.size();i++){
			arrList.add(resultList.getMap(i).get("youtube_id"));
			arrList2.add(resultList.getMap(i).get("thumb"));
			arrList3.add(resultList.getMap(i).get("post_tag"));
			arrList4.add(resultList.getMap(i).get("title"));
		}
		mav.addObject("result", arrList);
		mav.addObject("result2", arrList2);
		mav.addObject("result3", arrList3);
		mav.addObject("result4", arrList4);
		System.out.println("?¬ì´ì¦ˆëŠ” == " + resultList.size());
		logger.info("?ŒìŠ¤?¸ë¡œ ë°›ì•„??³¸ê²?: " + map);
		
		//mav.addObject("loginCheck", "form");
		return mav;
	}
	
	
}
