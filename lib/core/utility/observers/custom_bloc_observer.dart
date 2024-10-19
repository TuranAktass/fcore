import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

final class CustomBlocObserver extends BlocObserver {
  @override
  void onError(BlocBase<dynamic> bloc, Object error, StackTrace stackTrace) {
    super.onError(bloc, error, stackTrace);
    debugPrint('${bloc.runtimeType} $error');
  }

  @override
  void onCreate(BlocBase<dynamic> bloc) {
    super.onCreate(bloc);
    debugPrint('Created: ${bloc.runtimeType}');
  }

  @override
  void onEvent(Bloc<dynamic, dynamic> bloc, Object? event){
    super.onEvent(bloc, event);
    debugPrint("Event : ${event.toString()}");
  }

  @override void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    debugPrint("Changed : ${change.toString()}");
  }
  @override
  void onClose(BlocBase<dynamic> bloc) {
    super.onClose(bloc);
    debugPrint('Closed: ${bloc.runtimeType}');
  }
}