package com.arvo.www.web.service.impl;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.MessageSource;
import org.springframework.context.MessageSourceAware;
import org.springframework.stereotype.Service;

import com.arvo.www.dao.ICommonDAO;
import com.arvo.www.utils.CommonList;
import com.arvo.www.utils.CommonMap;
import com.arvo.www.web.service.IVideoService;

@Service("videoService")
public class VideoService implements IVideoService, MessageSourceAware {

	final static Logger logger = LoggerFactory.getLogger(VideoService.class);

	@Resource(name = "commonDao")
	private ICommonDAO commonDao;
	
	private MessageSource messageSource;

	public void setMessageSource(MessageSource messageSource) {
		this.messageSource = messageSource;
	}


	@Override
	public CommonList getVideoAdd(int page) throws Exception {
		return commonDao.getVideoAdd("content.getVideoAdd", page);
	}


	@Override
	public CommonList getPopularVideo() throws Exception {
		return commonDao.getPopularVideo("content.getPopularVideo");
	}


	

	
	
	
	
	
}
