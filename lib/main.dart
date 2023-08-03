import 'package:expense_tacker_app/widgets/expenses.dart';
import 'package:flutter/material.dart';

var kcolorScheme = ColorScheme.fromSeed(
  seedColor: const Color.fromARGB(255, 96, 59, 181),
);

var kdarkColorScheme = ColorScheme.fromSeed(
  brightness: Brightness.dark,
  seedColor: const Color.fromARGB(255, 5, 99, 125),
);
void main() {
  runApp(MaterialApp(
    darkTheme: ThemeData.dark().copyWith(
      useMaterial3: true,
      colorScheme: kdarkColorScheme,
      cardTheme: const CardTheme().copyWith(
        color: kdarkColorScheme.secondaryContainer,
        margin: const EdgeInsets.symmetric(
          vertical: 8,
          horizontal: 16,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: kdarkColorScheme.primaryContainer,
          foregroundColor: kdarkColorScheme.onPrimaryContainer,
        ),
      ),
    ),
    theme: ThemeData().copyWith(
      useMaterial3: true,
      colorScheme: kcolorScheme,
      appBarTheme: const AppBarTheme().copyWith(
        backgroundColor: kcolorScheme.onPrimaryContainer,
        foregroundColor: kcolorScheme.primaryContainer,
      ),
      cardTheme: const CardTheme().copyWith(
        color: kcolorScheme.secondaryContainer,
        margin: const EdgeInsets.symmetric(
          vertical: 8,
          horizontal: 16,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: kcolorScheme.primaryContainer,
        ),
      ),
      textTheme: ThemeData().textTheme.copyWith(
            titleLarge: TextStyle(
              fontWeight: FontWeight.normal,
              color: kcolorScheme.onSecondary,
              fontSize: 14,
            ),
          ),
    ),
    home: const Expenses(),
  ));
}
