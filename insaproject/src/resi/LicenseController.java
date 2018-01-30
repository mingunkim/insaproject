package resi;

import java.io.PrintWriter;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LicenseController {
	PrintWriter pw;

			LicenseDao dao;
			public LicenseController(){}
			public LicenseController(LicenseDao dao) {
			this.dao = dao;
			}		
		
			@RequestMapping(value = "/insertR.pgb")
			public ModelAndView insert(LicenseVo vo) {//enctype때문에 vo로 받을수없어서 HttpServlet으로받는다
				ModelAndView mv = new ModelAndView();
				String msg = dao.insert(vo);
				mv.addObject("msg", msg);
				mv.setViewName("NewFile");
				return mv;
			}
	
}
