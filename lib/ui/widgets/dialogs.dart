import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:pokedex/core/resources/r.dart';

Future<void> getDialogNewtworkConnectionFailed(BuildContext context) {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: R.appColor.clr.neutralColor,
        title: Text(
          'Please Check Your Connection',
          style: TextStyle(color: R.appColor.clr.errorColor),
        ),
        content: const Text(
          "You are not connected to the internet. Please connect to the internet and try again.",
        ),
        actions: [
          TextButton(
            style: TextButton.styleFrom(
              textStyle: Theme.of(context).textTheme.labelLarge,
            ),
            child: Text(
              'Okay',
              style: TextStyle(color: R.appColor.clr.defaultColor),
            ),
            onPressed: () {
             AutoRouter.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
