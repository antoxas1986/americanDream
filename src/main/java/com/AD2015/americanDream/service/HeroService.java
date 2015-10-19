package com.AD2015.americanDream.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.AD2015.americanDream.models.Hero;

@Service
public interface HeroService {
	
	public void create(Hero hero);
	public void update(Hero hero);
	public void delete (String username);
    Hero getHeroByUserName(String username);
    List<String> getHeroNames();
}
