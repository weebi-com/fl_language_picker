Language picker with __x131 native language name__, for example : 

- French is displayed as 'Français'
- Japanese is displayed as 日本語

Note this package is different from [flutter_localized_locales](https://pub.dev/packages/flutter_localized_locales) which translates the language name depending on the device locale.
Here we simply provide the native

## Getting Started

See the example

## Regenerate languages

If you modify languages.json, you should regenerate the language constants in languages.g.dart by running:

```
dart run fl_language_picker:build_languages
dart format lib/languages.g.dart
```

## Credits

Fork from https://pub.dev/packages/language_picker
https://pub.dev/publishers/wafrat.com

Which itself is a fork of https://pub.dev/packages/language_pickers
Developed by [gomgom](https://www.gomgom.net)(Github [@gomgom](https://github.com/gomgom)).

Who also mentioned Figen Güngör([@figengungor](https://github.com/figengungor)), for opening the source code of '[country_pickers](https://pub.dartlang.org/packages/country_pickers)'
