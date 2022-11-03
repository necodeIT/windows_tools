// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Refresh`
  String get environmentVariables_refresh_tooltip {
    return Intl.message(
      'Refresh',
      name: 'environmentVariables_refresh_tooltip',
      desc: '',
      args: [],
    );
  }

  /// `Create new`
  String get environmentVariables_new_tooltip {
    return Intl.message(
      'Create new',
      name: 'environmentVariables_new_tooltip',
      desc: '',
      args: [],
    );
  }

  /// `Delete`
  String get environmentVariables_delete_tooltip {
    return Intl.message(
      'Delete',
      name: 'environmentVariables_delete_tooltip',
      desc: '',
      args: [],
    );
  }

  /// `Toggle`
  String get environmentVariables_toggle_tooltip {
    return Intl.message(
      'Toggle',
      name: 'environmentVariables_toggle_tooltip',
      desc: '',
      args: [],
    );
  }

  /// `Edit`
  String get environmentVariables_edit_tooltip {
    return Intl.message(
      'Edit',
      name: 'environmentVariables_edit_tooltip',
      desc: '',
      args: [],
    );
  }

  /// `{name} ({amount})`
  String environmentVariables_name(String name, int amount) {
    return Intl.message(
      '$name ($amount)',
      name: 'environmentVariables_name',
      desc: 'The display text of the environment variable name',
      args: [name, amount],
    );
  }

  /// `Add new entry`
  String get environmentVariables_newEntry {
    return Intl.message(
      'Add new entry',
      name: 'environmentVariables_newEntry',
      desc: '',
      args: [],
    );
  }

  /// `Environment Variables`
  String get environmentVariables_title {
    return Intl.message(
      'Environment Variables',
      name: 'environmentVariables_title',
      desc: '',
      args: [],
    );
  }

  /// `Search`
  String get global_seearch_label {
    return Intl.message(
      'Search',
      name: 'global_seearch_label',
      desc: '',
      args: [],
    );
  }

  /// `Search...`
  String get global_search_placeholder {
    return Intl.message(
      'Search...',
      name: 'global_search_placeholder',
      desc: '',
      args: [],
    );
  }

  /// `404 Not Found`
  String get global_404 {
    return Intl.message(
      '404 Not Found',
      name: 'global_404',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get settings_title {
    return Intl.message(
      'Settings',
      name: 'settings_title',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
