package position;

import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class PositionController {
		PositionDao dao;
		PrintWriter pw;
		
		public PositionController(PositionDao dao) {
			this.dao  = dao;
		}
		
		@RequestMapping(value="/insert.pgb")
		public ModelAndView insert(PositionVo vo){
			ModelAndView mv = new ModelAndView();
			String msg = dao.insert(vo);
			
			List<PositionVo> list = dao.select(vo);
			mv.addObject("list",list);
			
			mv.addObject("msg", msg);
			/*pw.write("location.href ='list.pgb'");
			pw.flush();*/
			mv.setViewName("position_form");
			return mv;
		}
		@RequestMapping(value="/list.pgb")
		public ModelAndView select(PositionVo vo){
			ModelAndView mv = new ModelAndView();
			List<PositionVo> list = dao.select(vo);
			mv.addObject("list",list);
			mv.setViewName("position_form");
			return mv;
		}
		@RequestMapping(value="/modify.pgb")
		public ModelAndView modify(PositionVo vo){
			ModelAndView mv = new ModelAndView();
			String msg = dao.modify(vo);
			
			List<PositionVo> list = dao.select(vo);
			mv.addObject("list",list);
			mv.addObject("msg",msg);
			mv.setViewName("position_form");
			return mv;
		}
		
		@RequestMapping(value="/delete.pgb")
		public ModelAndView delete(PositionVo vo){
			ModelAndView mv = new ModelAndView();
			String msg = dao.delete(vo);
			List<PositionVo> list = dao.select(vo);
			mv.addObject("list",list);
			mv.addObject("msg",msg);
			mv.setViewName("position_form");
			return mv;
		}
		
		
		
}
