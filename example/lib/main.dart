import 'dart:ui';

import 'package:fl_language_picker/language_locale.dart';
import 'package:flutter/material.dart';

import 'package:fl_language_picker/language_picker.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'fl_language_picker',
      home: const MyHomePage(title: 'fl_language_picker'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // Language _selectedDialogLanguage = Languages.french;

  Language _selectedLanguage = Language.empty;

  late Future googleFontsPending;

  @override
  void initState() {
    super.initState();
    final locale = PlatformDispatcher.instance.locale;
    if (Languages.defaultLanguages.any((e) => e.locale == locale)) {
      _selectedLanguage =
          Languages.defaultLanguages.firstWhere((e) => e.locale == locale);
    } else {
      _selectedLanguage = Language.empty;
    }
  }

  void _openLanguagePickerDialog() => showDialog(
        context: context,
        builder: (context) => Theme(
          data: Theme.of(context),
          child: LanguagePickerDialog(
            // searchCursorColor: Colors.pinkAccent,
            searchInputDecoration:
                InputDecoration(icon: const Icon(Icons.search)),
            isSearchable: true,
            title: const Icon(Icons.translate, size: 44),
            onValuePicked: (Language language) => setState(() {
              _selectedLanguage = language;
            }),
            itemBuilder: (language) => LanguageWidget(language),
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ListTile(
                onTap: _openLanguagePickerDialog,
                isThreeLine: true,
                title: Center(
                    child: Column(
                  children: [
                    const Icon(Icons.translate, size: 38),
                    const SizedBox(height: 14),
                    Text(_selectedLanguage.name,
                        style: Theme.of(context).textTheme.displayMedium),
                  ],
                )),
                subtitle: Center(
                    child: Text(
                        _selectedLanguage.nameEn == _selectedLanguage.name
                            ? ''
                            : _selectedLanguage.nameEn)),
              ),
            ]));
  }
}
