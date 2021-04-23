package it.object.spring.world.dao;

import java.util.List;

import it.object.spring.world.model.Country;




public interface ICountryDao {

	public List<String> getAllContinent();
	
	public List<Country> getCountryByNationOrContinent(String nationName, String continent);

	public List<Country> getCountryByContinent(String continent);
	
}
