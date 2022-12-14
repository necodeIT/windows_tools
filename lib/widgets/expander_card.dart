part of windows_tools_widgets;

/// A card that resides in an [Expander].
class ExpanderCard extends StatelessWidget {
  /// Leading widget before the title.
  final Widget? leading;

  /// The title of the card.
  final Widget title;

  /// Subtitle underneath the title.
  final Widget? subtitle;

  /// On tap callback.
  final VoidCallback? onPressed;

  /// Trailing widget at the end of the card.
  final Widget? trailing;

  /// Padding of the content.
  final EdgeInsetsGeometry contentPadding;

  /// The background color of the content.
  final ButtonState<Color>? backgroundColor;

  /// How to align the children.
  final CrossAxisAlignment crossAxisAlignment;

  /// A card that resides in an [Expander].
  const ExpanderCard({
    Key? key,
    this.leading,
    required this.title,
    this.trailing,
    this.contentPadding = const EdgeInsets.only(left: 16, right: 16),
    this.backgroundColor,
    this.subtitle,
    this.onPressed,
    this.crossAxisAlignment = CrossAxisAlignment.start,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HoverButton(
      onPressed: onPressed,
      builder: (context, states) {
        if (onPressed == null) states.remove(ButtonStates.hovering);

        var color = ButtonThemeData.uncheckedInputColor(context.theme, states);

        if (backgroundColor != null) color = backgroundColor!.resolve(states);

        if ((states.isDisabled || states.isNone) && backgroundColor == null) color = context.theme.resources.cardBackgroundFillColorSecondary;

        return SizedBox(
          child: Card(
            backgroundColor: color,
            child: Padding(
              padding: contentPadding,
              child: ListTile(
                crossAxisAlignment: crossAxisAlignment,
                tileColor: ButtonState.all(Colors.transparent),
                onPressed: onPressed,
                leading: leading,
                title: title,
                trailing: trailing,
                subtitle: subtitle,
              ),
            ),
          ),
        );
      },
    );
  }
}
