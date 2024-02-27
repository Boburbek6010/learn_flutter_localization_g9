import 'package:flutter/widgets.dart';
import 'locale_controller.dart';

@immutable
class InheritedLocalNotifier extends InheritedNotifier<LocaleController> {
  const InheritedLocalNotifier({
    required final LocaleController localController,
    required final Widget child,
    Key? key,
  }) : super(
    key: key,
    child: child,
    notifier: localController,
  );

  static LocaleController? maybeOf(BuildContext context, {bool listen = true}) {
    if (listen) {
      return context.dependOnInheritedWidgetOfExactType<InheritedLocalNotifier>()?.notifier;
    } else {
      final inhW = context.getElementForInheritedWidgetOfExactType<InheritedLocalNotifier>()?.widget;
      return inhW is InheritedLocalNotifier ? inhW.notifier : null;
    }
  }
}
