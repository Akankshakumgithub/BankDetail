package com.example.demo.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import com.example.demo.Service.accountservice;
import com.example.demo.Service.personservice;
import com.example.demo.entity.Account;
import com.example.demo.entity.Person;

@Controller
public class maincontroller {

	@Autowired
	private accountservice accs;

	@Autowired
	private personservice pers;

	@Autowired
	private HttpServletRequest httpServletRequest;

	/* this is the view method */
	@GetMapping("/")
	public String home(Model model) {
		List<Person> persons = pers.getAllPerson();
		model.addAttribute("persons", persons);
		return "home";
	}

	/* this is the new customer details page method */
	@GetMapping("/log")
	public String log(Model model) {
		Person person = new Person();
		List<Account> accounts = new ArrayList<>();
		model.addAttribute("person", person);
		model.addAttribute("accounts", accounts);
		return "login";
	}

	@GetMapping("/address/{personAddress}")
	public String getDetailsByName(@PathVariable("personAddress") String address, Model model) {
		List<Person> persons = pers.getAllPersonByName(address);
		for (Person person : persons) {
			System.out.println(person);
			List<Account> accounts = person.getAccounts();
			for (Account account : accounts) {
				System.out.println(account);
			}
		}
		model.addAttribute("persons", persons);
		return "home";
	}

	@GetMapping("/delete/{personId}")
	public RedirectView delete(@PathVariable("personId") Long personId) {
		this.pers.delete(personId);
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(httpServletRequest.getContextPath() + "/");
		return redirectView;
	}

	@GetMapping("/update/{personId}")
	public String update(@PathVariable("personId") Long personId, Model model) {
		Person person = this.pers.getPerson(personId);
		List<Account> accounts = person.getAccounts();
		model.addAttribute("person", person);
		model.addAttribute("accounts", accounts);
		return "login";
	}

	
	@PostMapping("/handle")
	public ModelAndView home(@ModelAttribute("person") Person person) {
		ModelAndView modelAndView = new ModelAndView();
//		first i have to get all the orders from customer using customer.getOrders()
		List<Person> persons = this.pers.getAllPerson();
		List<Account> accounts = person.getAccounts();
		if (person.getId() == null) {
			boolean flag = false;
			for (Person person1 : persons) {
				if (person1.getEmail().equals(person.getEmail())) {
					flag = true;
					break;
				} else if (person1.getAddress().equals(person.getAddress())) {
					flag = true;
					break;
				}

			}
			if (flag == true) {
				System.out.println("duplicate error");
				modelAndView.setViewName("login");
				modelAndView.addObject("person", person);
				modelAndView.addObject("accounts", accounts);
				modelAndView.addObject("duplicateError", "Email or address Number already Registerd");
				return modelAndView;
			} else {
				this.pers.createPerson(person, accounts);
			}
//
		} else {
			List<Account> dbAccounts = this.pers.getPerson(person.getId()).getAccounts();
			List<Long> delAccounts = new ArrayList<>();
			for (Account dbaccount : dbAccounts) 
			{
				boolean flag = false;
				
				for (Account account : accounts) 
				{
					if (dbaccount.getId()==account.getId()) {
						flag = true;
						break;
					}
				}
				if (flag == false) {
					delAccounts.add(dbaccount.getId());
				}
			}

			this.pers.createPerson(person, accounts);

			for (Long id : delAccounts) {
				this.accs.delete(id);
			}
	}
		modelAndView.setViewName("redirect:/");
		return modelAndView;
	}

}
