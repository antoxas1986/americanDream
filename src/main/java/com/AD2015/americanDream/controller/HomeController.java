
/**
 * 
 */
package com.AD2015.americanDream.controller;





import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
/**
 * 
 * @author aKuznetsov
 *
 */
@Controller
public class HomeController {
	
	/**
	 * @return
	 */
	@RequestMapping(value="/", method=RequestMethod.GET)
	public String main(){
		return "index";
	}
	@RequestMapping(value="/login", method=RequestMethod.GET)
	public String main2(){
		return "index";
	}
}


