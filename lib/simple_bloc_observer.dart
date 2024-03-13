import 'dart:developer';

import 'package:bloc/bloc.dart';

class SimpleBlocObserver extends BlocObserver {
  const SimpleBlocObserver();

  @override
  void onError(BlocBase<dynamic> bloc, Object error, StackTrace stackTrace) {
    log(error.toString());
    super.onError(bloc, error, stackTrace);
  }

  @override
  void onChange(BlocBase<dynamic> bloc, Change<dynamic> change) {
    super.onChange(bloc, change);
    log(change.toString());
  }
}
