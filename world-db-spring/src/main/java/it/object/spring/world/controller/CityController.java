package it.object.spring.world.controller;

import java.util.List;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import it.object.spring.world.dao.ICityDao;
import it.object.spring.world.model.City;

@Controller
public class CityController {
	
	@Autowired
	private ICityDao daoCity;

	@GetMapping("/citypage")
	public String citypage() {
		return "city_info";
	}

	@RequestMapping("/get-info-city")
	public String infoCity(ModelMap map, @RequestParam("cityname") String name) {
		City city = daoCity.getCityByName(name);
		map.addAttribute("city", city);
		return "city_info";
	}

	@RequestMapping("/list_cities")
	public String citiesList(ModelMap map, @RequestParam("codeValue") String code) {
		List<City> cities = daoCity.getAllCitiesByCountryCode(code);
		map.addAttribute("cities", cities);
		return "city_list";

	}

}
