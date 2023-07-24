package com.itwillbs.home;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
// @Controller 주소매핑하는 클래스 파일 임무 지정
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	// @RequestMapping  자동으로 뽑은 주소  = "/" 비교, GET방식
//	    일치하면 home메서드 자동으로 동작
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
//		//로고 출력
//		logger.info("Welcome home! The client locale is {}.", locale);
//		
//		//날짜 생성
//		Date date = new Date();
//		// 날짜 포맷 생성
//		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
//		
//		// 날짜를 -> 날짜 포맷 변경 -> 문자열 저장
//		String formattedDate = dateFormat.format(date);
//		
//		// 이름,값 데이터를 담아서 이동하는 곳으로 들고감
//		model.addAttribute("serverTime", formattedDate );
//		
//		//  /WEB-INF/views/파일이름.jsp
//		//  /WEB-INF/views/home.jsp
//		//  주소변경 없이 이동 (dis.forward(request, response))
//		return "home";

		//  /주소가 들어오면 => /member/main 이동  
		
		return "redirect:/member/main";
		
	}

	
}
