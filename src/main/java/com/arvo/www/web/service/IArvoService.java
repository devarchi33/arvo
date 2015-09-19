package com.arvo.www.web.service;

import com.arvo.www.utils.CommonList;
import com.arvo.www.utils.CommonMap;

public interface IArvoService {
	//로그??체크
	public int loginCheck(String id) throws Exception;
	public CommonMap getTestData() throws Exception;
	public CommonList getVideoAll() throws Exception;

}