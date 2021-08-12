package com.ict.controller;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.ict.service.MyService;
import com.ict.vo.BVO;
import com.ict.vo.MVO;
import com.ict.vo.VO;

@Controller
public class MyController {
	@Autowired
	private MyService myService;
	// 메인화면
	@RequestMapping("main.do")
	public ModelAndView mainCommand(HttpServletRequest request, HttpSession session) {
		try {
			ModelAndView mv = new ModelAndView("1_main");
			String category = request.getParameter("category");
			// 첫번째 들어올때는 파라미터가 null 이다.
			if(category == null) {
				category = "m1";
			}
			List<VO> list = myService.selectAuctionList(category);
			mv.addObject("list", list);
			MVO mvo = null;
			if(session.getAttribute("log_in") == "1") {
				String u_id = (String)session.getAttribute("log_id");
				mvo = myService.selectUserOne(u_id);
				mv.addObject("mvo", mvo);
				return mv;
				
			}else {
				return mv;
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return null;
	}
	@RequestMapping(value = "addProduct_ok.do", method = RequestMethod.POST)
	public ModelAndView addProductOKCommand(VO vo, HttpServletRequest request, HttpSession session) {
		try {
			/*
			 * System.out.println("제목"+vo.getP_name());
			 * System.out.println("시작가"+vo.getS_price());
			 * System.out.println("호가"+vo.getA_price());
			 * System.out.println("이미지이름F"+vo.getF_name());
			 * System.out.println("이미지이름P"+vo.getP_img());
			 * System.out.println("내용"+vo.getP_info());
			 * System.out.println("거래방법"+vo.getTrade());
			 * System.out.println("끝나는날짜"+vo.getE_day());
			 * System.out.println("유저넘버"+vo.getU_num());
			 * System.out.println("카테고리"+vo.getCategory());
			 */
			
			
			
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
			System.out.println(e);
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
				return new ModelAndView("redirect:main.do");
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
	@RequestMapping(value="joinOk.do", method = RequestMethod.POST)
	public ModelAndView joinOkCommand(MVO mvo) {
		try {
			/*
			 * System.out.println("u_id"+mvo.getU_id());
			 * System.out.println("u_pw"+mvo.getU_pw());
			 * System.out.println("u_name"+mvo.getU_name());
			 * System.out.println("u_nick"+mvo.getU_nick());
			 * System.out.println("u_email"+mvo.getU_email());
			 */
			
			int result = myService.insertUser(mvo);
			return new ModelAndView("3_joinOk");
			
		} catch (Exception e) {
			System.out.println(e);
		}
		return null;
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
	public ModelAndView productInfoCommand(HttpSession session,HttpServletRequest request) {
		try {
			ModelAndView mv = new ModelAndView("5_product_info"); 
			int p_num = Integer.parseInt(request.getParameter("p_num"));
			VO vo = myService.selectOneList(p_num);
			String u_id = (String)session.getAttribute("log_id");
			MVO mvo = myService.selectUserOne(u_id);
			mv.addObject("mvo", mvo);
			mv.addObject("vo",vo);
			return mv;
		}catch(Exception e){
			System.out.println(e);
		}
		return null;
	}
	@RequestMapping("myPage.do")
	public ModelAndView myPageCommand(HttpSession session) {
		try {
			
			ModelAndView mv = new ModelAndView("6_mypage");
			String u_id = (String)session.getAttribute("log_id");
			MVO mvo = myService.selectUserOne(u_id);
			mv.addObject("mvo", mvo);
			return mv;
		}catch (Exception e) {
			System.out.println(e);
		}
		
		return null;
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
	@RequestMapping(value = "idCheck.do", method = RequestMethod.POST)
	public void idCheck(HttpServletResponse response, @RequestParam("u_id") String u_id) {
		try {
			MVO mvo = new MVO();
			mvo = myService.selectUserOne(u_id);
			if(mvo == null) {
				response.getWriter().print("1");
			}else {
				response.getWriter().print("0");
			}
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e);
		}
		
	}
	@RequestMapping(value = "nickCheck.do", method = RequestMethod.POST)
	public void nickCheck(HttpServletResponse response, @RequestParam("u_nick") String u_nick) {
		try {
			MVO mvo = new MVO();
			mvo = myService.selectUserOneNick(u_nick);
			if(mvo == null) {
				response.getWriter().print("1");
			}else {
				response.getWriter().print("0");
			}
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e);
		}
		
	}
	@RequestMapping("logout.do")
	public ModelAndView logOutCommand(HttpSession session) {
		session.invalidate();
		return new ModelAndView("redirect:main.do");
	}
	@RequestMapping("addBid.do")
	public ModelAndView addBidCommand(BVO bvo,HttpServletRequest request, HttpSession session, HttpServletResponse response,
			@RequestParam("p_num") int p_num,@RequestParam("b_price") int b_price) {
		try {
			String u_id = (String)session.getAttribute("log_id");
			
			MVO mvo = myService.selectUserOne(u_id);
			
			bvo.setU_num(mvo.getU_num());
			bvo.setP_num(p_num);
			bvo.setB_price(b_price);
			
			myService.insertBid(bvo);
			myService.updateN_price(bvo);
			VO vo = myService.selectOneList(p_num);
			response.getWriter().print(vo.getN_price());
		} catch (Exception e) {
			System.out.println(e);
		}
		return null;
	}
	@RequestMapping("selectBid.do")
	public ModelAndView selectBidCommand(@RequestParam("p_num") int p_num) {
		try {
			
		} catch (Exception e) {
			System.out.println(e);
		}
		return null;
	}
}
