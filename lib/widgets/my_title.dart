import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:to_do/localization/delegate.dart';

class MyTitle extends StatelessWidget {
  const MyTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Text(
        R.of(context).all,
        style: const TextStyle(
          color: Colors.black87,
          fontSize: 40,
          fontWeight: FontWeight.w700,
        ),
      );
}
