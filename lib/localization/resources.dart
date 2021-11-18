part of 'delegate.dart';

class R {
  final Locale locale;

  R(this.locale);

  static late R instance;

  static LocalizationsDelegate<R> delegate = _AppLocalizationsDelegate();

  static List<Locale> supportedLocales = [
    const Locale('en'),
    const Locale('de'),
  ];

  static R of(BuildContext context) => Localizations.of<R>(context, R)!;

  static final Map<String, Map<String, String>> _values = {
    'en': {
      'title': 'ToDo',
      'all': 'All',
      'network': 'Network',
      'tasks': 'Tasks',
      'default_task': 'Default task',
    },
    'de': {
      'title': 'ToDo',
      'all': 'Alle',
      'network': 'Netzwerk',
      'tasks': 'Aufgaben',
      'default_task': 'Standardaufgabe',
    },
  };

  String get title {
    return _values[locale.languageCode]?['title'] ?? '';
  }

  String get all {
    return _values[locale.languageCode]?['all'] ?? '';
  }

  String get network {
    return _values[locale.languageCode]?['network'] ?? '';
  }

  String get tasks {
    return _values[locale.languageCode]?['tasks'] ?? '';
  }

  String get defaultTask {
    return _values[locale.languageCode]?['default_task'] ?? '';
  }
}
