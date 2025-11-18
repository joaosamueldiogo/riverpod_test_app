import 'app_state.dart';
export 'app_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'app_notifier.dart';

final appProvider = NotifierProvider<AppNotifier, AppState>(AppNotifier.new);
