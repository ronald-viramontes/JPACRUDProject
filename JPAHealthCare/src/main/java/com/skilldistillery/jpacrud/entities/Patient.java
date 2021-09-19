package com.skilldistillery.jpacrud.entities;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Patient {
	
	
	public Patient() {
		super();
	}
	
	public Patient(Integer id, String firstName, String middleInitial, String lastName, String dateOfBirth,
			String ssn, String address, String city, String state, String zipcode, String phone) {
		super();
		this.id = id;
		this.firstName = firstName;
		this.middleInitial = middleInitial;
		this.lastName = lastName;
		this.dateOfBirth = dateOfBirth;
		this.ssn = ssn;
		this.address = address;
		this.city = city;
		this.state = state;
		this.zipcode = zipcode;
		this.phone = phone;
	}


	public Patient(String firstName, String lastName, String dateOfBirth, String ssn) {
		super();
		this.firstName = firstName;
		this.lastName = lastName;
		this.dateOfBirth = dateOfBirth;
		this.ssn = ssn;
	}
	
	




	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="patient_id")
	private Integer id;
	
	@Column(name="first_name")
	private String firstName;
	
	@Column(name="middle_initial")
	private String middleInitial;
	
	@Column(name="last_name")
	private String lastName;
	
	@Column(name="date_of_birth")
	private String dateOfBirth;
	
	private String ssn;
	
	private String address;
	
	private String city;
	
	@Column(name="state_abbrev")
	private String state;
	
	private String zipcode;
	
	private String phone;


	
	public int getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getMiddleInitial() {
		return middleInitial;
	}

	public void setMiddleInitial(String middleInitial) {
		this.middleInitial = middleInitial;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getDateOfBirth() {
		return dateOfBirth;
	}

	public void setDateOfBirth(String dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}

	public String getSsn() {
		return ssn;
	}

	public void setSsn(String ssn) {
		this.ssn = ssn;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getZipcode() {
		return zipcode;
	}

	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	
	@Override
	public String toString() {
		return "Patient [id=" + id + ", firstName=" + firstName + ", middleInitial=" + middleInitial + ", lastName="
				+ lastName + ", dateOfBirth=" + dateOfBirth + ", ssn=" + ssn + ", address=" + address + ", city=" + city
				+ ", state=" + state + ", zipcode=" + zipcode + ", phone=" + phone + "]";
	}
		
}
