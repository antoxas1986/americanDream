package com.AD2015.americanDream.dao;

import java.util.List;

import com.AD2015.americanDream.models.Hero;

public interface HeroDao {

	 void updateHero(Hero hero);
	 void delete(String username);
	 void create(Hero hero);
	 Hero getHeroByUserName(String username);
	 List<String> getHeroNames();
}
