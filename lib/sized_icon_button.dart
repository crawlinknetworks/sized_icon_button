library sized_icon_button;

import 'package:flutter/material.dart';

class SizedIconButton extends StatelessWidget {
  final Icon icon;
  final Function()? onPressed;
  final EdgeInsets? padding;
  final bool autofocus;
  final Color? splashColor;
  final Color? focusColor;
  final Color? hoverColor;
  final Color? color;
  final FocusNode? focusNode;
  final String? tooltip;
  final Decoration? tooltipDecoration;

  SizedIconButton({
    Key? key,
    required this.icon,
    this.onPressed,
    this.padding,
    this.autofocus = false,
    this.splashColor,
    this.focusColor,
    this.hoverColor,
    this.focusNode,
    this.color,
    this.tooltip,
    this.tooltipDecoration,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Material(
        color: color,
        child: tooltip != null
            ? Tooltip(
                message: tooltip!,
                waitDuration: Duration(microseconds: 300),
                decoration: tooltipDecoration,
                child: _buildInkWell(),
              )
            : _buildInkWell(),
      ),
    );
  }

  _buildInkWell() {
    return InkWell(
      autofocus: autofocus,
      splashColor: splashColor ?? Colors.black.withAlpha(15),
      hoverColor: hoverColor ?? Colors.black.withAlpha(20),
      focusColor: focusColor ?? Colors.black.withAlpha(30),
      focusNode: focusNode,
      mouseCursor: SystemMouseCursors.click,
      child: Padding(
        padding: padding ?? EdgeInsets.all(8),
        child: icon,
      ),
      onTap: onPressed,
    );
  }
}
