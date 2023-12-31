import "package:flutter/material.dart";

import "../my_theme.dart";

class Btn {
  static Widget basic(
      {color = const Color.fromARGB(0, 0, 0, 0),
      shape = const RoundedRectangleBorder(),
      child = const SizedBox(),
      EdgeInsets padding = EdgeInsets.zero,
      dynamic minWidth,
      dynamic onPressed}) {
    //if (width != null && height != null)
    return TextButton(
      style: TextButton.styleFrom(
          padding: padding,
          backgroundColor: color,
          primary: MyTheme.noColor,
          minimumSize: minWidth == null ? null : Size(minWidth.toDouble(), 10),
          shape: shape),
      child: child,
      onPressed: onPressed != null ? onPressed : () {},
    );
  }

  static Widget minWidthFixHeight(
      {@required minWidth,
      @required double height,
      color,
      shape,
      child,
      dynamic onPressed}) {
    return TextButton(
      style: TextButton.styleFrom(
          primary: MyTheme.noColor,
          minimumSize: Size(minWidth.toDouble(), height.toDouble()),
          backgroundColor: onPressed != null ? color : MyTheme.grey_153,
          shape: shape,
          onSurface: Colors.blue),
      child: child,
      onPressed: onPressed,
    );
  }

  static Widget maxWidthFixHeight(
      {maxWidth, height, color, shape, child, dynamic onPressed}) {
    return TextButton(
      style: TextButton.styleFrom(
          primary: MyTheme.noColor,
          maximumSize: Size(maxWidth, height),
          backgroundColor: color,
          shape: shape),
      child: child,
      onPressed: onPressed,
    );
  }
}
