package com.ict.controller;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.ict.service.MyService;
import com.ict.vo.MVO;
import com.ict.vo.VO;

@Controller
public class MyController {
	@Autowired
	private MyService myService;
	// 메인화면
	@RequestMapping("main.do")
	public ModelAndView mainCommand(HttpServletRequest request) {
		try {
			ModelAndView mv = new ModelAndView("1_main");
			String category = request.getParameter("category");
			// 첫번째 들어올때는 파라미터가 null 이다.
			if(category == null) {
				category = "m1";
			}
			List<VO> list = myService.selectAuctionList(category);
			mv.addObject("list", list);
			return mv;
		} catch (Exception e) {
			System.out.println(e);
		}
		return null;
	}
	@RequestMapping(value = "addProduct_ok.do", method = RequestMethod.POST)
	public ModelAndView addProductOKCommand(VO vo, HttpServletRequest request) {
		try {
			String path = request.getSession().getServletContext().getRealPath("/resources/upload");
			MultipartFile file = vo.getF_name();
			if(file.isEmpty()) {
				vo.setP_img("");
			}else {
				vo.setP_img(file.getOriginalFilename());
			}
			int result = myService.insertProduct(vo);
			if(result>0) {
				if(! vo.getP_img().isEmpty()) {
					byte[] in = file.getBytes();
					File out = new File(path, vo.getP_img());
					FileCopyUtils.copy(in, out);
				}
				return new ModelAndView("redirect:main.do");
			}else {
				return new ModelAndView("redirect:addProduct.do");
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return null;
	}
	// 로그인 화면
	@RequestMapping("login.do")
	public ModelAndView loginCommand() {
		return new ModelAndView("2_login");
	}
	@RequestMapping("login_ok.do")
	public ModelAndView logInOkCommand(MVO m_vo, HttpSession session) {
		try {
			MVO mvo = myService.selectAuctionLogIn(m_vo);
			if(mvo == null) {
				session.setAttribute("log_in","0");
				return new ModelAndView("login_err");
			}else {
				session.setAttribute("log_in","1");
				session.setAttribute("log_id",mvo.getU_id());
				session.setAttribute("log_num",mvo.getU_num());
				
				// 관리자인 경우
				if(mvo.getU_admin()==1) {
					session.setAttribute("admin", "ok");
					return new ModelAndView("1_main_admin");
				}
				// 관리자가 아니면 일반 회원
				return new ModelAndView("redirect:mainLogin.do");
			}
		} catch (Exception e) {
			session.setAttribute("log_in","0");
		}
		return null;
	}
	// 회원가입화면
	@RequestMapping("join.do")
	public ModelAndView joinCommand() {
		return new ModelAndView("3_join");
	}
	// 회원가입 완료화면
	@RequestMapping("joinOk.do")
	public ModelAndView joinOkCommand() {
		return new ModelAndView("3_joinOk");
	}
	// 제품추가 화면
	@RequestMapping("addProduct.do")
	public ModelAndView addProductCommand(HttpSession session) {
		try {
			ModelAndView mv = new ModelAndView("4_add_Product"); 
			String u_id = (String)session.getAttribute("log_id");
			MVO mvo = myService.selectUserOne(u_id);
			mv.addObject("mvo", mvo);
			
			return mv;
		} catch (Exception e) {
			System.out.println(e);
		}
		return null;
	}

	// 제품 설명 화면
	@RequestMapping("productInfo.do")
	public ModelAndView productInfoCommand() {
		return new ModelAndView("5_product_info");
	}
	@RequestMapping("myPage.do")
	public ModelAndView myPageCommand() {
		return new ModelAndView("6_mypage");
	}
	@RequestMapping("adminPage.do")
	public ModelAndView adminPageCommand() {
		return new ModelAndView("7_adminpage");
	}
	@RequestMapping(value="mainLogin.do", produces="text/html; charset=utf-8" )
	@ResponseBody
	public ModelAndView mainLoginCommand(HttpSession session,HttpServletRequest request) {
		try {
			ModelAndView mv = new ModelAndView("1_main_login"); 
			String category = request.getParameter("category");
			// 첫번째 들어올때는 파라미터가 null 이다.
			if(category == null) {
				category = "m1";
			}
			List<VO> list = myService.selectAuctionList(category);
			mv.addObject("list", list);
			String u_id = (String)session.getAttribute("log_id");
			MVO mvo = myService.selectUserOne(u_id);
			mv.addObject("mvo", mvo);
			
			return mv;
		} catch (Exception e) {
			System.out.println(e);
		}
		return null;
	}
	
	
}
