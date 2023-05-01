package com.example.demo.entity;



import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;




@Entity
@Table(name = "person")
public class Person {
	
@Id
@GeneratedValue(strategy = GenerationType.IDENTITY)
@Column(name="p_id")
	private Long id;

@Column(name = "p_name")
	private String name;

@Column(name="p_email")
	private String email;

@Column(name="p_address")
	private String address;

@OneToMany(mappedBy = "person", cascade = CascadeType.ALL)
private List<Account> accounts;

public Long getId() {
	return id;
}

public void setId(Long id) {
	this.id = id;
}

public String getName() {
	return name;
}

public void setName(String name) {
	this.name = name;
}

public String getEmail() {
	return email;
}

public void setEmail(String email) {
	this.email = email;
}

public String getAddress() {
	return address;
}

public void setAddress(String address) {
	this.address = address;
}

public List<Account> getAccounts() {
	return accounts;
}

public void setAccounts(List<Account> accounts) {
	this.accounts = accounts;
}

public Person(Long id, String name, String email, String address, List<Account> accounts) {
	super();
	this.id = id;
	this.name = name;
	this.email = email;
	this.address = address;
	this.accounts = accounts;
}



public Person() {
	super();
	// TODO Auto-generated constructor stub
}

@Override
public String toString() {
	return "Person [id=" + id + ", name=" + name + ", email=" + email + ", address=" + address + "]";
}



	

}
