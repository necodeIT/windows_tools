// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a de locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'de';

  static String m0(name, amount) => "${name} (${amount})";

  static String m1(name) =>
      "Eine Variable mit dem Namen \"${name}\" existiert bereits.";

  static String m2(progress) => "Update wird installiert (${progress}%)...";

  static String m3(version, date) => "${version} Update - ${date} (Englisch)";

  static String m4(date) => "Zuletzt überprüft: ${date}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "environmentVariables_copy":
            MessageLookupByLibrary.simpleMessage("Kopieren"),
        "environmentVariables_delete":
            MessageLookupByLibrary.simpleMessage("Löschen"),
        "environmentVariables_edit":
            MessageLookupByLibrary.simpleMessage("Bearbeiten"),
        "environmentVariables_edit_cancel":
            MessageLookupByLibrary.simpleMessage("Abbrechen"),
        "environmentVariables_edit_save":
            MessageLookupByLibrary.simpleMessage("Speichern"),
        "environmentVariables_entry_delete_message":
            MessageLookupByLibrary.simpleMessage(
                "Sind Sie sicher, dass Sie diesen Eintrag löschen möchten? Diese Aktion kann nicht rückgängig gemacht werden."),
        "environmentVariables_entry_delete_title":
            MessageLookupByLibrary.simpleMessage("Eintrag löschen?"),
        "environmentVariables_name": m0,
        "environmentVariables_newEntry":
            MessageLookupByLibrary.simpleMessage("Neuer Eintrag"),
        "environmentVariables_newEntry_custom":
            MessageLookupByLibrary.simpleMessage("Benutzerdefiniert"),
        "environmentVariables_newEntry_custom_placeholder":
            MessageLookupByLibrary.simpleMessage("Wert eingeben"),
        "environmentVariables_newEntry_custom_title":
            MessageLookupByLibrary.simpleMessage(
                "Benutzerdefinierten Wert hinzufügen"),
        "environmentVariables_newEntry_directory":
            MessageLookupByLibrary.simpleMessage("Ordner"),
        "environmentVariables_newEntry_file":
            MessageLookupByLibrary.simpleMessage("Datei"),
        "environmentVariables_newVariable_alreadyExists_message": m1,
        "environmentVariables_newVariable_alreadyExists_title":
            MessageLookupByLibrary.simpleMessage("Variable existiert bereits"),
        "environmentVariables_newVariable_placeholder":
            MessageLookupByLibrary.simpleMessage("Variablenname..."),
        "environmentVariables_newVariable_title":
            MessageLookupByLibrary.simpleMessage("Neue Variable erstellen"),
        "environmentVariables_newVariable_tooltip":
            MessageLookupByLibrary.simpleMessage("Neue Variable hinzufügen"),
        "environmentVariables_new_tooltip":
            MessageLookupByLibrary.simpleMessage(
                "Neue Umgebungsvariable hinzufügen"),
        "environmentVariables_open":
            MessageLookupByLibrary.simpleMessage("Öffnen"),
        "environmentVariables_refresh_tooltip":
            MessageLookupByLibrary.simpleMessage("Aktualisieren"),
        "environmentVariables_rename":
            MessageLookupByLibrary.simpleMessage("Umbenennen"),
        "environmentVariables_title_system":
            MessageLookupByLibrary.simpleMessage("System Umgebungsvariablen"),
        "environmentVariables_title_user":
            MessageLookupByLibrary.simpleMessage("Benutzer Umgebungsvariablen"),
        "environmentVariables_toggle_tooltip":
            MessageLookupByLibrary.simpleMessage("Deaktivieren / Aktivieren"),
        "environmentVariables_variable_delete_message":
            MessageLookupByLibrary.simpleMessage(
                "Sind Sie sicher, dass Sie diese Variable löschen möchten? Diese Aktion kann nicht rückgängig gemacht werden."),
        "environmentVariables_variable_delete_title":
            MessageLookupByLibrary.simpleMessage("Variable löschen?"),
        "environmentVariables_variable_delete_tooltip":
            MessageLookupByLibrary.simpleMessage("Variable löschen"),
        "global_404":
            MessageLookupByLibrary.simpleMessage("404 Nicht gefunden"),
        "global_app_title":
            MessageLookupByLibrary.simpleMessage("Windows Tools"),
        "global_dialog_cancel":
            MessageLookupByLibrary.simpleMessage("Abbrechen"),
        "global_dialog_confirm":
            MessageLookupByLibrary.simpleMessage("Bestätigen"),
        "global_search_placeholder":
            MessageLookupByLibrary.simpleMessage("Suchen..."),
        "global_seearch_label": MessageLookupByLibrary.simpleMessage("Suchen"),
        "settings_contribute":
            MessageLookupByLibrary.simpleMessage("Beitragen"),
        "settings_contribute_fork":
            MessageLookupByLibrary.simpleMessage("Fork"),
        "settings_contribute_openIssue":
            MessageLookupByLibrary.simpleMessage("Issue auf GitHub öffnen"),
        "settings_general": MessageLookupByLibrary.simpleMessage("Allgemein"),
        "settings_general_language":
            MessageLookupByLibrary.simpleMessage("Sprache"),
        "settings_general_update_autCheck":
            MessageLookupByLibrary.simpleMessage(
                "Automatisch nach updates suchen"),
        "settings_general_update_checkNow":
            MessageLookupByLibrary.simpleMessage("Nach Updates suchen"),
        "settings_general_update_error": MessageLookupByLibrary.simpleMessage(
            "Ein unerwarteter Fehler ist aufgetreten. Bitte versuchen Sie es später erneut."),
        "settings_general_update_install":
            MessageLookupByLibrary.simpleMessage("Update installieren"),
        "settings_general_update_installing": m2,
        "settings_general_update_newVersion":
            MessageLookupByLibrary.simpleMessage(
                "Eine neue Version ist verfügbar!"),
        "settings_general_update_patchNotes_title": m3,
        "settings_general_update_upToDate":
            MessageLookupByLibrary.simpleMessage(
                "Sie sind auf dem neuesten Stand!"),
        "settings_general_update_upToDate_lastChecked": m4,
        "settings_title": MessageLookupByLibrary.simpleMessage("Einstellungen"),
        "test_title": MessageLookupByLibrary.simpleMessage("Test")
      };
}
