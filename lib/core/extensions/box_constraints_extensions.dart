import 'package:flutter/material.dart';
import '../constants/app_constants.dart';

extension BoxConstraintsExtensions on BoxConstraints {
  bool get isDesktop => maxWidth > AppConstants.desktopBreakpoint;
  bool get isTablet => maxWidth > AppConstants.tabletBreakpoint && maxWidth <= AppConstants.desktopBreakpoint;
  bool get isMobile => maxWidth <= AppConstants.tabletBreakpoint;
}
