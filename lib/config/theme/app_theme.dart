import 'package:flutter/material.dart';

const List<Color> ColorList = [
  Colors.red,
  Colors.green,
  Colors.blue,
  Colors.orange,
  Colors.purple,
];

class AppTheme {
  final int selectedColor;

  AppTheme({required this.selectedColor})
    : assert(selectedColor >= 0, 'selectedColor must be between 0 and 4'),
      assert(
        selectedColor < ColorList.length - 1,
        'selectedColor must be between 0 and 4',
      );

  ThemeData themeData() => ThemeData(
    useMaterial3: true,
    colorSchemeSeed: ColorList[selectedColor],
    appBarTheme: AppBarTheme(centerTitle: false),
  );
}
