import 'package:flutter/cupertino.dart';
import 'package:learn_flutter_localization_g9/core/local/app_local.dart';

extension MyWords on Words{
  String tr (BuildContext context) => AppLocalization.of(context).tr(name);
}

enum Words{
  welcome,
}