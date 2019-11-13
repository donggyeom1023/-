package com.myboot01;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class DemoController {

	@ResponseBody
	@RequestMapping("/") // 모든 요청을 처리
	public String home() {
		
		System.out.println("Hello Boot!!");
		
		return "Hello Boot!!"; // 브라우저로 출력
		
	}
	
}
