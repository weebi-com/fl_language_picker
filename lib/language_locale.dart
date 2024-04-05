import 'dart:ui';

class Language {
  const Language(this.locale, this.nameEn, this.name);

  final Locale locale;
  final String nameEn;
  final String name;

  Language.fromMap(Map<String, String> map)
      : nameEn = map['nameEn']!,
        locale = Locale(map['locale']!),
        name = map['name']!;

  static const empty = Language(Locale.fromSubtags(), '', '');

  /// Returns the Language matching the given ISO code from the standard list.
  factory Language.fromIsoCode(String code) =>
      Languages.defaultLanguages.firstWhere((l) => l.locale == code);

  bool operator ==(o) =>
      o is Language && nameEn == o.nameEn && locale == o.locale;

  @override
  int get hashCode => locale.hashCode;
}

class Languages {
  static Language get afrikaans =>
      Language(Locale('af'), 'Afrikaans', 'Afrikaans');
  static Language get albanian => Language(Locale('sq'), 'Albanian', 'Shqip');
  static Language get amharic => Language(Locale('am'), 'Amharic', 'አማርኛ');
  static Language get arabic => Language(Locale('ar'), 'Arabic', 'العربية');
  static Language get armenian => Language(Locale('hy'), 'Armenian', 'Հայերեն');
  static Language get assamese => Language(Locale('as'), 'Assamese', 'অসমীয়া');
  static Language get azerbaijaniLatin =>
      Language(Locale('az'), 'Azerbaijani (Latin)', 'Azərbaycan dili');
  static Language get bangla => Language(Locale('bn'), 'Bangla', 'বাংলা');
  static Language get bashkir =>
      Language(Locale('ba'), 'Bashkir', 'башҡорт теле');
  static Language get basque => Language(Locale('eu'), 'Basque', 'Euskara');
  static Language get bhojpuri =>
      Language(Locale('bho'), 'Bhojpuri', 'भोजपुरी');
  static Language get bodo => Language(Locale('brx'), 'Bodo', 'बरʼ ');
  static Language get bosnianLatin =>
      Language(Locale('bs'), 'Bosnian (Latin)', 'Bosanski jezik');
  static Language get bulgarian =>
      Language(Locale('bg'), 'Bulgarian', 'български език');
  static Language get cantoneseTraditional =>
      Language(Locale('yue'), 'Cantonese (Traditional)', '粵語');
  static Language get catalan => Language(Locale('ca'), 'Catalan', 'Català');
  static Language get chineseLiterary =>
      Language(Locale('lzh'), 'Chinese (Literary)', '中文');
  static Language get chineseSimplified => Language(
      Locale.fromSubtags(languageCode: 'zh', scriptCode: 'Hans'),
      'Chinese Simplified',
      '简化字');
  static Language get chineseTraditional => Language(
      Locale.fromSubtags(languageCode: 'zh', scriptCode: 'Hant'),
      'Chinese Traditional',
      '簡化字');
  static Language get chiShona =>
      Language(Locale('sn'), 'chiShona', 'chiShona');
  static Language get croatian =>
      Language(Locale('hr'), 'Croatian', 'Hrvatski');
  static Language get czech =>
      Language(Locale('cs'), 'Czech', 'Česky / čeština');
  static Language get danish => Language(Locale('da'), 'Danish', 'Dansk');
  static Language get dari => Language(Locale('prs'), 'Dari', '');
  static Language get divehi => Language(Locale('dv'), 'Divehi', 'ދިވެހި');
  static Language get dogri => Language(Locale('doi'), 'Dogri', '');
  static Language get dutch => Language(Locale('nl'), 'Dutch', 'Nederlands');
  static Language get english => Language(Locale('en'), 'English', 'English');
  static Language get estonian =>
      Language(Locale('et'), 'Estonian', 'Eesti keel');
  static Language get faroese => Language(Locale('fo'), 'Faroese', 'Føroyskt');
  static Language get fijian =>
      Language(Locale('fj'), 'Fijian', 'Vosa Vakaviti');
  static Language get filipino =>
      Language(Locale('fil'), 'Filipino', 'Tagalog');
  static Language get finnish =>
      Language(Locale('fi'), 'Finnish', 'Suomen kieli');
  static Language get french => Language(Locale('fr'), 'French', 'Français');
  static Language get frenchCanada =>
      Language(Locale('fr-ca'), 'French (Canada)', 'Québécois');
  static Language get galician => Language(Locale('gl'), 'Galician', 'Galego');
  static Language get georgian => Language(Locale('ka'), 'Georgian', 'ქართული');
  static Language get german => Language(Locale('de'), 'German', 'Deutsch');
  static Language get greek => Language(Locale('el'), 'Greek', 'Ελληνικά');
  static Language get gujarati => Language(Locale('gu'), 'Gujarati', 'ગુજરાતી');
  static Language get haitianCreole =>
      Language(Locale('ht'), 'Haitian Creole', 'Kreyòl ayisyen');
  static Language get hausa => Language(Locale('ha'), 'Hausa', 'هَوُسَ');
  static Language get hebrew => Language(Locale('he'), 'Hebrew', 'עברית');
  static Language get hindi =>
      Language(Locale('hi'), 'Hindi', 'हिन्दी / हिंदी');
  static Language get hmongDawLatin =>
      Language(Locale('mww'), 'Hmong Daw (Latin)', '');
  static Language get hungarian =>
      Language(Locale('hu'), 'Hungarian', 'magyar');
  static Language get icelandic =>
      Language(Locale('is'), 'Icelandic', 'Íslenska');
  static Language get igbo => Language(Locale('ig'), 'Igbo', 'Igbo');
  static Language get indonesian =>
      Language(Locale('id'), 'Indonesian', 'Bahasa Indonesia');
  static Language get inuinnaqtun => Language(Locale('ikt'), 'Inuinnaqtun', '');
  static Language get inuktitut =>
      Language(Locale('iu'), 'Inuktitut', 'ᐃᓄᒃᑎᑐᑦ');
  static Language get inuktitutLatin => Language(
      Locale.fromSubtags(languageCode: 'iu', scriptCode: 'Latn'),
      'Inuktitut (Latin)',
      '');

  static Language get irish => Language(Locale('ga'), 'Irish', 'Gaeilge');
  static Language get italian => Language(Locale('it'), 'Italian', 'Italiano');
  static Language get japanese =>
      Language(Locale('ja'), 'Japanese', '日本語 (にほんご)');
  static Language get kannada => Language(Locale('kn'), 'Kannada', 'ಕನ್ನಡ');
  static Language get kashmiri =>
      Language(Locale('ks'), 'Kashmiri', 'कश्मीरी / كشميري');
  static Language get kazakh => Language(Locale('kk'), 'Kazakh', 'Қазақ тілі');
  static Language get khmer => Language(Locale('km'), 'Khmer', 'ភាសាខ្មែរ');
  static Language get kinyarwanda =>
      Language(Locale('rw'), 'Kinyarwanda', 'Kinyarwanda');
  static Language get klingon => Language(
      Locale.fromSubtags(languageCode: 'tlh', scriptCode: 'Latn'),
      'Klingon',
      '');
  static Language get klingonPlqaD => Language(
      Locale.fromSubtags(languageCode: 'tlh', scriptCode: 'Piqd'),
      'Klingon (plqaD)',
      '');

  static Language get konkani => Language(Locale('gom'), 'Konkani', '');
  static Language get korean =>
      Language(Locale('ko'), 'Korean', '한국어 (韓國語) / 조선말 (朝鮮語)');
  static Language get kurdishCentral =>
      Language(Locale('ku'), 'Kurdish (Central)', 'Kurdî / كوردی');
  static Language get kurdishNorthern =>
      Language(Locale('kmr'), 'Kurdish (Northern)', 'Kurdî / كوردی');
  static Language get kyrgyzCyrillic =>
      Language(Locale('ky'), 'Kyrgyz (Cyrillic)', 'кыргыз тили');
  static Language get lao => Language(Locale('lo'), 'Lao', 'ພາສາລາວ');
  static Language get latvian =>
      Language(Locale('lv'), 'Latvian', 'Latviešu valoda');
  static Language get lithuanian =>
      Language(Locale('lt'), 'Lithuanian', 'Lietuvių kalba');
  static Language get lingala => Language(Locale('ln'), 'Lingala', 'Lingála');
  static Language get lowerSorbian =>
      Language(Locale('dsb'), 'Lower Sorbian', '');
  static Language get luganda => Language(Locale('lug'), 'Luganda', '');
  static Language get macedonian =>
      Language(Locale('mk'), 'Macedonian', 'македонски јазик');
  static Language get maithili => Language(Locale('mai'), 'Maithili', '');
  static Language get malagasy =>
      Language(Locale('mg'), 'Malagasy', 'Fiteny malagasy');
  static Language get malayLatin =>
      Language(Locale('ms'), 'Malay (Latin)', 'Bahasa Melayu / بهاس ملايو');
  static Language get malayalam =>
      Language(Locale('ml'), 'Malayalam', 'മലയാളം');
  static Language get maltese => Language(Locale('mt'), 'Maltese', 'Malti');
  static Language get maori => Language(Locale('mi'), 'Maori', 'Te reo Māori');
  static Language get marathi => Language(Locale('mr'), 'Marathi', 'मराठी');
  static Language get mongolianCyrillic => Language(
      Locale.fromSubtags(languageCode: 'mn', scriptCode: 'Cyrl'),
      'Mongolian (Cyrillic)',
      'монгол хэл');
  static Language get mongolianTraditional => Language(
      Locale.fromSubtags(languageCode: 'mn', scriptCode: 'Mong'),
      'Mongolian (Traditional)',
      'ᠮᠣᠩᠭᠣᠯ ᠬᠡᠯᠡ');
  static Language get myanmar => Language(Locale('my'), 'Myanmar', 'ဗမာစာ');
  static Language get nepali => Language(Locale('ne'), 'Nepali', 'नेपाली');
  static Language get norwegian =>
      Language(Locale('nb'), 'Norwegian', 'Norsk bokmål');
  static Language get nyanja => Language(Locale('nya'), 'Nyanja', '');
  static Language get odia => Language(Locale('or'), 'Odia', 'ଓଡ଼ିଆ');
  static Language get pashto => Language(Locale('ps'), 'Pashto', 'پښتو');
  static Language get persian => Language(Locale('fa'), 'Persian', '');
  static Language get polish => Language(Locale('pl'), 'Polish', 'Polski');
  static Language get portugueseBrazil =>
      Language(Locale('pt'), 'Portuguese (Brazil)', 'Português');
  static Language get portuguesePortugal =>
      Language(Locale('pt-pt'), 'Portuguese (Portugal)', 'Português');
  static Language get punjabi =>
      Language(Locale('pa'), 'Punjabi', 'ਪੰਜਾਬੀ ; پنجابی');
  static Language get queretaroOtomi =>
      Language(Locale('otq'), 'Queretaro Otomi', '');
  static Language get romanian => Language(Locale('ro'), 'Romanian', 'Română');
  static Language get rundi => Language(Locale('run'), 'Rundi', '');
  static Language get russian =>
      Language(Locale('ru'), 'Russian', 'русский язык');
  static Language get samoanLatin =>
      Language(Locale('sm'), 'Samoan (Latin)', 'Gagana fa\'a Samoa');
  static Language get serbianCyrillic => Language(
      Locale.fromSubtags(languageCode: 'sr', scriptCode: 'Cyrl'),
      'Serbian (Cyrillic)',
      'српски');
  static Language get serbianLatin => Language(
      Locale.fromSubtags(languageCode: 'sr', scriptCode: 'Latn'),
      'Serbian (Latin)',
      'srpski');
  static Language get sesotho => Language(Locale('st'), 'Sesotho', 'seSotho');
  static Language get sesothoSaLeboa =>
      Language(Locale('nso'), 'Sesotho sa Leboa', '');
  static Language get setswana =>
      Language(Locale('tn'), 'Setswana', 'seTswana');
  static Language get sindhi =>
      Language(Locale('sd'), 'Sindhi', 'सिन्धी / سنڌي، سندھی');
  static Language get sinhala => Language(Locale('si'), 'Sinhala', 'සිංහල');
  static Language get slovak => Language(Locale('sk'), 'Slovak', 'Slovenčina');
  static Language get slovenian =>
      Language(Locale('sl'), 'Slovenian', 'Slovenščina');
  static Language get somaliArabic =>
      Language(Locale('so'), 'Somali (Arabic)', 'Soomaaliga / af Soomaali');
  static Language get spanish => Language(Locale('es'), 'Spanish', 'Español');
  static Language get swahiliLatin =>
      Language(Locale('sw'), 'Swahili (Latin)', 'Kiswahili');
  static Language get swedish => Language(Locale('sv'), 'Swedish', 'Svenska');
  static Language get tahitian =>
      Language(Locale('ty'), 'Tahitian', 'Reo Mā`ohi');
  static Language get tamil => Language(Locale('ta'), 'Tamil', 'தமிழ்');
  static Language get tatarLatin =>
      Language(Locale('tt'), 'Tatar (Latin)', 'татарча / tatarça / تاتارچا');
  static Language get telugu => Language(Locale('te'), 'Telugu', 'తెలుగు');
  static Language get thai => Language(Locale('th'), 'Thai', 'ไทย');
  static Language get tibetan => Language(Locale('bo'), 'Tibetan', '');
  static Language get tigrinya => Language(Locale('ti'), 'Tigrinya', 'ትግርኛ');
  static Language get tongan => Language(Locale('to'), 'Tongan', 'faka Tonga');
  static Language get turkish => Language(Locale('tr'), 'Turkish', 'Türkçe');
  static Language get turkmenLatin =>
      Language(Locale('tk'), 'Turkmen (Latin)', 'Türkmen / Түркмен');
  static Language get ukrainian =>
      Language(Locale('uk'), 'Ukrainian', 'українська мова');
  static Language get upperSorbian =>
      Language(Locale('hsb'), 'Upper Sorbian', '');
  static Language get urdu => Language(Locale('ur'), 'Urdu', 'اردو');
  static Language get uyghurArabic =>
      Language(Locale('ug'), 'Uyghur (Arabic)', 'Uyƣurqə ; ئۇيغۇرچ');
  static Language get uzbekLatin =>
      Language(Locale('uz'), 'Uzbek (Latin)', 'O\'zbek / Ўзбек / أۇزبېك');
  static Language get vietnamese =>
      Language(Locale('vi'), 'Vietnamese', 'Tiếng Việt');
  static Language get welsh => Language(Locale('cy'), 'Welsh', 'Cymraeg');
  static Language get xhosa => Language(Locale('xh'), 'Xhosa', 'isiXhosa');
  static Language get yoruba => Language(Locale('yo'), 'Yoruba', 'Yorùbá');
  static Language get yucatecMaya =>
      Language(Locale('yua'), 'Yucatec Maya', 'Maya t\'aan');
  static Language get zulu => Language(Locale('zu'), 'Zulu', 'isiZulu');

  static List<Language> defaultLanguages = [
    Languages.afrikaans,
    Languages.albanian,
    Languages.amharic,
    Languages.arabic,
    Languages.armenian,
    Languages.assamese,
    Languages.azerbaijaniLatin,
    Languages.bangla,
    Languages.bashkir,
    Languages.basque,
    Languages.bhojpuri,
    Languages.bodo,
    Languages.bosnianLatin,
    Languages.bulgarian,
    Languages.cantoneseTraditional,
    Languages.catalan,
    Languages.chineseLiterary,
    Languages.chineseSimplified,
    Languages.chineseTraditional,
    Languages.chiShona,
    Languages.croatian,
    Languages.czech,
    Languages.danish,
    Languages.dari,
    Languages.divehi,
    Languages.dogri,
    Languages.dutch,
    Languages.english,
    Languages.estonian,
    Languages.faroese,
    Languages.fijian,
    Languages.filipino,
    Languages.finnish,
    Languages.french,
    Languages.frenchCanada,
    Languages.galician,
    Languages.georgian,
    Languages.german,
    Languages.greek,
    Languages.gujarati,
    Languages.haitianCreole,
    Languages.hausa,
    Languages.hebrew,
    Languages.hindi,
    Languages.hmongDawLatin,
    Languages.hungarian,
    Languages.icelandic,
    Languages.igbo,
    Languages.indonesian,
    Languages.inuinnaqtun,
    Languages.inuktitut,
    Languages.inuktitutLatin,
    Languages.irish,
    Languages.italian,
    Languages.japanese,
    Languages.kannada,
    Languages.kashmiri,
    Languages.kazakh,
    Languages.khmer,
    Languages.kinyarwanda,
    Languages.klingon,
    Languages.klingonPlqaD,
    Languages.konkani,
    Languages.korean,
    Languages.kurdishCentral,
    Languages.kurdishNorthern,
    Languages.kyrgyzCyrillic,
    Languages.lao,
    Languages.latvian,
    Languages.lithuanian,
    Languages.lingala,
    Languages.lowerSorbian,
    Languages.luganda,
    Languages.macedonian,
    Languages.maithili,
    Languages.malagasy,
    Languages.malayLatin,
    Languages.malayalam,
    Languages.maltese,
    Languages.maori,
    Languages.marathi,
    Languages.mongolianCyrillic,
    Languages.mongolianTraditional,
    Languages.myanmar,
    Languages.nepali,
    Languages.norwegian,
    Languages.nyanja,
    Languages.odia,
    Languages.pashto,
    Languages.persian,
    Languages.polish,
    Languages.portugueseBrazil,
    Languages.portuguesePortugal,
    Languages.punjabi,
    Languages.queretaroOtomi,
    Languages.romanian,
    Languages.rundi,
    Languages.russian,
    Languages.samoanLatin,
    Languages.serbianCyrillic,
    Languages.serbianLatin,
    Languages.sesotho,
    Languages.sesothoSaLeboa,
    Languages.setswana,
    Languages.sindhi,
    Languages.sinhala,
    Languages.slovak,
    Languages.slovenian,
    Languages.somaliArabic,
    Languages.spanish,
    Languages.swahiliLatin,
    Languages.swedish,
    Languages.tahitian,
    Languages.tamil,
    Languages.tatarLatin,
    Languages.telugu,
    Languages.thai,
    Languages.tibetan,
    Languages.tigrinya,
    Languages.tongan,
    Languages.turkish,
    Languages.turkmenLatin,
    Languages.ukrainian,
    Languages.upperSorbian,
    Languages.urdu,
    Languages.uyghurArabic,
    Languages.uzbekLatin,
    Languages.vietnamese,
    Languages.welsh,
    Languages.xhosa,
    Languages.yoruba,
    Languages.yucatecMaya,
    Languages.zulu
  ];
}
