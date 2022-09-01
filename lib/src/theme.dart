import 'dart:ui' as ui;

import 'package:combined_animation/combined_animation.dart';
import 'package:flutter/material.dart';

import 'dialog_icons.dart';
import 'my_dialog.dart';

/// Provide unified parameter settings for various dialogs
class ShirneDialogTheme extends ThemeExtension<ShirneDialogTheme> {
  /// detault top position for [MyDialog.toast]
  final Alignment alignTop;

  /// default bottom position for [MyDialog.toast]
  final Alignment alignBottom;

  /// success icon for [MyDialog.toast]
  final Widget iconSuccess;

  /// error icon for [MyDialog.toast]
  final Widget iconError;

  /// warning icon for [MyDialog.toast]
  final Widget iconWarning;

  /// info icon for [MyDialog.toast]
  final Widget iconInfo;

  /// help icon for [MyDialog.toast]
  final Widget iconHelp;

  final ButtonStyle? primaryButtonStyle;
  final ButtonStyle? cancelButtonStyle;

  final ModalStyle? modalStyle;
  final ToastStyle? toastStyle;
  final SnackStyle? snackStyle;
  final LoadingStyle? loadingStyle;

  const ShirneDialogTheme({
    this.alignTop = const Alignment(0.0, -0.7),
    this.alignBottom = const Alignment(0.0, 0.7),
    this.iconSuccess = const Icon(
      DialogIcons.checkmarkFill,
      color: Colors.green,
    ),
    this.iconError = const Icon(
      DialogIcons.closeFill,
      color: Colors.red,
    ),
    this.iconWarning = const Icon(
      DialogIcons.warningFill,
      color: Colors.deepOrangeAccent,
    ),
    this.iconInfo = const Icon(
      DialogIcons.informationFill,
      color: Colors.blue,
    ),
    this.iconHelp = const Icon(
      DialogIcons.helpFill,
      color: Colors.blue,
    ),
    this.primaryButtonStyle,
    this.cancelButtonStyle,
    this.modalStyle = const ModalStyle(),
    this.toastStyle = const ToastStyle(),
    this.snackStyle = const SnackStyle(),
    this.loadingStyle = const LoadingStyle(),
  });

  /// Creates a copy of this theme
  /// but with the given fields replaced with the new values.
  @override
  ThemeExtension<ShirneDialogTheme> copyWith({
    Alignment? alignTop,
    Alignment? alignBottom,
    Icon? iconSuccess,
    Icon? iconError,
    Icon? iconWarning,
    Icon? iconInfo,
    Icon? iconHelp,
    ButtonStyle? primaryButtonStyle,
    ButtonStyle? cancelButtonStyle,
    ModalStyle? modalStyle,
    LoadingStyle? loadingStyle,
  }) {
    return ShirneDialogTheme(
      alignTop: alignTop ?? this.alignTop,
      alignBottom: alignBottom ?? this.alignBottom,
      iconSuccess: iconSuccess ?? this.iconSuccess,
      iconError: iconError ?? this.iconError,
      iconWarning: iconWarning ?? this.iconWarning,
      iconInfo: iconInfo ?? this.iconInfo,
      iconHelp: iconHelp ?? this.iconHelp,
      primaryButtonStyle: primaryButtonStyle ?? this.primaryButtonStyle,
      cancelButtonStyle: cancelButtonStyle ?? this.cancelButtonStyle,
      modalStyle: modalStyle ?? this.modalStyle,
      loadingStyle: loadingStyle ?? this.loadingStyle,
    );
  }

  /// lerp theme
  @override
  ThemeExtension<ShirneDialogTheme> lerp(
    ThemeExtension<ShirneDialogTheme>? other,
    double t,
  ) {
    final o = other as ShirneDialogTheme?;
    return ShirneDialogTheme(
      alignTop: Alignment.lerp(alignTop, o?.alignTop, t) ?? alignTop,
      alignBottom:
          Alignment.lerp(alignBottom, o?.alignBottom, t) ?? alignBottom,
      iconSuccess: t < 0.5 ? iconSuccess : o?.iconSuccess ?? iconSuccess,
      iconError: t < 0.5 ? iconError : o?.iconError ?? iconError,
      iconWarning: t < 0.5 ? iconWarning : o?.iconWarning ?? iconWarning,
      iconInfo: t < 0.5 ? iconInfo : o?.iconInfo ?? iconInfo,
      iconHelp: t < 0.5 ? iconHelp : o?.iconHelp ?? iconHelp,
      primaryButtonStyle:
          ButtonStyle.lerp(primaryButtonStyle, o?.primaryButtonStyle, t) ??
              primaryButtonStyle,
      cancelButtonStyle:
          ButtonStyle.lerp(cancelButtonStyle, o?.cancelButtonStyle, t) ??
              cancelButtonStyle,
      modalStyle: ModalStyle.lerp(modalStyle, o?.modalStyle, t),
      toastStyle: ToastStyle.lerp(toastStyle, o?.toastStyle, t),
      snackStyle: SnackStyle.lerp(snackStyle, o?.snackStyle, t),
      loadingStyle: LoadingStyle.lerp(loadingStyle, other?.loadingStyle, t),
    );
  }
}

/// Style for modal
class ModalStyle {
  final EdgeInsetsGeometry? titlePadding;
  final TextStyle? titleTextStyle;
  final EdgeInsets contentPadding;
  final TextStyle? contentTextStyle;
  final EdgeInsetsGeometry actionsPadding;
  final MainAxisAlignment? actionsAlignment;
  final VerticalDirection? actionsOverflowDirection;
  final double? actionsOverflowButtonSpacing;
  final EdgeInsetsGeometry? buttonPadding;
  final Color? backgroundColor;
  final double? elevation;
  final String? semanticLabel;
  final EdgeInsets insetPadding;
  final Clip clipBehavior;
  final ShapeBorder? shape;
  final bool scrollable;

  const ModalStyle({
    this.titlePadding,
    this.titleTextStyle,
    this.contentPadding = const EdgeInsets.fromLTRB(24.0, 20.0, 24.0, 24.0),
    this.contentTextStyle,
    this.actionsPadding = EdgeInsets.zero,
    this.actionsAlignment,
    this.actionsOverflowDirection,
    this.actionsOverflowButtonSpacing,
    this.buttonPadding,
    this.backgroundColor,
    this.elevation,
    this.semanticLabel,
    this.insetPadding = const EdgeInsets.symmetric(
      horizontal: 40.0,
      vertical: 24.0,
    ),
    this.clipBehavior = Clip.none,
    this.shape,
    this.scrollable = false,
  });

  /// Creates a copy of this style
  /// but with the given fields replaced with the new values.
  ModalStyle copyWith({
    EdgeInsetsGeometry? titlePadding,
    TextStyle? titleTextStyle,
    EdgeInsets? contentPadding,
    TextStyle? contentTextStyle,
    EdgeInsetsGeometry? actionsPadding,
    MainAxisAlignment? actionsAlignment,
    VerticalDirection? actionsOverflowDirection,
    double? actionsOverflowButtonSpacing,
    EdgeInsetsGeometry? buttonPadding,
    Color? backgroundColor,
    double? elevation,
    String? semanticLabel,
    EdgeInsets? insetPadding,
    Clip? clipBehavior,
    ShapeBorder? shape,
    bool? scrollable,
  }) =>
      ModalStyle(
        titlePadding: titlePadding ?? this.titlePadding,
        titleTextStyle: titleTextStyle ?? this.titleTextStyle,
        contentPadding: contentPadding ?? this.contentPadding,
        contentTextStyle: contentTextStyle ?? this.contentTextStyle,
        actionsPadding: actionsPadding ?? this.actionsPadding,
        actionsAlignment: actionsAlignment ?? this.actionsAlignment,
        actionsOverflowDirection:
            actionsOverflowDirection ?? this.actionsOverflowDirection,
        actionsOverflowButtonSpacing:
            actionsOverflowButtonSpacing ?? this.actionsOverflowButtonSpacing,
        buttonPadding: buttonPadding ?? this.buttonPadding,
        backgroundColor: backgroundColor ?? this.backgroundColor,
        elevation: elevation ?? this.elevation,
        semanticLabel: semanticLabel ?? this.semanticLabel,
        insetPadding: insetPadding ?? this.insetPadding,
        clipBehavior: clipBehavior ?? this.clipBehavior,
        shape: shape ?? this.shape,
        scrollable: scrollable ?? this.scrollable,
      );

  /// lerp ModalStyle
  static ModalStyle lerp(ModalStyle? a, ModalStyle? b, double t) {
    return ModalStyle(
      titlePadding:
          EdgeInsetsGeometry.lerp(a?.titlePadding, b?.titlePadding, t),
      titleTextStyle: TextStyle.lerp(a?.titleTextStyle, b?.titleTextStyle, t),
      contentPadding:
          EdgeInsets.lerp(a?.contentPadding, b?.contentPadding, t) ??
              EdgeInsets.zero,
      contentTextStyle:
          TextStyle.lerp(a?.contentTextStyle, b?.contentTextStyle, t),
      actionsPadding:
          EdgeInsetsGeometry.lerp(a?.actionsPadding, b?.actionsPadding, t) ??
              EdgeInsets.zero,
      actionsAlignment: t < 0.5 ? a?.actionsAlignment : b?.actionsAlignment,
      actionsOverflowDirection:
          t < 0.5 ? a?.actionsOverflowDirection : b?.actionsOverflowDirection,
      actionsOverflowButtonSpacing: ui.lerpDouble(
        a?.actionsOverflowButtonSpacing ?? 0,
        b?.actionsOverflowButtonSpacing ?? 0,
        t,
      ),
      buttonPadding:
          EdgeInsetsGeometry.lerp(a?.buttonPadding, b?.buttonPadding, t),
      backgroundColor: Color.lerp(a?.backgroundColor, b?.backgroundColor, t),
      elevation: ui.lerpDouble(a?.elevation, b?.elevation, t),
      semanticLabel: t < 0.5 ? a?.semanticLabel : b?.semanticLabel,
      insetPadding: EdgeInsets.lerp(a?.insetPadding, b?.insetPadding, t) ??
          EdgeInsets.zero,
      clipBehavior: (t < 0.5 ? a?.clipBehavior : b?.clipBehavior) ?? Clip.none,
      shape: ShapeBorder.lerp(a?.shape, b?.shape, t),
      scrollable: (t < 0.5 ? a?.scrollable : b?.scrollable) ?? false,
    );
  }
}

abstract class AnimatedOverlayStyle {
  final AnimationConfig? enterAnimation;
  final AnimationConfig? leaveAnimation;
  const AnimatedOverlayStyle(this.enterAnimation, this.leaveAnimation);

  /// Set align style for animation if do not contains align
  AnimatedOverlayStyle topIfNoAlign({bool? isAnimate}) {
    if (enterAnimation?.endAlign != null) return this;
    return _reAlign(
      MyDialog.theme.alignTop,
      (isAnimate ?? enterAnimation?.startAlign != enterAnimation?.endAlign)
          ? const Alignment(0, -1.2)
          : null,
    );
  }

  /// Set align top for animation
  AnimatedOverlayStyle top({bool? isAnimate}) {
    return _reAlign(
      MyDialog.theme.alignTop,
      (isAnimate ?? enterAnimation?.startAlign != enterAnimation?.endAlign)
          ? const Alignment(0, -1.2)
          : null,
    );
  }

  /// Set align bottom for animation if do not contains align
  AnimatedOverlayStyle bottomIfNoAlign({bool? isAnimate}) {
    if (enterAnimation?.endAlign != null) return this;
    return _reAlign(
      MyDialog.theme.alignBottom,
      (isAnimate ?? enterAnimation?.startAlign != enterAnimation?.endAlign)
          ? const Alignment(0, 1.2)
          : null,
    );
  }

  /// Set align bottom for animation
  AnimatedOverlayStyle bottom({bool? isAnimate}) {
    return _reAlign(
      MyDialog.theme.alignBottom,
      (isAnimate ?? enterAnimation?.startAlign != enterAnimation?.endAlign)
          ? const Alignment(0, 1.2)
          : null,
    );
  }

  /// Set align center for animation if do not contains align
  AnimatedOverlayStyle centerIfNoAlign({bool? isAnimate}) {
    if (enterAnimation?.endAlign != null) return this;
    return _reAlign(
      Alignment.center,
      (isAnimate ?? enterAnimation?.startAlign != enterAnimation?.endAlign)
          ? const Alignment(0, 1.2)
          : null,
    );
  }

  /// Set align center for animation
  AnimatedOverlayStyle center({bool? isAnimate}) {
    return _reAlign(
      Alignment.center,
      (isAnimate ?? enterAnimation?.startAlign != enterAnimation?.endAlign)
          ? const Alignment(0, 1.2)
          : null,
    );
  }

  AnimatedOverlayStyle _reAlign(Alignment align, Alignment? out) {
    return copyWith(
      enterAnimation:
          (enterAnimation ?? AnimationConfig.fadeAndZoomIn).copyWith(
        startAlign: out ?? align,
        endAlign: align,
      ),
      leaveAnimation:
          (leaveAnimation ?? AnimationConfig.fadeAndZoomOut).copyWith(
        startAlign: align,
        endAlign: out ?? align,
      ),
    );
  }

  AnimatedOverlayStyle copyWith({
    AnimationConfig? enterAnimation,
    AnimationConfig? leaveAnimation,
  });
}

class LoadingStyle extends AnimatedOverlayStyle {
  final bool showOverlay;
  final Color? overlayColor;
  final BoxDecoration? decoration;
  final EdgeInsetsGeometry padding;
  final double strokeWidth;
  final Animation<Color?>? valueColor;
  final Color? color;
  final Color? backgroundColor;

  final Widget Function(BuildContext, double)? builder;

  const LoadingStyle({
    this.showOverlay = true,
    this.overlayColor,
    this.decoration,
    EdgeInsetsGeometry? padding,
    double? strokeWidth,
    this.valueColor,
    this.color,
    this.backgroundColor,
    this.builder,
    AnimationConfig? enterAnimation,
    AnimationConfig? leaveAnimation,
  })  : padding = padding ?? const EdgeInsets.all(16),
        strokeWidth = strokeWidth ?? 4,
        super(enterAnimation, leaveAnimation);

  /// Set align style for animation if do not contains align
  @override
  LoadingStyle topIfNoAlign({bool? isAnimate}) {
    return super.topIfNoAlign(isAnimate: isAnimate) as LoadingStyle;
  }

  /// Set align top for animation
  @override
  LoadingStyle top({bool? isAnimate}) {
    return super.top(isAnimate: isAnimate) as LoadingStyle;
  }

  /// Set align bottom for animation if do not contains align
  @override
  LoadingStyle bottomIfNoAlign({bool? isAnimate}) {
    return super.bottomIfNoAlign(isAnimate: isAnimate) as LoadingStyle;
  }

  /// Set align bottom for animation
  @override
  LoadingStyle bottom({bool? isAnimate}) {
    return super.bottom(isAnimate: isAnimate) as LoadingStyle;
  }

  /// Set align center for animation if do not contains align
  @override
  LoadingStyle centerIfNoAlign({bool? isAnimate}) {
    return super.centerIfNoAlign(isAnimate: isAnimate) as LoadingStyle;
  }

  /// Set align center for animation
  @override
  LoadingStyle center({bool? isAnimate}) {
    return super.center(isAnimate: isAnimate) as LoadingStyle;
  }

  /// Creates a copy of this style
  /// but with the given fields replaced with the new values.
  @override
  LoadingStyle copyWith({
    bool? showOverlay,
    Color? overlayColor,
    BoxDecoration? decoration,
    EdgeInsetsGeometry? padding,
    double? strokeWidth,
    Animation<Color?>? valueColor,
    Color? color,
    Color? backgroundColor,
    Widget Function(BuildContext, double)? builder,
    AnimationConfig? enterAnimation,
    AnimationConfig? leaveAnimation,
  }) =>
      LoadingStyle(
        showOverlay: showOverlay ?? this.showOverlay,
        overlayColor: overlayColor ?? this.overlayColor,
        decoration: decoration ?? this.decoration,
        padding: padding ?? this.padding,
        strokeWidth: strokeWidth ?? this.strokeWidth,
        valueColor: valueColor ?? this.valueColor,
        color: color ?? this.color,
        backgroundColor: backgroundColor ?? this.backgroundColor,
        builder: builder ?? this.builder,
        enterAnimation: enterAnimation ?? this.enterAnimation,
        leaveAnimation: leaveAnimation ?? this.leaveAnimation,
      );

  /// lerp two ToastStyle
  static LoadingStyle lerp(LoadingStyle? a, LoadingStyle? b, double t) {
    return LoadingStyle(
      showOverlay: (t < 0.5 ? a?.showOverlay : b?.showOverlay) ?? true,
      overlayColor: Color.lerp(a?.overlayColor, b?.overlayColor, t),
      decoration: t < 0.5 ? a?.decoration : b?.decoration,
      padding: EdgeInsetsGeometry.lerp(a?.padding, b?.padding, t),
      strokeWidth: ui.lerpDouble(a?.strokeWidth, b?.strokeWidth, t),
      valueColor: t < 0.5 ? a?.valueColor : b?.valueColor,
      color: Color.lerp(a?.color, b?.color, t),
      backgroundColor: Color.lerp(a?.backgroundColor, b?.backgroundColor, t),
      builder: t < 0.5 ? a?.builder : b?.builder,
      enterAnimation: t < 0.5 ? a?.enterAnimation : b?.enterAnimation,
      leaveAnimation: t < 0.5 ? a?.leaveAnimation : b?.leaveAnimation,
    );
  }
}

/// Style for [ToastWidget]
class ToastStyle extends AnimatedOverlayStyle {
  final Color? backgroundColor;
  final Color? foregroundColor;
  final BorderRadius? borderRadius;

  const ToastStyle({
    this.backgroundColor,
    this.foregroundColor,
    this.borderRadius,
    AnimationConfig? enterAnimation,
    AnimationConfig? leaveAnimation,
  }) : super(enterAnimation, leaveAnimation);

  /// Set align style for animation if do not contains align
  @override
  ToastStyle topIfNoAlign({bool? isAnimate}) {
    return super.topIfNoAlign(isAnimate: isAnimate) as ToastStyle;
  }

  /// Set align top for animation
  @override
  ToastStyle top({bool? isAnimate}) {
    return super.top(isAnimate: isAnimate) as ToastStyle;
  }

  /// Set align bottom for animation if do not contains align
  @override
  ToastStyle bottomIfNoAlign({bool? isAnimate}) {
    return super.bottomIfNoAlign(isAnimate: isAnimate) as ToastStyle;
  }

  /// Set align bottom for animation
  @override
  ToastStyle bottom({bool? isAnimate}) {
    return super.bottom(isAnimate: isAnimate) as ToastStyle;
  }

  /// Set align center for animation if do not contains align
  @override
  ToastStyle centerIfNoAlign({bool? isAnimate}) {
    return super.centerIfNoAlign(isAnimate: isAnimate) as ToastStyle;
  }

  /// Set align center for animation
  @override
  ToastStyle center({bool? isAnimate}) {
    return super.center(isAnimate: isAnimate) as ToastStyle;
  }

  /// Creates a copy of this style
  /// but with the given fields replaced with the new values.
  @override
  ToastStyle copyWith({
    Color? backgroundColor,
    Color? foregroundColor,
    BorderRadius? borderRadius,
    AnimationConfig? enterAnimation,
    AnimationConfig? leaveAnimation,
  }) =>
      ToastStyle(
        backgroundColor: backgroundColor ?? this.backgroundColor,
        foregroundColor: foregroundColor ?? this.foregroundColor,
        borderRadius: borderRadius ?? this.borderRadius,
        enterAnimation: enterAnimation ?? this.enterAnimation,
        leaveAnimation: leaveAnimation ?? this.leaveAnimation,
      );

  /// lerp two ToastStyle
  static ToastStyle lerp(ToastStyle? a, ToastStyle? b, double t) {
    return ToastStyle(
      backgroundColor: Color.lerp(a?.backgroundColor, b?.backgroundColor, t),
      foregroundColor: Color.lerp(a?.foregroundColor, b?.foregroundColor, t),
      borderRadius: BorderRadius.lerp(a?.borderRadius, b?.borderRadius, t),
      enterAnimation: t < 0.5 ? a?.enterAnimation : b?.enterAnimation,
      leaveAnimation: t < 0.5 ? a?.leaveAnimation : b?.leaveAnimation,
    );
  }
}

/// Style for [SnackWidget]
class SnackStyle extends AnimatedOverlayStyle {
  final Gradient? gradient;
  final BoxDecoration? decoration;
  final double? height;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final BorderRadius? borderRadius;
  const SnackStyle({
    this.height,
    this.gradient,
    this.decoration,
    this.backgroundColor,
    this.foregroundColor,
    this.borderRadius,
    AnimationConfig? enterAnimation,
    AnimationConfig? leaveAnimation,
  }) : super(enterAnimation, leaveAnimation);

  /// Set align style for animation if do not contains align
  @override
  SnackStyle topIfNoAlign({bool? isAnimate}) {
    return super.topIfNoAlign(isAnimate: isAnimate) as SnackStyle;
  }

  /// Set align top for animation
  @override
  SnackStyle top({bool? isAnimate}) {
    return super.top(isAnimate: isAnimate) as SnackStyle;
  }

  /// Set align bottom for animation if do not contains align
  @override
  SnackStyle bottomIfNoAlign({bool? isAnimate}) {
    return super.bottomIfNoAlign(isAnimate: isAnimate) as SnackStyle;
  }

  /// Set align bottom for animation
  @override
  SnackStyle bottom({bool? isAnimate}) {
    return super.bottom(isAnimate: isAnimate) as SnackStyle;
  }

  /// Set align center for animation if do not contains align
  @override
  SnackStyle centerIfNoAlign({bool? isAnimate}) {
    return super.centerIfNoAlign(isAnimate: isAnimate) as SnackStyle;
  }

  /// Set align center for animation
  @override
  SnackStyle center({bool? isAnimate}) {
    return super.center(isAnimate: isAnimate) as SnackStyle;
  }

  /// Creates a copy of this style
  /// but with the given fields replaced with the new values.
  @override
  SnackStyle copyWith({
    Gradient? gradient,
    BoxDecoration? decoration,
    double? height,
    Color? backgroundColor,
    Color? foregroundColor,
    BorderRadius? borderRadius,
    AnimationConfig? enterAnimation,
    AnimationConfig? leaveAnimation,
  }) =>
      SnackStyle(
        gradient: gradient ?? this.gradient,
        decoration: decoration ?? this.decoration,
        height: height ?? this.height,
        backgroundColor: backgroundColor ?? this.backgroundColor,
        foregroundColor: foregroundColor ?? this.foregroundColor,
        borderRadius: borderRadius ?? this.borderRadius,
        enterAnimation: enterAnimation ?? this.enterAnimation,
        leaveAnimation: leaveAnimation ?? this.leaveAnimation,
      );

  /// lerp two SnackStyle
  static SnackStyle lerp(SnackStyle? a, SnackStyle? b, double t) {
    return SnackStyle(
      gradient: Gradient.lerp(a?.gradient, b?.gradient, t),
      decoration: BoxDecoration.lerp(a?.decoration, b?.decoration, t),
      height: ui.lerpDouble(a?.height, b?.height, t),
      backgroundColor: Color.lerp(a?.backgroundColor, b?.backgroundColor, t),
      foregroundColor: Color.lerp(a?.foregroundColor, b?.foregroundColor, t),
      borderRadius: BorderRadius.lerp(a?.borderRadius, b?.borderRadius, t),
      enterAnimation: t < 0.5 ? a?.enterAnimation : b?.enterAnimation,
      leaveAnimation: t < 0.5 ? a?.leaveAnimation : b?.leaveAnimation,
    );
  }
}
