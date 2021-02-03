import 'dart:ui';

import 'package:flutter/material.dart';

///This class represents all the available CSS attributes
///for this package.
class Style {
  /// CSS attribute "`background-color`"
  ///
  /// Inherited: no,
  /// Default: Colors.transparent,
  Color backgroundColor;

  /// CSS attribute "`color`"
  ///
  /// Inherited: yes,
  /// Default: unspecified,
  Color color;

  /// CSS attribute "`direction`"
  ///
  /// Inherited: yes,
  /// Default: TextDirection.ltr,
  TextDirection direction;

  /// CSS attribute "`display`"
  ///
  /// Inherited: no,
  /// Default: unspecified,
  Display display;

  /// CSS attribute "`font-family`"
  ///
  /// Inherited: yes,
  /// Default: Theme.of(context).style.textTheme.body1.fontFamily
  String fontFamily;

  /// CSS attribute "`font-feature-settings`"
  ///
  /// Inherited: yes,
  /// Default: normal
  List<FontFeature> fontFeatureSettings;

  /// CSS attribute "`font-size`"
  ///
  /// Inherited: yes,
  /// Default: FontSize.medium
  FontSize fontSize;

  /// CSS attribute "`font-style`"
  ///
  /// Inherited: yes,
  /// Default: FontStyle.normal,
  FontStyle fontStyle;

  /// CSS attribute "`font-weight`"
  ///
  /// Inherited: yes,
  /// Default: FontWeight.normal,
  FontWeight fontWeight;

  /// CSS attribute "`height`"
  ///
  /// Inherited: no,
  /// Default: Unspecified (null),
  double height;

  /// CSS attribute "`letter-spacing`"
  ///
  /// Inherited: yes,
  /// Default: normal (0),
  double letterSpacing;

  /// CSS attribute "`list-style-type`"
  ///
  /// Inherited: yes,
  /// Default: ListStyleType.DISC
  ListStyleType listStyleType;

  /// CSS attribute "`list-style-position`"
  ///
  /// Inherited: yes,
  /// Default: ListStylePosition.OUTSIDE
  ListStylePosition listStylePosition;

  /// CSS attribute "`padding`"
  ///
  /// Inherited: no,
  /// Default: EdgeInsets.zero
  EdgeInsets padding;

  /// CSS attribute "`margin`"
  ///
  /// Inherited: no,
  /// Default: EdgeInsets.zero
  EdgeInsets margin;

  /// CSS attribute "`text-align`"
  ///
  /// Inherited: yes,
  /// Default: TextAlign.start,
  TextAlign textAlign;

  /// CSS attribute "`text-decoration`"
  ///
  /// Inherited: no,
  /// Default: TextDecoration.none,
  TextDecoration textDecoration;

  /// CSS attribute "`text-decoration-color`"
  ///
  /// Inherited: no,
  /// Default: Current color
  Color textDecorationColor;

  /// CSS attribute "`text-decoration-style`"
  ///
  /// Inherited: no,
  /// Default: TextDecorationStyle.solid,
  TextDecorationStyle textDecorationStyle;

  /// Loosely based on CSS attribute "`text-decoration-thickness`"
  ///
  /// Uses a percent modifier based on the font size.
  ///
  /// Inherited: no,
  /// Default: 1.0 (specified by font size)
  // TODO(Sub6Resources): Possibly base this more closely on the CSS attribute.
  double textDecorationThickness;

  /// CSS attribute "`text-shadow`"
  ///
  /// Inherited: yes,
  /// Default: none,
  List<Shadow> textShadow;

  /// CSS attribute "`vertical-align`"
  ///
  /// Inherited: no,
  /// Default: VerticalAlign.BASELINE,
  VerticalAlign verticalAlign;

  /// CSS attribute "`white-space`"
  ///
  /// Inherited: yes,
  /// Default: WhiteSpace.NORMAL,
  WhiteSpace whiteSpace;

  /// CSS attribute "`width`"
  ///
  /// Inherited: no,
  /// Default: unspecified (null)
  double width;

  /// CSS attribute "`word-spacing`"
  ///
  /// Inherited: yes,
  /// Default: normal (0)
  double wordSpacing;

  /// CSS attribute "`line-height`"
  ///
  /// Supported values: double values
  ///
  /// Unsupported values: normal, 80%, ..
  ///
  /// Inherited: no,
  /// Default: Unspecified (null),
  LineHeight lineHeight;

  //TODO modify these to match CSS styles
  String before;
  String after;
  Border border;
  Alignment alignment;
  String markerContent;

  Style({
    this.backgroundColor = Colors.transparent,
    this.color,
    this.direction,
    this.display,
    this.fontFamily,
    this.fontFeatureSettings,
    this.fontSize,
    this.fontStyle,
    this.fontWeight,
    this.height,
    this.lineHeight,
    this.letterSpacing,
    this.listStyleType,
    this.listStylePosition,
    this.padding,
    this.margin,
    this.textAlign,
    this.textDecoration,
    this.textDecorationColor,
    this.textDecorationStyle,
    this.textDecorationThickness,
    this.textShadow,
    this.verticalAlign,
    this.whiteSpace,
    this.width,
    this.wordSpacing,
    this.before,
    this.after,
    this.border,
    this.alignment,
    this.markerContent,
  }) {
    if (this.alignment == null &&
        (display == Display.BLOCK || display == Display.LIST_ITEM)) {
      this.alignment = Alignment.centerLeft;
    }
  }

  TextStyle generateTextStyle() {
    return TextStyle(
      backgroundColor: backgroundColor,
      color: color,
      decoration: textDecoration,
      decorationColor: textDecorationColor,
      decorationStyle: textDecorationStyle,
      decorationThickness: textDecorationThickness,
      fontFamily: fontFamily,
      fontFeatures: fontFeatureSettings,
      fontSize: fontSize?.size,
      fontStyle: fontStyle,
      fontWeight: fontWeight,
      letterSpacing: letterSpacing,
      shadows: textShadow,
      wordSpacing: wordSpacing,
      height: lineHeight?.size ?? 1.0,
      //TODO background
      //TODO textBaseline
    );
  }

  @override
  String toString() {
    return "Style";
  }

  Style merge(Style other) {
    if (other == null) return this;

    return copyWith(
      backgroundColor: other.backgroundColor,
      color: other.color,
      direction: other.direction,
      display: other.display,
      fontFamily: other.fontFamily,
      fontFeatureSettings: other.fontFeatureSettings,
      fontSize: other.fontSize,
      fontStyle: other.fontStyle,
      fontWeight: other.fontWeight,
      height: other.height,
      lineHeight: other.lineHeight,
      letterSpacing: other.letterSpacing,
      listStyleType: other.listStyleType,
      listStylePosition: other.listStylePosition,
      padding: other.padding,
      //TODO merge EdgeInsets
      margin: other.margin,
      //TODO merge EdgeInsets
      textAlign: other.textAlign,
      textDecoration: other.textDecoration,
      textDecorationColor: other.textDecorationColor,
      textDecorationStyle: other.textDecorationStyle,
      textDecorationThickness: other.textDecorationThickness,
      textShadow: other.textShadow,
      verticalAlign: other.verticalAlign,
      whiteSpace: other.whiteSpace,
      width: other.width,
      wordSpacing: other.wordSpacing,

      before: other.before,
      after: other.after,
      border: other.border,
      //TODO merge border
      alignment: other.alignment,
      markerContent: other.markerContent,
    );
  }

  Style copyOnlyInherited(Style child) {
    if (child == null) return this;

    FontSize finalFontSize = child.fontSize != null ?
      fontSize != null && child.fontSize?.units == "em" ?
        FontSize(child.fontSize.size * fontSize.size, "") : child.fontSize
      : fontSize != null && fontSize.size < 0 ?
        FontSize.percent(100) : fontSize;
    LineHeight finalLineHeight = child.lineHeight != null ?
      child.lineHeight?.units == "length" ?
        LineHeight(child.lineHeight.size / (finalFontSize == null ? 14 : finalFontSize.size) * 1.2, "") : child.lineHeight
      : lineHeight;
    return child.copyWith(
      color: child.color ?? color,
      direction: child.direction ?? direction,
      display: display == Display.NONE ? display : child.display,
      fontFamily: child.fontFamily ?? fontFamily,
      fontFeatureSettings: child.fontFeatureSettings ?? fontFeatureSettings,
      fontSize: finalFontSize,
      fontStyle: child.fontStyle ?? fontStyle,
      fontWeight: child.fontWeight ?? fontWeight,
      lineHeight: finalLineHeight,
      letterSpacing: child.letterSpacing ?? letterSpacing,
      listStyleType: child.listStyleType ?? listStyleType,
      listStylePosition: child.listStylePosition ?? listStylePosition,
      textAlign: child.textAlign ?? textAlign,
      textShadow: child.textShadow ?? textShadow,
      whiteSpace: child.whiteSpace ?? whiteSpace,
      wordSpacing: child.wordSpacing ?? wordSpacing,
    );
  }

  Style copyWith({
    Color backgroundColor,
    Color color,
    TextDirection direction,
    Display display,
    String fontFamily,
    List<FontFeature> fontFeatureSettings,
    FontSize fontSize,
    FontStyle fontStyle,
    FontWeight fontWeight,
    double height,
    LineHeight lineHeight,
    double letterSpacing,
    ListStyleType listStyleType,
    ListStylePosition listStylePosition,
    EdgeInsets padding,
    EdgeInsets margin,
    TextAlign textAlign,
    TextDecoration textDecoration,
    Color textDecorationColor,
    TextDecorationStyle textDecorationStyle,
    double textDecorationThickness,
    List<Shadow> textShadow,
    VerticalAlign verticalAlign,
    WhiteSpace whiteSpace,
    double width,
    double wordSpacing,
    String before,
    String after,
    Border border,
    Alignment alignment,
    String markerContent,
  }) {
    return Style(
      backgroundColor: backgroundColor ?? this.backgroundColor,
      color: color ?? this.color,
      direction: direction ?? this.direction,
      display: display ?? this.display,
      fontFamily: fontFamily ?? this.fontFamily,
      fontFeatureSettings: fontFeatureSettings ?? this.fontFeatureSettings,
      fontSize: fontSize ?? this.fontSize,
      fontStyle: fontStyle ?? this.fontStyle,
      fontWeight: fontWeight ?? this.fontWeight,
      height: height ?? this.height,
      lineHeight: lineHeight ?? this.lineHeight,
      letterSpacing: letterSpacing ?? this.letterSpacing,
      listStyleType: listStyleType ?? this.listStyleType,
      listStylePosition: listStylePosition ?? this.listStylePosition,
      padding: padding ?? this.padding,
      margin: margin ?? this.margin,
      textAlign: textAlign ?? this.textAlign,
      textDecoration: textDecoration ?? this.textDecoration,
      textDecorationColor: textDecorationColor ?? this.textDecorationColor,
      textDecorationStyle: textDecorationStyle ?? this.textDecorationStyle,
      textDecorationThickness:
          textDecorationThickness ?? this.textDecorationThickness,
      textShadow: textShadow ?? this.textShadow,
      verticalAlign: verticalAlign ?? this.verticalAlign,
      whiteSpace: whiteSpace ?? this.whiteSpace,
      width: width ?? this.width,
      wordSpacing: wordSpacing ?? this.wordSpacing,
      before: before ?? this.before,
      after: after ?? this.after,
      border: border ?? this.border,
      alignment: alignment ?? this.alignment,
      markerContent: markerContent ?? this.markerContent,
    );
  }

  Style.fromTextStyle(TextStyle textStyle) {
    this.backgroundColor = textStyle.backgroundColor;
    this.color = textStyle.color;
    this.textDecoration = textStyle.decoration;
    this.textDecorationColor = textStyle.decorationColor;
    this.textDecorationStyle = textStyle.decorationStyle;
    this.textDecorationThickness = textStyle.decorationThickness;
    this.fontFamily = textStyle.fontFamily;
    this.fontFeatureSettings = textStyle.fontFeatures;
    this.fontSize = FontSize(textStyle.fontSize, "");
    this.fontStyle = textStyle.fontStyle;
    this.fontWeight = textStyle.fontWeight;
    this.letterSpacing = textStyle.letterSpacing;
    this.textShadow = textStyle.shadows;
    this.wordSpacing = textStyle.wordSpacing;
    this.lineHeight = LineHeight(textStyle.height ?? 1.2, "");
  }
}

enum Display {
  BLOCK,
  INLINE,
  INLINE_BLOCK,
  LIST_ITEM,
  NONE,
}

class FontSize {
  final double size;
  final String units;

  const FontSize(this.size, this.units);

  /// A percentage of the parent style's font size.
  factory FontSize.percent(int percent) {
    return FontSize(percent.toDouble() / -100.0, "%");
  }

  factory FontSize.em(double em) {
    return FontSize(em, "em");
  }

  factory FontSize.rem(double rem) {
    return FontSize(rem * 16 - 2, "rem");
  }
  // These values are calculated based off of the default (`medium`)
  // being 14px.
  //
  // TODO(Sub6Resources): This seems to override Flutter's accessibility text scaling.
  //
  // Negative values are computed during parsing to be a percentage of
  // the parent style's font size.
  static const xxSmall = FontSize(7.875, "");
  static const xSmall = FontSize(8.75, "");
  static const small = FontSize(11.375, "");
  static const medium = FontSize(14.0, "");
  static const large = FontSize(15.75, "");
  static const xLarge = FontSize(21.0, "");
  static const xxLarge = FontSize(28.0, "");
  static const smaller = FontSize(-0.83, "");
  static const larger = FontSize(-1.2, "");
}

class LineHeight {
  final double size;
  final String units;

  const LineHeight(this.size, this.units);

  factory LineHeight.percent(double percent) {
    return LineHeight(percent / 100.0 * 1.2, "%");
  }

  factory LineHeight.em(double em) {
    return LineHeight(em * 1.2, "em");
  }

  factory LineHeight.rem(double rem) {
    return LineHeight(rem * 1.2, "rem");
  }

  factory LineHeight.number(double num) {
    return LineHeight(num * 1.2, "number");
  }

  static const normal = LineHeight(1.2, "");
}

enum ListStyleType {
  DISC,
  DECIMAL,
}

enum ListStylePosition {
  OUTSIDE,
  INSIDE,
}

enum VerticalAlign {
  BASELINE,
  SUB,
  SUPER,
}

enum WhiteSpace {
  NORMAL,
  PRE,
}
