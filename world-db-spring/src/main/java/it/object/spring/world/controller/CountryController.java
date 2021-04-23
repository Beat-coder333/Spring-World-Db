package it.object.spring.world.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import it.object.spring.world.dao.ICountryDao;
import it.object.spring.world.model.Country;

@Controller
public class CountryController {

	@Autowired
	private ICountryDao daoCount;
	
	@GetMapping("/countrypage")
	public String countrypage() {
		return "search_country";
	}

	@RequestMapping("/country")
	public String country() {
		return "search_country";
	}

	@RequestMapping("/country_search")
	public String searchedCountry(ModelMap map, @RequestParam("countryname") String countryName,
			@RequestParam("continentname") String contName) {
		List<Country> countries = daoCount.getCountryByNationOrContinent(countryName, contName);
		map.addAttribute("countries", countries);
		return "search_country";

	}

	@RequestMapping("/continent-list")
	public String continentList(ModelMap map) {
		List<String> conts = daoCount.getAllContinent();
		map.addAttribute("continents", conts);
		return "continets";
	}

	@RequestMapping("/list_countries")
	public String countriesList(ModelMap map, @RequestParam("continentValue") String continent) {
		List<Country> countries = daoCount.getCountryByContinent(continent);
		map.addAttribute("countries", countries);
		return "countries_list";

	}
}
