package com.arvo.www.web.service;

import com.arvo.www.utils.CommonList;
import com.arvo.www.utils.CommonMap;

public interface IVideoService {
	
	public CommonList getVideoAdd(int page) throws Exception;
	public CommonList getPopularVideo() throws Exception;

}