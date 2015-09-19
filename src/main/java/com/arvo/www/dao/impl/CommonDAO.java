package com.arvo.www.dao.impl;

import java.util.ArrayList;
import java.util.List;
import java.sql.SQLException;




























import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

import com.arvo.www.dao.ICommonDAO;
import com.arvo.www.utils.CommonList;
import com.arvo.www.utils.CommonMap;



@Repository("commonDao")
public class CommonDAO extends SqlSessionDaoSupport implements ICommonDAO{
	
	public CommonMap selectMapNoParam(String query) throws SQLException{
		return (CommonMap) getSqlSession().selectOne(query);
	}
	public int selectCheck_id(String query, String id) throws SQLException{
		return  (Integer) getSqlSession().selectOne(query, id);
	}
	
	
	// 濡쒖슦 由ъ뒪��議고쉶
	public CommonList selectLIstNoParam(String query) throws SQLException{
		CommonList returnList;
		List list = getSqlSession().selectList(query);
		
		if (list != null)		returnList = new CommonList(list);
		else					returnList = new CommonList();
		
		return returnList;
	}
	public CommonList selectList(String query, CommonMap rParam) throws SQLException{
		CommonList returnList;
		List list = getSqlSession().selectList(query, rParam);
		
		if (list != null)		returnList = new CommonList(list);
		else					returnList = new CommonList();
		
		return returnList;
	}
	
	/*public int insert(String query, GyeInfo gyeInfo) throws SQLException {
		int result = getSqlSession().insert(query, gyeInfo);
		System.out.println("留덉씠諛뷀떚�ㅼ뿉��由ы꽩�섎뒗 int 媛믪� = " + result);
		return result;
	}*/
	
	// �낅젰
	public int insert(String query, CommonMap rParam) throws SQLException{
		int result = getSqlSession().insert(query, rParam);
		
		return result;
	}
	// �섏젙
	public int update(String query, CommonMap rParam) throws SQLException{
		int result = getSqlSession().update(query, rParam);
		return result;
	}
	// ��젣
	public int delete(String query, CommonMap rParam) throws SQLException{
		int result = getSqlSession().delete(query, rParam);
		return result;
	}
	
	/*public CommonList selectList(String query, GyeInfo gyeInfo)
			throws SQLException {
		CommonList returnList;
		List list = getSqlSession().selectList(query, gyeInfo);
		
		if (list != null)		returnList = new CommonList(list);
		else					returnList = new CommonList();
		
		return returnList;
	}*/
	
	public CommonList selectList(String query, int page) throws SQLException {
		CommonList returnList;
		List list = getSqlSession().selectList(query, page);
		
		if (list != null)		returnList = new CommonList(list);
		else					returnList = new CommonList();
		
		return returnList;
	}
	
	public int getTotalCnt(String query) throws SQLException {
		return (Integer) getSqlSession().selectOne(query);
	}
	/*public int insert(String query, UserInfo2 userInfo2) throws SQLException {
		return getSqlSession().insert(query, userInfo2);
	}*/
	/*@Override
	public CommonList selectList(String query) throws SQLException {
		CommonList returnList;
		List list = getSqlSession().selectList(query);
		
		if (list != null)		returnList = new CommonList(list);
		else					returnList = new CommonList();
		
		return returnList;
	}
	@Override
	public CommonList hotList(String query) throws SQLException {
		CommonList returnList;
		List list = getSqlSession().selectList(query);
		
		if (list != null)		returnList = new CommonList(list);
		else					returnList = new CommonList();
		
		return returnList;
	}
	@Override
	public CommonList recommendList1(String query) throws SQLException {
		CommonList returnList;
		List list = getSqlSession().selectList(query);
		
		if (list != null)		returnList = new CommonList(list);
		else					returnList = new CommonList();
		
		return returnList;
	}
	
	@Override
	public CommonList recommendList2(String query) throws SQLException {
		CommonList returnList;
		List list = getSqlSession().selectList(query);
		
		if (list != null)		returnList = new CommonList(list);
		else					returnList = new CommonList();
		
		return returnList;
	}
	@Override
	public CommonList recommendList3(String query) throws SQLException {
		CommonList returnList;
		List list = getSqlSession().selectList(query);
		
		if (list != null)		returnList = new CommonList(list);
		else					returnList = new CommonList();
		
		return returnList;
	}
	@Override
	public CommonList recommendList4(String query) throws SQLException {
		CommonList returnList;
		List list = getSqlSession().selectList(query);
		
		if (list != null)		returnList = new CommonList(list);
		else					returnList = new CommonList();
		
		return returnList;
	}
	@Override
	public CommonList recommendList5(String query) throws SQLException {
		CommonList returnList;
		List list = getSqlSession().selectList(query);
		
		if (list != null)		returnList = new CommonList(list);
		else					returnList = new CommonList();
		
		return returnList;
	}
	@Override
	public CommonList recommendList6(String query) throws SQLException {
		CommonList returnList;
		List list = getSqlSession().selectList(query);
		
		if (list != null)		returnList = new CommonList(list);
		else					returnList = new CommonList();
		
		return returnList;
	}
	@Override
	public CommonList recommendList7(String query) throws SQLException {
		CommonList returnList;
		List list = getSqlSession().selectList(query);
		
		if (list != null)		returnList = new CommonList(list);
		else					returnList = new CommonList();
		
		return returnList;
	}
	@Override
	public CommonList allList(String query) throws SQLException {
		CommonList returnList;
		List list = getSqlSession().selectList(query);
		
		if (list != null)		returnList = new CommonList(list);
		else					returnList = new CommonList();
		
		return returnList;
	}
	@Override
	public CommonList cartList(String query, String code) throws SQLException {
		CommonList returnList;
		List list = getSqlSession().selectList(query, code);
		if (list != null)		returnList = new CommonList(list);
		else					returnList = new CommonList();
		
		return returnList;
	}*/
	@Override
	public CommonMap getTestData(String query) throws SQLException {
		return (CommonMap) getSqlSession().selectOne(query);
	}
	@Override
	public CommonList colorInfo(String query, String code) throws SQLException {
		CommonList returnList;
		List list = getSqlSession().selectList(query, code);
		if (list != null)		returnList = new CommonList(list);
		else					returnList = new CommonList();
		
		return returnList;
	}
	@Override
	public CommonList getOption(String query, CommonMap opMap)
			throws SQLException {
		CommonList returnList;
		List list = getSqlSession().selectList(query, opMap);
		if (list != null)		returnList = new CommonList(list);
		else					returnList = new CommonList();
		
		return returnList;
	}
	@Override
	public CommonList allList(String query) throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public CommonList cartList(String query, String code) throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public CommonList getVideoAll(String query) throws SQLException {
		CommonList returnList;
		List list = getSqlSession().selectList(query);
		if (list != null)		returnList = new CommonList(list);
		else					returnList = new CommonList();
		
		return returnList;
	}
	@Override
	public CommonList getVideoAdd(String query, int page) throws SQLException {
		CommonList returnList;
		List list = getSqlSession().selectList(query, page);
		
		if (list != null)		returnList = new CommonList(list);
		else					returnList = new CommonList();
		
		return returnList;
	}
	@Override
	public CommonList getPopularVideo(String query) throws SQLException {
		CommonList returnList;
		List list = getSqlSession().selectList(query);
		
		if (list != null)		returnList = new CommonList(list);
		else					returnList = new CommonList();
		
		return returnList;
	}
	@Override
	public CommonList getArtistDetailPortfolio(String query, int artistId) throws SQLException {
		// TODO Auto-generated method stub
		CommonList returnList;
		List list = getSqlSession().selectList(query, artistId);
		
		if (list != null)		returnList = new CommonList(list);
		else					returnList = new CommonList();
		
		return returnList;
	}
	
	
	
	

}
