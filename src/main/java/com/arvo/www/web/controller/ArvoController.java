package com.arvo.www.web.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.arvo.www.dao.ICommonDAO;
import com.arvo.www.utils.CommonMap;
import com.arvo.www.utils.CommonList;
import com.arvo.www.utils.CommonUtil;
import com.arvo.www.web.service.IArvoService;
import com.arvo.www.web.service.IVideoService;



/**
 * Handles requests for the application home page.
 */
@Controller
public class ArvoController {
	
	@Resource(name = "commonDao")
	private ICommonDAO commonDao;
	
	@Resource(name = "videoService")
	private IVideoService videosv;
	
	private static final Logger logger = LoggerFactory.getLogger(ArvoController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 * @throws Exception 
	 */
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public ModelAndView home(Locale locale, Model model, HttpServletRequest request, HttpSession session) throws Exception {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		//System.out.println(request.getParameter("test"));
		String formattedDate = dateFormat.format(date);
		System.out.println("home");
		System.out.println(formattedDate);
		System.out.println(request.getRemoteAddr());
		ModelAndView mav;
		int totalPage = 0;
		mav = new ModelAndView("main");
		CommonMap resultMap = new CommonMap();
		//resultMap = arvosv.getTestData();
		//System.out.println("aa = " + resultMap.get("name"));
		CommonList resultList = new CommonList();
		resultList = videosv.getVideoAdd(0);
		mav.addObject("resultList", resultList);
		resultList = videosv.getPopularVideo();
		int cnt = CommonUtil.getRandom()-1;
		resultMap = resultList.getMap(cnt);
		mav.addObject("popularList", resultMap);
		mav.addObject("ipAddr", request.getRemoteAddr());
		
		
		
		return mav;
	}
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView home2(Locale locale, Model model, HttpServletRequest request, HttpSession session) throws Exception {
logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		//System.out.println(request.getParameter("test"));
		String formattedDate = dateFormat.format(date);
		System.out.println("/");
		System.out.println(formattedDate);
		System.out.println(request.getRemoteAddr());
		ModelAndView mav;
		int totalPage = 0;
		mav = new ModelAndView("main");
		CommonMap resultMap = new CommonMap();
		//resultMap = arvosv.getTestData();
		//System.out.println("aa = " + resultMap.get("name"));
		CommonList resultList = new CommonList();
		resultList = videosv.getVideoAdd(0);
		mav.addObject("resultList", resultList);
		resultList = videosv.getPopularVideo();
		int cnt = CommonUtil.getRandom()-1;
		resultMap = resultList.getMap(cnt);
		mav.addObject("popularList", resultMap);
		mav.addObject("ipAddr", request.getRemoteAddr());
	
		
		
		return mav;
	}
	
}
