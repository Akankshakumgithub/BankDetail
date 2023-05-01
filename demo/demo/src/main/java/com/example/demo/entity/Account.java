package com.example.demo.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "accounts")
public class Account {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)

	@Column(name = "a_id")
	private Long id;

	@Column(name = "a_bankname")
	private String bankname;

	@Column(name = "a_accountno")
	private Integer accountno;

	@Column(name = "a_ifsccode")
	private Integer ifsccode;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "person_id")
	private Person person;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getBankname() {
		return bankname;
	}

	public void setBankname(String bankname) {
		this.bankname = bankname;
	}

	public Integer getAccountno() {
		return accountno;
	}

	public void setAccountno(Integer accountno) {
		this.accountno = accountno;
	}

	public Integer getIfsccode() {
		return ifsccode;
	}

	public void setIfsccode(Integer ifsccode) {
		this.ifsccode = ifsccode;
	}

	public Person getPerson() {
		return person;
	}

	public void setPerson(Person person) {
		this.person = person;
	}

	public Account() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Account(Long id, String bankname, Integer accountno, Integer ifsccode, Person person) {
		super();
		this.id = id;
		this.bankname = bankname;
		this.accountno = accountno;
		this.ifsccode = ifsccode;
		this.person = person;
	}

	@Override
	public String toString() {
		return "Account [id=" + id + ", bankname=" + bankname + ", accountno=" + accountno + ", ifsccode=" + ifsccode
				+ "]";
	}

}
