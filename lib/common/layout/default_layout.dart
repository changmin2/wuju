import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DefaultLayout extends ConsumerWidget {
  final Color? backgroundColor;
  final Widget child;
  final AppBar? appBar;
  final FloatingActionButton? floatingActionButton;
  final Widget? bottomNavagtionBar;

  const DefaultLayout({
    this.appBar =null,
    this.backgroundColor,
    required this.child,
    this.floatingActionButton=null,
    this.bottomNavagtionBar=null,
    Key? key
  }) : super(key: key);

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    return Scaffold(
      appBar: appBar==null ? null
      : appBar,
      body: SafeArea(child: child),
      backgroundColor: backgroundColor ?? Colors.white,
      floatingActionButton: floatingActionButton,
      bottomNavigationBar: bottomNavagtionBar,
    );
  }
}
