package com.AD2015.americanDream.serviceImpl;

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
		return null;
	}

	@Override
	public void create(Hero hero) {
		// TODO Auto-generated method stub

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
