package com.skilldistillery.jpacrud.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

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
	
	@RequestMapping(path = "edit.do")
	public String editPatient(Patient patient, Model model) {
		patient = dao.updatePatient(patient.getId(), patient);
		model.addAttribute("patient", patient);
		
		return "patient/show";
	}
	
	@RequestMapping(path = "add.do")
	public String addPatient(Patient patient, Model model) {
		patient = dao.addPatient(patient);
		model.addAttribute("patient", patient);
		if (patient.getId() > 0) {
			return "patient/success";
		} else {
			return "patient/fail";
			}
	}
	
	@RequestMapping(path = "remove.do")
	public String removePatient(int id, Model model) {
		boolean result = dao.deletePatient(id);
		
		if (result == true) {
			return"patient/success";
		} else {
			return "patient/fail";
		}
		
	}
}
