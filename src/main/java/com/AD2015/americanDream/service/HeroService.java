package com.AD2015.americanDream.service;

import com.AD2015.americanDream.models.Hero;

public interface HeroService {
	
	public void create(Hero hero);
	public void update(Hero hero);
	public void delete (String username);
    Hero getHeroByUserName(String username);
    
}
