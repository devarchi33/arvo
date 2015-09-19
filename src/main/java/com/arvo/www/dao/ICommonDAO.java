package com.arvo.www.dao;

import java.sql.SQLException;
import java.util.ArrayList;

import com.arvo.www.utils.CommonList;
import com.arvo.www.utils.CommonMap;



public interface ICommonDAO {
	
	// 조회
	
	/*public int selectCheck_id(String query, String id) throws SQLException;
	public int insert(String query, GyeInfo gyeInfo) throws SQLException;
	public int insert(String query, UserInfo2 userInfo2) throws SQLException;
	public int getTotalCnt(String query) throws SQLException;						
	public CommonList selectList(String query, GyeInfo gyeInfo) throws SQLException;
	public CommonList selectList(String query) throws SQLException;
	public CommonList selectList(String query, CommonMap map) throws SQLException;
	public CommonList selectList(String query, int page) throws SQLException;
	public CommonList hotList(String query) throws SQLException;
	public CommonList recommendList1(String query) throws SQLException;
	public CommonList recommendList2(String query) throws SQLException;
	public CommonList recommendList3(String query) throws SQLException;
	public CommonList recommendList4(String query) throws SQLException;
	public CommonList recommendList5(String query) throws SQLException;
	public CommonList recommendList6(String query) throws SQLException;
	public CommonList recommendList7(String query) throws SQLException;*/
	public CommonList allList(String query) throws SQLException;
	public CommonList cartList(String query, String code) throws SQLException;
	public CommonMap getTestData(String query) throws SQLException;
	public CommonList colorInfo(String query, String code) throws SQLException;
	public CommonList getOption(String query, CommonMap opmap) throws SQLException;
	public CommonList getVideoAll(String query) throws SQLException;
	public CommonList getVideoAdd(String query, int page) throws SQLException;
	public CommonList getPopularVideo(String query) throws SQLException;
	public CommonList getArtistDetailPortfolio(String query, int artistId)throws SQLException;
	
}
