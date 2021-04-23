package it.object.spring.world.dao;

import java.util.List;

import it.object.spring.world.model.City;

public interface ICityDao {

	public City getCityByName(String cityName);
	
	public List<City> getAllCitiesByCountryCode(String Code);
}
