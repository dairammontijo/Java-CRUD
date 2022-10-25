package com.dairammontijo.safetravels.controllers;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;

import com.dairammontijo.safetravels.models.Expense;
import com.dairammontijo.safetravels.services.ExpenseService;

@Controller
public class HomeController {
	@Autowired 
	private ExpenseService expenseServ;
	
	
	@GetMapping("/")
	public String index(@ModelAttribute("expense") Expense expense, Model model) {
		model.addAttribute("expenses", expenseServ.getAllExpenses());
		return "index.jsp";
	}
	
	@PostMapping("/expense/create")
	public String newExpense(@Valid @ModelAttribute("expense") Expense expense, BindingResult result) {
		expenseServ.createExpense(expense);
		return "redirect:/";
	}
	
	@GetMapping("/expense/{id}")
	public String viewExpense(@PathVariable(name="id") Long id, Model model) {
		Expense expense = expenseServ.getOne(id);
		model.addAttribute("expense", expense);
		return "viewExpense.jsp";
		
	}
	
	@GetMapping("/expense/{id}/edit")
	public String editExpense(@PathVariable(name="id") Long id, Model model) {
		Expense expense = expenseServ.getOne(id);
		model.addAttribute("expense", expense);
		return "editExpense.jsp";
		
	}
	
	@PutMapping("/expense/{id}/update")
	public String update(@Valid @ModelAttribute("expense") Expense expense, BindingResult result) {
		expenseServ.updateExpense(expense);
		return "redirect:/";
	}
	
	@GetMapping("/expense/{id}/delete")
	public String deleteExpense(@PathVariable(name="id") Long id) {
		expenseServ.deleteExpense(id);
		return "redirect:/";
	}

}
