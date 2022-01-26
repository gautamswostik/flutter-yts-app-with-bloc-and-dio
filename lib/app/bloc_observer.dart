import 'dart:developer';

import 'package:bloc/bloc.dart';

class MoviesBlocObserver extends BlocObserver {
  @override
  void onEvent(Bloc bloc, Object? event) {
    super.onEvent(bloc, event);
    log('$event');
  }

  @override
  void onError(BlocBase bloc, Object error,  stacktrace) {
    log('$error, $stacktrace');
    super.onError(bloc, error, stacktrace);
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    log('$change');
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    log('$transition');
  }
}
