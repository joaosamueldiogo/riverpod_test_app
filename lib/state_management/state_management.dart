import 'app_state.dart';
export 'app_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
export 'package:flutter_riverpod/flutter_riverpod.dart';
import 'app_notifier.dart';

final appProvider = NotifierProvider.autoDispose<AppNotifier, AppState>(
  AppNotifier.new,
);
