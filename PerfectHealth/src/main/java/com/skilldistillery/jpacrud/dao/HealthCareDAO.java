package com.skilldistillery.jpacrud.dao;

import java.util.List;

import com.skilldistillery.jpacrud.entities.Patient;

public interface HealthCareDAO {

	public Patient findById(int id);
	public List<Patient> findAll();
	public Patient addPatient(Patient patient);
	public Patient updatePatient(Integer id, Patient patient);
	public boolean deletePatient(int id);
	
	
	
}
