import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_course/provider/theme_mode_provider.dart';

class ThemeChangerScreen extends StatefulWidget {
  const ThemeChangerScreen({super.key});

  @override
  State<ThemeChangerScreen> createState() => _ThemeChangerScreenState();
}

class _ThemeChangerScreenState extends State<ThemeChangerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Setting"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Consumer<ThemeModeProvider>(
            builder: (context, themeProvider, child) {
              return RadioListTile<ThemeMode>(
                title: const Text("Light Mode"),
                value: ThemeMode.light,
                groupValue: themeProvider.themeMode,
                onChanged: (ThemeMode? value) {
                  if (value != null) {
                    themeProvider.setThemeMode(value);
                  }
                },
              );
            },
          ),
          Consumer<ThemeModeProvider>(
            builder: (context, themeProvider, child) {
              return RadioListTile<ThemeMode>(
                title: const Text("Dark Mode"),
                value: ThemeMode.dark,
                groupValue: themeProvider.themeMode,
                onChanged: (ThemeMode? value) {
                  if (value != null) {
                    themeProvider.setThemeMode(value);
                  }
                },
              );
            },
          ),
          Consumer<ThemeModeProvider>(
            builder: (context, themeProvider, child) {
              return RadioListTile<ThemeMode>(
                title: const Text("System Mode"),
                value: ThemeMode.system,
                groupValue: themeProvider.themeMode,
                onChanged: (ThemeMode? value) {
                  if (value != null) {
                    themeProvider.setThemeMode(value);
                  }
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
