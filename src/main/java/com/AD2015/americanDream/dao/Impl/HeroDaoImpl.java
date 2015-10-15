package com.AD2015.americanDream.dao.Impl;

import org.springframework.jdbc.core.JdbcTemplate;

import com.AD2015.americanDream.daos.HeroDao;
import com.AD2015.americanDream.daos.mapper.HeroMapper;
import com.AD2015.americanDream.models.Hero;

public class HeroDaoImpl implements HeroDao {

	public static final String UPDATE_HERO = "UPDATE hero SET name = ?,age =?, gender = ?, experiance = ?,money =?"
			+ "strength=?,level=?,happieness=? WHERE name=?";
	public static final String DELETE_HERO = "DELETE FROM hero WHERE name = ?";
	public static final String CREATE_HERO = "INSERT INTO hero (name, age, gender, experiance, money, strength, level, happieness) "
			+ "VALUES(?, ?, ?, ?, ?, ?, ?, ?)";
	public static final String GET_HERO = "SELECT name, age, gender, experiance, money, strength, level, happieness FROM hero  WHERE name = ?";

	private JdbcTemplate jdbcTemplate;

	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}

	@Override
	public void updateHero(Hero hero) {

		jdbcTemplate.update(UPDATE_HERO, hero.getName(), hero.getAge(), hero.getGender(), hero.getExperiance(),
				hero.getMoney(), hero.getStrength(), hero.getLevel(), hero.getHappieness(), hero.getName());
	}

	@Override
	public void delete(String username) {

		jdbcTemplate.update(DELETE_HERO, username);
	}

	@Override
	public void create(Hero hero) {

		jdbcTemplate.update(CREATE_HERO, hero.getName(), hero.getAge(), hero.getGender(), hero.getExperiance(),
				hero.getMoney(), hero.getStrength(), hero.getLevel(), hero.getHappieness(), hero.getName());

	}
   
	@Override
	public Hero getHeroByUserName(String username) {

		return jdbcTemplate.queryForObject(GET_HERO, new Object[] { username }, new HeroMapper());

	}
	

}
