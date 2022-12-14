part of windows_tools_routes;

/// Update section of the settings.
class SettingsGeneralUpdateWidget extends ConsumerStatefulWidget {
  /// Update section of the settings.
  const SettingsGeneralUpdateWidget({Key? key}) : super(key: key);

  @override
  ConsumerState<SettingsGeneralUpdateWidget> createState() => _SettingsGeneralUpdateWidgetState();
}

class _SettingsGeneralUpdateWidgetState extends ConsumerState<SettingsGeneralUpdateWidget> {
  @override
  void dispose() {
    /// TODO: figure out why this crashes the app
    // windowManager.setProgressBar(0);

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var info = ref.watch(updateProvider);
    var updater = ref.watch(updateController);
    var settings = ref.watch(settingsProvider);
    var controller = ref.watch(settingsController);

    /// TODO: figure out why this crashes the app
    // windowManager.setProgressBar(info.installProgress != null ? info.installProgress! / 100 : 0);

    return ConditionalWidget(
      condition: info.installing,
      trueWidget: (context) => ExpanderCard(
        backgroundColor: ButtonState.all(theme.resources.systemFillColorSuccessBackground),
        contentPadding: EdgeInsets.zero,
        leading: const Icon(
          FluentIcons.arrow_sync_24_filled,
          size: kExpanderIconSize,
        ),
        title: Text(
          t.settings_general_update_installing((info.installProgress ?? 0).toStringAsFixed(0)),
        ),
        trailing: SizedBox(
          width: kExpanderTrailingWidth,
          child: ProgressBar(value: info.installProgress),
        ),
      ),
      falseWidget: (context) => Expander(
        initiallyExpanded: info.updateAvailable,
        headerHeight: kExpanderHeaderHeight,
        contentBackgroundColor: theme.cardColor,
        headerBackgroundColor: info.updateAvailable ? ButtonState.all(theme.resources.systemFillColorSuccessBackground) : null,
        contentPadding: EdgeInsets.zero,
        leading: const Icon(
          FluentIcons.arrow_sync_24_filled,
          size: kExpanderIconSize,
        ),
        header: Text(info.updateAvailable ? t.settings_general_update_newVersion : kVersionName),
        trailing: ConditionalWidget(
          condition: info.checking,
          trueWidget: (context) => const SizedBox.square(
            dimension: kExpanderTrailingHeight,
            child: ProgressRing(
              strokeWidth: kExpanderProgressRingWidth,
            ),
          ),
          falseWidget: (context) => Button(
            onPressed: info.updateAvailable ? updater.installUpdate : () => updater.checkForUpdates(kVersion),
            child: Text(
              info.updateAvailable ? t.settings_general_update_install : t.settings_general_update_checkNow,
            ),
          ),
        ),
        content: Column(
          children: [
            if (!info.updateAvailable && info.errorMessage == null && info.lastChecked != null)
              ExpanderCard(
                backgroundColor: ButtonState.all(theme.resources.systemFillColorSuccessBackground),
                leading: Icon(FluentIcons.checkmark_circle_24_filled, color: theme.resources.systemFillColorSuccess, size: kExpanderIconSize),
                title: Text(t.settings_general_update_upToDate, style: theme.typography.bodyStrong),
                subtitle: Text(
                  t.settings_general_update_upToDate_lastChecked(
                    kDateFormatter.format(info.lastChecked!),
                  ),
                ),
              ),
            if (info.errorMessage != null)
              ExpanderCard(
                backgroundColor: ButtonState.all(theme.resources.systemFillColorCriticalBackground),
                leading: Icon(FluentIcons.error_circle_24_filled, color: theme.resources.systemFillColorCritical),
                title: Text(t.settings_general_update_error, style: theme.typography.bodyStrong),
              ),
            if (info.updateAvailable)
              ExpanderCard(
                backgroundColor: ButtonState.all(theme.resources.systemFillColorAttentionBackground),
                leading: Icon(
                  FluentIcons.notepad_24_filled,
                  color: theme.accentColor.defaultBrushFor(theme.brightness),
                  size: kExpanderIconSize,
                ),
                title: Text(
                  t.settings_general_update_patchNotes_title(
                    info.releaseName!,
                    kDateFormatter.format(info.releaseDate!),
                  ),
                  style: theme.typography.subtitle,
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: NcSpacing.smallSpacing),
                  child: MarkdownBody(
                    data: info.patchNotes!,
                    extensionSet: md.ExtensionSet.gitHubFlavored,
                    styleSheet: MarkdownStyleSheet(
                      p: theme.typography.body,
                      a: theme.typography.body!.copyWith(
                        color: theme.accentColor.defaultBrushFor(theme.brightness),
                      ),
                      h1: theme.typography.bodyLarge!.copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                      code: theme.typography.caption,
                      strong: theme.typography.bodyStrong,
                    ),
                    onTapLink: (text, href, title) => launchUrl(Uri.parse(href!)),
                  ),
                ),
              ),
            ExpanderCard(
              title: Text(t.settings_general_update_autCheck),
              trailing: ToggleSwitch(
                checked: settings.autoCheckUpdates,
                onChanged: controller.setAutoCheck,
              ),
              onPressed: () => controller.setAutoCheck(!settings.autoCheckUpdates),
              // onPressed: () => print("sdasdasdasd"),
            ),
          ],
        ),
      ),
    );
  }
}
