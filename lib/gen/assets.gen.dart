/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import

import 'package:flutter/widgets.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/all_dishes.png
  AssetGenImage get allDishes =>
      const AssetGenImage('assets/images/all_dishes.png');

  /// File path: assets/images/burger_bg.png
  AssetGenImage get burgerBg =>
      const AssetGenImage('assets/images/burger_bg.png');

  /// File path: assets/images/cart_icon.png
  AssetGenImage get cartIcon =>
      const AssetGenImage('assets/images/cart_icon.png');

  /// File path: assets/images/chinese_dish.png
  AssetGenImage get chineseDish =>
      const AssetGenImage('assets/images/chinese_dish.png');

  /// File path: assets/images/filter_more.png
  AssetGenImage get filterMore =>
      const AssetGenImage('assets/images/filter_more.png');

  /// File path: assets/images/french_dish.png
  AssetGenImage get frenchDish =>
      const AssetGenImage('assets/images/french_dish.png');

  /// File path: assets/images/funnel.png
  AssetGenImage get funnel => const AssetGenImage('assets/images/funnel.png');

  /// File path: assets/images/heart.png
  AssetGenImage get heart => const AssetGenImage('assets/images/heart.png');

  /// File path: assets/images/home.png
  AssetGenImage get home => const AssetGenImage('assets/images/home.png');

  /// File path: assets/images/home_selected.png
  AssetGenImage get homeSelected =>
      const AssetGenImage('assets/images/home_selected.png');

  /// File path: assets/images/indian_dish.png
  AssetGenImage get indianDish =>
      const AssetGenImage('assets/images/indian_dish.png');

  /// File path: assets/images/landscape_img.png
  AssetGenImage get landscapeImg =>
      const AssetGenImage('assets/images/landscape_img.png');

  /// File path: assets/images/profile.png
  AssetGenImage get profile => const AssetGenImage('assets/images/profile.png');

  /// File path: assets/images/profile_selected.png
  AssetGenImage get profileSelected =>
      const AssetGenImage('assets/images/profile_selected.png');

  /// File path: assets/images/shader_pattern.png
  AssetGenImage get shaderPattern =>
      const AssetGenImage('assets/images/shader_pattern.png');
}

class Assets {
  Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
