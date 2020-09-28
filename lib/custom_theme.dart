import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:songapp/settings/themes.dart';

class _CustomTheme extends InheritedWidget {
  final CustomThemeState data;

  _CustomTheme({
    this.data,
    Key key,
    @required Widget child,
  }) : super(key: key, child: child);

  @override
  bool updateShouldNotify(_CustomTheme oldWidget) {
    return true;
  }
}

class CustomTheme extends StatefulWidget {
  final Widget child;
  final MyThemeKeys initialThemeKey;

  const CustomTheme({
    Key key,
    this.initialThemeKey,
    @required this.child,
  }) : super(key: key);

  @override
  CustomThemeState createState() => new CustomThemeState();

  static ThemeData of(BuildContext context) {
    _CustomTheme inherited =
        (context.dependOnInheritedWidgetOfExactType<_CustomTheme>());
    return inherited.data.theme;
  }

  static CustomThemeState instanceOf(BuildContext context) {
    _CustomTheme inherited =
        (context.dependOnInheritedWidgetOfExactType<_CustomTheme>());
    return inherited.data;
  }
}

class CustomThemeState extends State<CustomTheme> {
  ThemeData _theme;
  String _themeState;

  ThemeData get theme => _theme;

  @override
  void initState() {
    _theme = MyThemes.getThemeFromKey(widget.initialThemeKey);

    // Here I was trying to make an If Else statemene, to getTheme() first, and if it's a null, to get initialThemeKey.

    // _theme = if(MyThemes.stringToEnum(getTheme()) != null ) MyThemes.stringToEnum(getTheme());  else {MyThemes.getThemeFromKey(widget
    //     .initialThemeKey); }

    super.initState();
  }

  void changeTheme(MyThemeKeys themeKey) async {
    setState(() {
      _theme = MyThemes.getThemeFromKey(themeKey);
      _themeState = MyThemes.enumToString(themeKey);
    });
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    await _prefs.setString("stringThemeValue", _themeState);
  }

  Future<String> getTheme() async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    String themeValue = _prefs.getString("stringThemeValue") ?? "Purple";
    return themeValue;
  }

  @override
  Widget build(BuildContext context) {
    return new _CustomTheme(
      data: this,
      child: widget.child,
    );
  }
}
