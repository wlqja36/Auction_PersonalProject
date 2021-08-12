package com.ict.service;

import java.util.List;

import com.ict.vo.BVO;
import com.ict.vo.MVO;
import com.ict.vo.VO;


public interface MyService {
	
	List<VO> selectAuctionList(String category) throws Exception;
	int insertProduct(VO vo) throws Exception;
	MVO selectAuctionLogIn(MVO mvo) throws Exception;
	MVO selectUserOne(String u_id) throws Exception;
	MVO selectUserOneNick(String u_nick) throws Exception;
	VO selectOneList(int p_num) throws Exception;
	int insertUser(MVO mvo) throws Exception;
	int insertBid(BVO bvo) throws Exception;
	int updateN_price(BVO bvo) throws Exception;
	List<BVO> selectBid(int p_num) throws Exception;
	/*
	VO selectShopOneList(String idx) throws Exception;
	MVO selectShopLogIn(MVO mvo) throws Exception;
	
	
	CVO selectShopCartSearch(String id,String p_num) throws Exception;
	int insertShopCartAdd(CVO cvo) throws Exception;
	int updateShopCartUp(CVO cvo) throws Exception;
	
	List<CVO> selectShopCartList(String id) throws Exception;
	int deleteCartDel(CVO cvo) throws Exception ;
	int updateCartAmount(CVO cvo) throws Exception;
	
	
	int insertShopProductAdd(VO vo) throws Exception;
	*/
}
