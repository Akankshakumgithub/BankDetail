package com.example.demo.Dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.demo.entity.Person;

@Repository
public interface personRepo extends JpaRepository<Person, Long> {
	
	List<Person> findByAddress(String address);
	
	List<Person> findByName(String name);

}
