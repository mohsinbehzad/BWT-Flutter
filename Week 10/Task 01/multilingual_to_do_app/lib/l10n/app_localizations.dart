import 'package:flutter/material.dart';
import 'app_localizations_delegate.dart';

class AppLocalizations {
  final Locale locale;

  AppLocalizations(this.locale);

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = AppLocalizationsDelegate();

  // Add localized strings
  static final Map<String, Map<String, String>> _localizedValues = {
    'en': {
      'app_title': 'To-Do',
      'add_task': 'Add a new task',
      'save': 'Save',
      'cancel': 'Cancel',
    },
    'de': {
      'app_title': 'Aufgabenliste',
      'add_task': 'Neue Aufgabe hinzufügen',
      'save': 'Speichern',
      'cancel': 'Abbrechen',
    },
    'ur': {
      'app_title': 'کام',
      'add_task': 'نیا کام شامل کریں',
      'save': 'محفوظ کریں',
      'cancel': 'منسوخ کریں',
    }
  };

  String get appTitle {
    return _localizedValues[locale.languageCode]!['app_title']!;
  }

  String get addTask {
    return _localizedValues[locale.languageCode]!['add_task']!;
  }

  String get save {
    return _localizedValues[locale.languageCode]!['save']!;
  }

  String get cancel {
    return _localizedValues[locale.languageCode]!['cancel']!;
  }
}
