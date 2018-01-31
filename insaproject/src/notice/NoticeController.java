package notice;

import java.io.File;
import java.io.IOException;
import java.net.InetAddress;
import java.util.List;

import javax.servlet.ServletContext;

import org.springframework.stereotype.Controller;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class NoticeController {
	ServletContext servletContext;
	

	@RequestMapping(value="insert")
	public ModelAndView insert() {
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("notice_insert");
		return mv;
	}

	@RequestMapping(value="upload")
	public String imageUpload(MultipartHttpServletRequest req) throws IOException {
		// req에서 멀티파트파일 을 받음
		MultiValueMap<String, MultipartFile> multiFileMap = req.getMultiFileMap();
		List<MultipartFile> list = multiFileMap.get(multiFileMap);
		MultipartFile multipartFile = list.get(0);
		
		// 파일을 전송
		String webappRoot = servletContext.getRealPath("/");
		String filename = /*UPLOADING + */multipartFile.getOriginalFilename();
		System.out.println(filename);
		File file = new File(webappRoot + filename);
		multipartFile.transferTo(file);
		
		// 마지막에 최종주소 반환
		String localIP = InetAddress.getLocalHost().getHostAddress();
		
		return "http://" + localIP + ":" + req.getServerPort() + filename;
	}
	
	
}
