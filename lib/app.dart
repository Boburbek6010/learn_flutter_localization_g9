import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:learn_flutter_localization_g9/core/local/app_local.dart';
import 'package:learn_flutter_localization_g9/pages/home_page.dart';
import 'package:learn_flutter_localization_g9/settings/inherited_locale_notifier.dart';
import 'package:learn_flutter_localization_g9/settings/locale_controller.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class App extends StatefulWidget{
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return InheritedLocalNotifier(
      localController: localeController,
      child: Builder(
        builder: (context) {
          return MaterialApp(
            locale: InheritedLocalNotifier.maybeOf(context)?.appLocale ?? const Locale('ru', 'RU'),
            supportedLocales: const [
              Locale("uz", "UZ"),
              Locale("en", "US"),
              Locale("ru", "RU"),
            ],
            localizationsDelegates: const [
              AppLocalization.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
            ],
            initialRoute: "/",
            routes: {
              "/": (context) => const HomePage(),
            },
          );
        }
      ),
    );
  }
}