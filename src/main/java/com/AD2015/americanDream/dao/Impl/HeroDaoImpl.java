package com.AD2015.americanDream.dao.Impl;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import com.AD2015.americanDream.dao.HeroDao;
import com.AD2015.americanDream.daos.mapper.HeroMapper;
import com.AD2015.americanDream.models.Hero;

@Component
public class HeroDaoImpl implements HeroDao {

	public static final String UPDATE_HERO = "UPDATE hero SET name = ?,age =?, gender = ?, experience = ?,money =?"
			+ "strength=?,level=?,happiness=? WHERE name=?";
	public static final String DELETE_HERO = "DELETE FROM hero WHERE name = ?";
	public static final String CREATE_HERO = "INSERT INTO hero (name, age, gender, experience, money, strength, level, happiness) "
			+ "VALUES(?, ?, ?, ?, ?, ?, ?, ?)";
	public static final String GET_HERO = "SELECT name, age, gender, experience, money, strength, level, happiness FROM hero  WHERE name = ?";
    public static final String GET_NAMES = "SELECT name FROM hero";
	
	private JdbcTemplate jdbcTemplate;

	@Autowired
	public void setJdbcTemplate(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}
	
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

	@Override
	public List<String> getHeroNames() {
		
		return jdbcTemplate.query(GET_NAMES, new BeanPropertyRowMapper<String>(String.class) );
	}
	
	
}
