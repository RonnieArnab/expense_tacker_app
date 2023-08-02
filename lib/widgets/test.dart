import 'package:flutter/material.dart';
import 'package:expense_tacker_app/widgets/expenses_list/expenses_list.dart';
import 'package:expense_tacker_app/models/expense.dart';

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
        return const SizedBox(
          height: 200,
          child: Center(
            child: Text(
              'This is a modal bottom sheet',
              style: TextStyle(fontSize: 18),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter ExpenseTracker'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.more_vert),
            onPressed: () {
              _showModalBottomSheet(context);
            },
          ),
        ],
      ),
      body: const Column(
        children: [
          Text('The chart'),
          Expanded(
            child: Center(
              child: Text('Expenses list content here'),
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: Expenses(),
  ));
}
