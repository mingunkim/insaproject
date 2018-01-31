package member;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MemberController {
	MemberDao dao;
	
	public MemberController(){}
	public MemberController(MemberDao dao) {
		this.dao = dao;
	}
	
	@RequestMapping(value="/Member/login.mb", method={RequestMethod.GET, RequestMethod.POST})
	public ModelAndView login(MemberVo vo) {
		ModelAndView mv = new ModelAndView();
		MemberVo v = dao.login(vo);
		
		if(v.getMsg().equals("로그인 성공")) { //로그인 성공
			
			mv.setViewName("../index.jsp");
		} else { //로그인 실패
			mv.addObject("vo", v);
			mv.setViewName("login.jsp");
		}
		return mv;
	}
	
}
