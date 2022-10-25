package com.dairammontijo.safetravels.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dairammontijo.safetravels.models.Expense;
import com.dairammontijo.safetravels.repositories.ExpenseRepository;

@Service
public class ExpenseService {
	@Autowired
	private ExpenseRepository expenseRepo;
	
	public Expense createExpense(Expense u) {
		return expenseRepo.save(u);
	}
	
	public List<Expense> getAllExpenses() {
		return expenseRepo.findAll();
	}
	
	public Expense getOne(Long id) {
		Optional<Expense> expense = expenseRepo.findOneById(id);
		if (expense.isPresent()) {
			return expense.get();
		}
		else {
			return null;
		}
	}
	
	public Expense updateExpense(Expense u) {
		return expenseRepo.save(u);
	}
	
	public void deleteExpense(Long id) {
		 expenseRepo.deleteById(id);
	}
}
