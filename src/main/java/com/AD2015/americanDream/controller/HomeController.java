
/**
 * 
 */
package com.AD2015.americanDream.controller;





import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.AD2015.americanDream.models.Hero;
import com.AD2015.americanDream.service.HeroService;

/**
 * 
 * @author aKuznetsov
 *
 */
@Controller
public class HomeController {
	
	HeroService heroService;
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
	@RequestMapping(value = "/hero/{username}", method = RequestMethod.GET)
	public Hero getHero(@PathVariable String username)
	{
		return heroService.getHeroByUserName(username);
	}
	
}


