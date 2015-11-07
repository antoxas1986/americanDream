
/**
 * 
 */
package com.AD2015.americanDream.webServices;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.AD2015.americanDream.models.Hero;
import com.AD2015.americanDream.service.HeroService;

/**
 * 
 * @author aKuznetsov
 *
 */
@RestController
public class HeroWebService {

	@Autowired
	HeroService heroService;

	
	
	
	@RequestMapping(value = "/hero", method = RequestMethod.POST)
	public void createHero(@RequestBody Hero hero) {
		System.out.println(hero.getAge());
		heroService.create(hero);
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String main2() {
		return "index";
	}

	@RequestMapping(value = "/hero/{username}", method = RequestMethod.GET)
	public Hero getHero(@PathVariable String username) {
		return heroService.getHeroByUserName(username);
	}
	
	@RequestMapping(value = "/names", method = RequestMethod.GET)
	public List<String> getHeroNames() {
		return heroService.getHeroNames();
	}
}
