
/**
 * 
 */
package com.AD2015.americanDream.controller;

import java.util.List;

import javax.swing.JOptionPane;

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
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String main() {
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
	public List<Hero> getHeroNames() {
		return heroService.getHeroNames();
	}
	
	@RequestMapping(value = "/hero/{hero}", method = RequestMethod.POST)
	public void createHero(@PathVariable Hero hero) {
		heroService.create(hero);
	}
}
