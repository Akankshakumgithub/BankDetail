package com.example.demo.Service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.Dao.accountRepo;
import com.example.demo.entity.Account;


@Service
public class accountservice {

	@Autowired 
	private accountRepo accountRepository;
	
	
	public void delete(Long id)
	{
		Optional<Account> accountOptional = this.accountRepository.findById(id);
		if(accountOptional.isPresent())
		{
			Account account = accountOptional.get();
			this.accountRepository.delete(account);
		}
	}
	
	public List<Account> getAllAccount()
	{
		return this.accountRepository.findAll();
	}
	
	
}
