package com.arvo.www.web.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.arvo.www.dao.ICommonDAO;
import com.arvo.www.utils.CommonList;
import com.arvo.www.web.service.IArtistDetailService;

@Controller
public class ArtistDetailController {

	private static final Logger logger = LoggerFactory
			.getLogger(ArtistDetailController.class);

	@Resource(name = "commonDao")
	private ICommonDAO commonDao;

	@Resource(name = "artistDetailService")
	private IArtistDetailService artistDetailService;

	@RequestMapping(value = "/artistDetail", method = RequestMethod.GET)
	public ModelAndView artistDetailView(HttpServletRequest request,
			HttpSession session, HttpServletResponse response) throws Exception {

		int artistId = Integer.parseInt(request.getParameter("artistId"));
		
		CommonList detailContentsList = artistDetailService.getArtistDetailPortfolio(artistId);
		
		ModelAndView mv = new ModelAndView("artistMain");
		mv.addObject("detailContentsList", detailContentsList);
		
		logger.info("detailContentsList[0] : " + detailContentsList.get(0));
		
		return mv;
	}
}
