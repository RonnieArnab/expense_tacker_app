import 'package:expense_tacker_app/widgets/expenses_list/expenses_list.dart';
import 'package:expense_tacker_app/models/expense.dart';
import 'package:expense_tacker_app/widgets/new_expense.dart';
import 'package:flutter/material.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() => _ExpensesState();
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(
      title: 'title',
      amount: 1.9,
      date: DateTime.now(),
      category: Category.food,
    ),
    Expense(
      title: 'title2',
      amount: 1.99,
      date: DateTime.now(),
      category: Category.leisure,
    ),
  ];
  void _showModalBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return const NewExpense();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter ExpenseTracker'),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.add),
              onPressed: () {
                _showModalBottomSheet(context);
              },
            ),
          ],
        ),
        body: Column(
          children: [
            const Text('The chart'),
            Expanded(
              child: ExpensesList(expenses: _registeredExpenses),
            ),
          ],
        ),
      ),
    );
  }
}
