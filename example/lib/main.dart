import 'package:flutter/material.dart';

import 'package:fl_language_picker/languages.dart';
import 'package:fl_language_picker/language_picker.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'language_picker Example',
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.blue,
        buttonTheme: const ButtonThemeData(
          buttonColor: Color(0xFF0097A7),
          textTheme: ButtonTextTheme.normal,
        ),
        indicatorColor: Color(0xfffffe9d),
      ),
      home: MyHomePage(title: 'language_picker Example'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class LanguageWidget extends StatelessWidget {
  final Language language;
  const LanguageWidget(this.language, {super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        child: Text(language.name.isEmpty
            ? language.nameEn.substring(0, 1).toUpperCase()
            : language.name.substring(0, 1).toUpperCase()),
      ),
      title: Text(language.name),
      subtitle: Text(language.nameEn),
    );
  }
}

class _MyHomePageState extends State<MyHomePage> {
  // Language _selectedDialogLanguage = Languages.french;
  Language _selectedDialogLanguage = Language.empty;

  // It's sample code of Dialog Item.

  void _openLanguagePickerDialog() => showDialog(
        context: context,
        builder: (context) => Theme(
          data: Theme.of(context),
          child: LanguagePickerDialog(
            // searchCursorColor: Colors.pinkAccent,
            searchInputDecoration:
                InputDecoration(icon: const Icon(Icons.search)),
            isSearchable: true,
            title: const Icon(Icons.translate,
                size: 44), // Text('Select your language'),
            onValuePicked: (Language language) => setState(() {
              _selectedDialogLanguage = language;
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
      body: Center(
        child: Column(
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
                    Text(_selectedDialogLanguage.name),
                  ],
                )),
                subtitle: Center(child: Text(_selectedDialogLanguage.nameEn)),
              ),
            ]),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
