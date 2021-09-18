package com.skilldistillery.jpacrud.controllers;

import java.time.LocalDate;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import com.skilldistillery.jpacrud.dao.HealthCareDAO;
import com.skilldistillery.jpacrud.entities.Patient;

@Controller
public class HealthCareController {

	@Autowired
	private HealthCareDAO dao;
	
	@RequestMapping(path = {"/", "home.do"})
	public String home(Model model) {
		model.addAttribute("patients", dao.findAll());
		
		return "home";
	}
	
	@RequestMapping(path = "getPatient.do")
	public String displayPatient(int pid, Model model) {
		Patient patient = dao.findById(pid);
		model.addAttribute("patient", patient);
		return "patient/show";
	}

	@RequestMapping(path = "edit.do", method=RequestMethod.GET)
	public String editPatient(@RequestParam Integer pid, Model model) {
		String viewName = "patient/edit";
		Patient patient = dao.findById(pid);
		model.addAttribute("patient", patient);
		
		return viewName;
	}
	
	@RequestMapping(path="edit.do", method=RequestMethod.POST, params = "patient")
	public String editForm(@RequestParam Patient patient, Model model) {
		String viewName = "patient/show";
		Patient dbPatient = dao.updatePatient(patient.getId(), patient);
		model.addAttribute("pid", dbPatient.getId());
		model.addAttribute("patient", dbPatient);
		return viewName;
	}
	
	@RequestMapping(path = "add.do", method=RequestMethod.GET)
	public String editPatient(Model model) {
		String viewName = "patient/addPatient";
//		Patient patient = new Patient();
//		model.addAttribute("patient", patient);
		
		return viewName;
	}
	
	@RequestMapping(path = "add.do", method=RequestMethod.POST)
	public String addPatient(@RequestParam("firstName") String firstName, @RequestParam("middleInitial") String middleInitial,
			@RequestParam("lastName") String lastName, @RequestParam("dateOfBirth") String dateOfBirth, @RequestParam("ssn") String ssn,
			@RequestParam("address") String address, @RequestParam("city") String city, @RequestParam("state") String state,
			@RequestParam("zipcode") String zipcode, @RequestParam("phone") String phone, Model model) {

		String success = "patient/success";
		String fail = "patient/fail";
		
		LocalDate dob = LocalDate.parse(dateOfBirth);
		
		Patient p = new Patient();
			p.setFirstName(firstName);
			p.setMiddleInitial(middleInitial);
			p.setLastName(lastName);
			p.setDateOfBirth(dob);
			p.setSsn(ssn);
			p.setAddress(address);
			p.setCity(city);
			p.setState(state);
			p.setZipcode(zipcode);
			p.setPhone(phone);
		
		Patient dbPatient = dao.addPatient(p);
		model.addAttribute("patient", p);
		if (dbPatient.getId() > 0) {
			return success;
		} else {
			return fail;
			}
	}
	
	@RequestMapping(path = "remove.do")
	public String removePatient(int pid, Model model) {
		boolean result = dao.deletePatient(pid);
				
		if (result == true) {
			return"patient/success";
		} else {
			return "patient/fail";
		}
	
		
		
	}
}
