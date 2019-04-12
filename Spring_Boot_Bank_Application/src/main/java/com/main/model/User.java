package com.main.model;

import java.time.LocalDate;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.SecondaryTable;
import javax.persistence.SecondaryTables;
import javax.persistence.Table;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name="User2")
@SecondaryTables({
    @SecondaryTable(name="User_Details", 
        pkJoinColumns=@PrimaryKeyJoinColumn(name="User_Id")),
    @SecondaryTable(name="User_proof", 
        pkJoinColumns=@PrimaryKeyJoinColumn(name="User_Id"))
})

public class User {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
	private String name;
	private String password;
	private String e_mail;
	private int mobile_number;
	@Column(table="User_Details")
	private String first_name;
	@Column(table="User_Details")
	private String last_name;
	@Column(table="User_Details")
	@DateTimeFormat(pattern="yyyy/MM/dd")
	private LocalDate dob;
	@Column(table="User_Details")
	private String address;
	@Column(table="User_Details")
	private String city;
	@Column(table="User_Details")
	private String state;
	@Column(table="User_Details")
	private int pin_code;
	@Column(table="User_proof")
	private int aadhar;
	@Column(table="User_proof")
	private int pan;
	@Column(table="User_proof")
	private String dob_proof;
	@Column(table="User_proof")
	private String aadhar_proof;
	@Column(table="User_proof")
	private String pan_proof;
	@Column(table="User_proof")
	private String address_proof;
	@OneToOne(mappedBy="user")
	private Account account;
	@OneToMany(mappedBy="user",cascade=CascadeType.ALL)
	private List<Beneficiery> beneficiery;
	
	
	public List<Beneficiery> getBeneficiery() {
		return beneficiery;
	}
	public void setBeneficiery(List<Beneficiery> beneficiery) {
		this.beneficiery = beneficiery;
	}
	public Account getAccount() {
		return account;
	}
	public void setAccount(Account account) {
		this.account = account;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getFirst_name() {
		return first_name;
	}
	public void setFirst_name(String first_name) {
		this.first_name = first_name;
	}
	public String getLast_name() {
		return last_name;
	}
	public void setLast_name(String last_name) {
		this.last_name = last_name;
	}
	public LocalDate getDob() {
		return dob;
	}
	public void setDob(LocalDate dob) {
		this.dob = dob;
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
	public int getPin_code() {
		return pin_code;
	}
	public void setPin_code(int pin_code) {
		this.pin_code = pin_code;
	}
	public int getMobile_number() {
		return mobile_number;
	}
	public void setMobile_number(int mobile_number) {
		this.mobile_number = mobile_number;
	}
	public String getE_mail() {
		return e_mail;
	}
	public void setE_mail(String e_mail) {
		this.e_mail = e_mail;
	}
	public int getAadhar() {
		return aadhar;
	}
	public void setAadhar(int aadhar) {
		this.aadhar = aadhar;
	}
	public int getPan() {
		return pan;
	}
	public void setPan(int pan) {
		this.pan = pan;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getDob_proof() {
		return dob_proof;
	}
	public void setDob_proof(String dob_proof) {
		this.dob_proof = dob_proof;
	}
	public String getAadhar_proof() {
		return aadhar_proof;
	}
	public void setAadhar_proof(String aadhar_proof) {
		this.aadhar_proof = aadhar_proof;
	}
	public String getPan_proof() {
		return pan_proof;
	}
	public void setPan_proof(String pan_proof) {
		this.pan_proof = pan_proof;
	}
	public String getAddress_proof() {
		return address_proof;
	}
	public void setAddress_proof(String address_proof) {
		this.address_proof = address_proof;
	}
	
	
}
