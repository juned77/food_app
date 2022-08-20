import 'package:flutter/material.dart';
import 'base_stateless_widget.dart';

class BaseScaffold extends BaseStatelessWidget {
  const BaseScaffold( {
    Key? key,
    this.floatingActionButton,
    this.underScroll = false,
    this.floatingActionButtonLocation,
    this.appBar,
    this.backgroundImagePath,
    this.padding = const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
    this.body,
    this.backgroundColor = Colors.white,
    this.bottomNavigationBar,
    this.extendBodyBehindAppBar = false,
    this.bottomSheet,
  }) : super(key: key);

  final PreferredSizeWidget? appBar;
  final Color? backgroundColor;
  final String? backgroundImagePath;
  final Widget? body;
  final Widget? bottomNavigationBar;
  final Widget? bottomSheet;
  final bool extendBodyBehindAppBar;
  final Widget? floatingActionButton;
  final FloatingActionButtonLocation? floatingActionButtonLocation;
  final EdgeInsetsGeometry? padding;
  final bool underScroll;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      bottomNavigationBar: bottomNavigationBar,
      extendBodyBehindAppBar: extendBodyBehindAppBar,
      floatingActionButton: floatingActionButton,
      floatingActionButtonLocation: floatingActionButtonLocation,
      body: InkWell(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        focusColor: Colors.transparent,
        hoverColor: Colors.transparent,
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          padding: padding,
          decoration: backgroundImagePath == null || backgroundImagePath == ''
              ? null
              : BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(backgroundImagePath!),
                    fit: BoxFit.cover,
                  ),
                ),
          child: underScroll ? SingleChildScrollView(child: body) : body,
        ),
        onTap: () {
          unFocusFromAll();
        },
      ),
      backgroundColor: backgroundColor,
      bottomSheet: bottomSheet,
    );
  }
}
