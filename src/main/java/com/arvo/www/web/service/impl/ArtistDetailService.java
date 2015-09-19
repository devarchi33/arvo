package com.arvo.www.web.service.impl;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.arvo.www.dao.ICommonDAO;
import com.arvo.www.utils.CommonList;
import com.arvo.www.web.service.IArtistDetailService;

@Service("artistDetailService")
public class ArtistDetailService implements IArtistDetailService {
	final static Logger logger = LoggerFactory
			.getLogger(ArtistDetailService.class);

	@Resource(name = "commonDao")
	private ICommonDAO commonDao;

	@Override
	public CommonList getArtistDetailPortfolio(int artistId) throws Exception {
		// TODO Auto-generated method stub
		return commonDao.getArtistDetailPortfolio("artist_detail.getArtistDetailPortfolio", artistId);
	}

}
