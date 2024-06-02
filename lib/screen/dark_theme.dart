import 'package:counter_provider/provider/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DarkTheme extends StatefulWidget {
  const DarkTheme({super.key});

  @override
  State<DarkTheme> createState() => _DarkThemeState();
}

class _DarkThemeState extends State<DarkTheme> {
  @override
  Widget build(BuildContext context) {
    final themeChanger = Provider.of<ThemeChanger>(context);
    return Scaffold(
      appBar: AppBar(title: Text('Dark  theme'),),
      body: Column(
        children: [
          RadioListTile<ThemeMode>
            (
            title: Text('Light mode'),
              value: ThemeMode.light,
              groupValue: themeChanger.themeMode,
              onChanged: themeChanger.setTheme,
          ),
          RadioListTile<ThemeMode>
            (
            title: Text('Dark mode'),
            value: ThemeMode.dark,
            groupValue: themeChanger.themeMode,
            onChanged: themeChanger.setTheme,
          ),
          RadioListTile<ThemeMode>
            (
            title: Text('System mode'),
            value: ThemeMode.system,
            groupValue: themeChanger.themeMode,
            onChanged: themeChanger.setTheme,
          ),
        ],
      ),
    );
  }
}
