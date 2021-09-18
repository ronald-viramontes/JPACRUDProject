package com.skilldistillery.jpacrud.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.jpacrud.entities.Patient;

@Service
@Transactional
public class HealthCareDAOImpl implements HealthCareDAO {
	
	@PersistenceContext
	private EntityManager em;
	
	@Override
	public Patient findById(int id) {
		Patient patient = em.find(Patient.class, id);
		return patient;
	}

	@Override
	public List<Patient> findAll() {
		String query = "SELECT p FROM Patient p";
		List<Patient> patients = em.createQuery(query, Patient.class).getResultList();
		
		return patients;
	}

	@Override
	public Patient addPatient(Patient patient) {
//		Patient dbPatient = new Patient();
//		dbPatient.setFirstName(patient.getFirstName());
//		dbPatient.setMiddleInitial(patient.getMiddleInitial());
//		dbPatient.setLastName(patient.getLastName());
//		dbPatient.setSsn(patient.getSsn());
//		dbPatient.setDateOfBirth(patient.getDateOfBirth());
//		dbPatient.setAddress(patient.getAddress());
//		dbPatient.setPhone(patient.getPhone());
//		dbPatient.setState(patient.getState());
//		dbPatient.setZipcode(patient.getZipcode());
//		dbPatient.setCity(patient.getCity());
		System.out.println("before persist: " + patient);
		em.persist(patient);
		System.out.println("after persist: " + patient);

		return patient;
	}

	@Override
	public Patient updatePatient(Integer id, Patient patient) {
		Patient dbPatient = new Patient();
				dbPatient = em.find(Patient.class, id);
		
		System.out.println("Line: 45" + dbPatient);
		
		dbPatient.setFirstName(patient.getFirstName());
		dbPatient.setMiddleInitial(patient.getMiddleInitial());
		dbPatient.setLastName(patient.getLastName());
		dbPatient.setSsn(patient.getSsn());
		dbPatient.setDateOfBirth(patient.getDateOfBirth());
		dbPatient.setAddress(patient.getAddress());
		dbPatient.setPhone(patient.getPhone());
		dbPatient.setState(patient.getState());
		dbPatient.setZipcode(patient.getZipcode());
		dbPatient.setCity(patient.getCity());
		em.flush();
		
		em.refresh(dbPatient);
		System.out.println("Line: 58" + dbPatient);
		
		return dbPatient;
	}

	@Override
	public boolean deletePatient(int id) {
		boolean result = false;
		Patient patient = em.find(Patient.class, id);
		em.remove(patient);
		
		patient = em.find(Patient.class, id);
		result = ! em.contains(patient);
		
				
		return result;
	}

}
