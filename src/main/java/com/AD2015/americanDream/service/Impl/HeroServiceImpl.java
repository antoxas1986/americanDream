package com.AD2015.americanDream.service.Impl;

import com.AD2015.americanDream.daos.HeroDao;
import com.AD2015.americanDream.models.Hero;
import com.AD2015.americanDream.service.HeroService;

public class HeroServiceImpl implements HeroService {
	private HeroDao heroDao;

	public void setHeroDao(HeroDao heroDao) {
		this.heroDao = heroDao;
	}

	@Override
	public Hero getHeroByUserName(String username) {
		// TODO Auto-generated method stub
		return heroDao.getHeroByUserName(username);
	}

	@Override
	public void create(Hero hero) {
		heroDao.create(hero);
	}

	@Override
	public void update(Hero hero) {
		heroDao.updateHero(hero);

	}

	@Override
	public void delete(String username) {
		heroDao.delete(username);

	}
}


