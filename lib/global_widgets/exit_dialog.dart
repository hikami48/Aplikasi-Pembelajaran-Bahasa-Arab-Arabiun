import 'package:flutter/material.dart';

Future<bool> onWillPop(BuildContext context) async {
  bool? exitResult = await showDialog(
    context: context,
    builder: (context) => buildExitDialog(context),
  );
  return exitResult ?? false;
}

AlertDialog buildExitDialog(BuildContext context) {
  return AlertDialog(
    title: const Text('Peringatan'),
    content: const Text('Kamu Yakin Ingin Keluar Dari Aplikasi?'),
    actions: <Widget>[
      TextButton(
        onPressed: () => Navigator.of(context).pop(false),
        child: const Text('TIDAK'),
      ),
      TextButton(
        onPressed: () => Navigator.of(context).pop(true),
        child: const Text('IYA'),
      ),
    ],
  );
}
