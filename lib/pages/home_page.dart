import 'package:flutter/material.dart';

import '../core/local/words.dart';
import '../settings/locale_controller.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(Words.welcome.tr(context)),
            ElevatedButton(
              onPressed: (){
                localeController.changeLang(Language.uz);
              },
              child: const Text("Change"),
            ),
          ],
        ),
      ),
    );
  }
}