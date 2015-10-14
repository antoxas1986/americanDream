package com.AD2015.americanDream.daosImpl;

import org.springframework.jdbc.core.JdbcTemplate;

import com.AD2015.americanDream.daos.HeroDao;
import com.AD2015.americanDream.models.Hero;

public class HeroDaoImpl implements HeroDao {

	public static final String UPDATE_HERO = "UPDATE hero SET name = ?,age =?, gender = ?, experiance = ?,money =?"
			+ "strength=?,level=?,happieness=? WHERE name=?";

	private JdbcTemplate jdbcTemplate;

	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}

	@Override
	public void updateHero(Hero hero) {

		jdbcTemplate.update(UPDATE_HERO, hero.getName(), hero.getAge(), hero.getGender(), hero.getExperiance(),
				hero.getMoney(), hero.getStrength(), hero.getLevel(), hero.getHappieness(), hero.getName());
	}

}
