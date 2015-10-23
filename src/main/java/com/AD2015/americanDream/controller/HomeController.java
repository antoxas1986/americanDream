
/**
 * 
 */
package com.AD2015.americanDream.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
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

	@Autowired
	HeroService heroService;

	/**
	 * @return
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String main() {
		String username = "Jack";
		Hero hero = heroService.getHeroByUserName(username);
		System.out.println("hero: " + hero.getName());
		System.out.println(getHeroNames());
		return "index";
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String main2() {
		return "index";
	}

	@RequestMapping(value = "/hero/{username}", method = RequestMethod.GET)
	public Hero getHero(@PathVariable String username) {
		return heroService.getHeroByUserName(username);
	}
	
	@RequestMapping(value = "/hero", method = RequestMethod.GET)
	public List<String> getHeroNames() {
		return heroService.getHeroNames();
	}
	
	@RequestMapping(value = "/hero", method = RequestMethod.POST)
	public void createHero(@RequestBody Hero hero) {
		heroService.create(hero);
		System.out.println(hero.getName());
	}
}
