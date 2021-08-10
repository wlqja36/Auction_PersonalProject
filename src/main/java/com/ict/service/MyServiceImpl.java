package com.ict.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ict.dao.MyDAO;
import com.ict.vo.MVO;
import com.ict.vo.VO;

@Service
public class MyServiceImpl implements MyService{
	@Autowired
	private MyDAO myDAO;

	

	@Override
	public List<VO> selectAuctionList(String category) throws Exception {
		return myDAO.selectAuctionList(category);
	}
	@Override
	public int insertProduct(VO vo) throws Exception {
		return myDAO.insertProduct(vo);
	}
	@Override
	public MVO selectAuctionLogIn(MVO mvo) throws Exception {
		return myDAO.selectAuctionLogIn(mvo);
	}
	@Override
	public MVO selectUserOne(String u_id) throws Exception {
		return myDAO.selectUserOne(u_id);
	}
	@Override
	public VO selectOneList(int p_num) throws Exception {
		return myDAO.selectOneList(p_num);
	}
	/*
	@Override
	public VO selectShopOneList(String idx) throws Exception {
		return myDAO.selectShopOneList(idx);
	}

	@Override
	public MVO selectShopLogIn(MVO mvo) throws Exception {
		return myDAO.selectShopLogIn(mvo);
	}

	@Override
	public CVO selectShopCartSearch(String id, String p_num) throws Exception {
		return myDAO.selectShopCartSearch(id, p_num);
	}

	@Override
	public int insertShopCartAdd(CVO cvo) throws Exception {
		return myDAO.insertShopCartAdd(cvo);
	}

	@Override
	public int updateShopCartUp(CVO cvo) throws Exception {
		return myDAO.updateShopCartUp(cvo);
	}

	@Override
	public List<CVO> selectShopCartList(String id) throws Exception {
		return myDAO.selectShopCartList(id);
	}
	
	@Override
	public int deleteCartDel(CVO cvo) throws Exception {
		return myDAO.deleteCartDel(cvo);
	}

	@Override
	public int updateCartAmount(CVO cvo) throws Exception {
		return myDAO.updateCartAmount(cvo);
	}
	@Override
	public int insertShopProductAdd(VO vo) throws Exception {
		return myDAO.insertShopProductAdd(vo);
	}
	
	*/
}
