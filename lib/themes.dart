import 'package:flutter/material.dart';

enum MyThemeKeys { PURPLE, YELLOW, GREEN, RED, BLUE, BROWN, PINK, ORANGE }

class MyThemes {
  static final ThemeData purpleTheme = ThemeData(
    primaryColor: Colors.purple[700],
    brightness: Brightness.dark,
  );
  static final ThemeData yellowTheme = ThemeData(
    primaryColor: Colors.yellow[700],
    brightness: Brightness.dark,
  );
  static final ThemeData greenTheme = ThemeData(
    primaryColor: Colors.green[800],
    brightness: Brightness.dark,
  );
  static final ThemeData redTheme = ThemeData(
    primaryColor: Colors.red[800],
    brightness: Brightness.dark,
  );
  static final ThemeData blueTheme = ThemeData(
    primaryColor: Colors.blue[800],
    brightness: Brightness.dark,
  );
  static final ThemeData brownTheme = ThemeData(
    primaryColor: Colors.brown[600],
    brightness: Brightness.dark,
  );
  static final ThemeData pinkTheme = ThemeData(
    primaryColor: Colors.pink[700],
    brightness: Brightness.dark,
  );
  static final ThemeData orangeTheme = ThemeData(
    primaryColor: Colors.orange[800],
    brightness: Brightness.dark,
  );

  static ThemeData getThemeFromKey(MyThemeKeys themeKey) {
    switch (themeKey) {
      case MyThemeKeys.PURPLE:
        return purpleTheme;
      case MyThemeKeys.YELLOW:
        return yellowTheme;
      case MyThemeKeys.GREEN:
        return greenTheme;
      case MyThemeKeys.RED:
        return redTheme;
      case MyThemeKeys.BLUE:
        return blueTheme;
      case MyThemeKeys.BROWN:
        return brownTheme;
      case MyThemeKeys.PINK:
        return pinkTheme;
      case MyThemeKeys.ORANGE:
        return orangeTheme;
      default:
        return purpleTheme;
    }
  }

  static stringToEnum(themeEnumValue) {
    switch (themeEnumValue) {
      case "Purple":
        return MyThemeKeys.PURPLE;
      case "Yellow":
        return MyThemeKeys.YELLOW;
      case "Green":
        return MyThemeKeys.GREEN;
      case "Red":
        return MyThemeKeys.RED;
      case "Blue":
        return MyThemeKeys.BLUE;
      case "Brown":
        return MyThemeKeys.BROWN;
      case "Pink":
        return MyThemeKeys.PINK;
      case "Orange":
        return MyThemeKeys.ORANGE;
      default:
        return MyThemeKeys.PURPLE;
    }
  }

  static enumToString(MyThemeKeys themeKey) {
    switch (themeKey) {
      case MyThemeKeys.PURPLE:
        return "Purple";
      case MyThemeKeys.YELLOW:
        return "Yellow";
      case MyThemeKeys.GREEN:
        return "Green";
      case MyThemeKeys.RED:
        return "Red";
      case MyThemeKeys.BLUE:
        return "Blue";
      case MyThemeKeys.BROWN:
        return "Brown";
      case MyThemeKeys.PINK:
        return "Pink";
      case MyThemeKeys.ORANGE:
        return "Orange";
      default:
        return "Purple";
    }
  }
}

// Convert Enum to string
String colorPurple = MyThemeKeys.PURPLE.toString();

// Convert to enum
MyThemeKeys f = MyThemeKeys.values
    .firstWhere((e) => e.toString() == 'Fruit.' + colorPurple);
