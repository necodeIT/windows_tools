import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'settings.freezed.dart';
part 'settings.g.dart';

@freezed

/// Settings for the app.
class Settings with _$Settings {
  const Settings._();

  /// Settings for the app.
  factory Settings({
    /// The current language.
    @JsonKey(fromJson: _localeFromJson, toJson: _localeToJson) @Default(Locale("en")) Locale language,
    @Default(true) bool autoCheckUpdates,
  }) = _Settings;

  /// Settings from json.
  factory Settings.fromJson(Map<String, dynamic> json) => _$SettingsFromJson(json);
}

Locale _localeFromJson(Map<String, dynamic> json) => Locale(json['languageCode'], json['countryCode']);

Map<String, dynamic> _localeToJson(Locale locale) => <String, dynamic>{
      'languageCode': locale.languageCode,
      'countryCode': locale.countryCode,
    };