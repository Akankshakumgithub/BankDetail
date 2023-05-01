package com.example.demo.Service;

import java.util.List;
import java.util.Optional;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.demo.Dao.personRepo;
import com.example.demo.entity.Account;
import com.example.demo.entity.Person;



@Service
public class personservice {
	
	@Autowired
	private personRepo personrepository;
	
	@Transactional
	public void createPerson(Person person , List<Account> accounts)
	{
		for(Account account:accounts)
		{
			account.setPerson(person);
		}
		
		personrepository.save(person);
	}
	
	
	public Person getPerson(Long id)
	{
		Optional<Person> personOptional = personrepository.findById(id);
		Person person = personOptional.get();
		return person;
	}
	
	public List<Person> getAllPerson()
	{
		return personrepository.findAll();
	}
	
	
	public void delete(Long personId)
	{
		Optional<Person> personOptional = this.personrepository.findById(personId);
		if(personOptional.isPresent()) {
			Person person = personOptional.get();
			this.personrepository.delete(person);
		}
	}
		public List<Person> getAllPersonByName(String name)
		{
			return this.personrepository.findByName(name);
		}
		
		@Transactional
		public void updatePerson(Person person, HibernateTemplate hibernateTemplate)
		{
			hibernateTemplate.update(person);
		}
		
	}


