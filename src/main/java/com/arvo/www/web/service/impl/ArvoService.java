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
import com.arvo.www.web.service.IArvoService;

@Service("arvoService")
public class ArvoService implements IArvoService, MessageSourceAware {

	final static Logger logger = LoggerFactory.getLogger(ArvoService.class);

	@Resource(name = "commonDao")
	private ICommonDAO commonDao;
	
	private MessageSource messageSource;

	public void setMessageSource(MessageSource messageSource) {
		this.messageSource = messageSource;
	}

	
	public CommonMap getTestData() throws Exception {
		return commonDao.getTestData("test.getName");
	}


	@Override
	public int loginCheck(String id) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}


	@Override
	public CommonList getVideoAll() throws Exception {
		return commonDao.getVideoAll("content.getVideoAll");
	}

	
	
	
	
	
}
