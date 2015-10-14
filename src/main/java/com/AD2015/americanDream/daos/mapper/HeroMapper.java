package com.AD2015.americanDream.daos.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.AD2015.americanDream.models.Hero;




public class HeroMapper implements RowMapper<Hero>{

	@Override
	public Hero mapRow(ResultSet rs, int arg1) throws SQLException {
		Hero hero = new Hero();
		hero.setName(rs.getString("name"));
		hero.setAge(rs.getInt("age"));
		hero.setGender(rs.getString("gender"));
		hero.setExperiance(rs.getInt("experiance"));
		hero.setMoney(rs.getInt("money"));
		hero.setStrength(rs.getInt("strength"));
		hero.setLevel(rs.getInt("level"));
		hero.setHappieness(rs.getInt("happieness"));
		
		return hero;
	}

}
