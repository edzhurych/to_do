import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

part 'resources.dart';

class _AppLocalizationsDelegate extends LocalizationsDelegate<R> {
  @override
  bool isSupported(Locale locale) => ['en', 'de'].contains(locale.languageCode);

  @override
  Future<R> load(Locale locale) {
    final instance = R(locale);
    R.instance = instance;

    return SynchronousFuture<R>(instance);
  }

  @override
  bool shouldReload(covariant LocalizationsDelegate<R> old) => false;
}