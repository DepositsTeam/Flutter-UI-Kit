import 'package:deposits_ui_kit/deposits_ui_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void DepDialog({
  required BuildContext context,
  required String title,
  required String content,
  required isActionHorizontal,
  required isActionSingle,
}) {
  showDialog(
    context: context,
    builder: (context) {
      return CupertinoAlertDialog(
        title: DepText(text: title),
        content: DepText(text: content),
        actions: [
          if (isActionHorizontal == true) ...[
            if (isActionSingle == false) ...[
              CupertinoDialogAction(
                child: const Text('Action'),
                onPressed: () {
                  Navigator.of(context).pop(); // Close the dialog
                },
              ),
            ],
            CupertinoDialogAction(
              child: const Text('Action'),
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
            ),
          ],
          if (isActionHorizontal == false) ...[
            CupertinoDialogAction(
              child: const Text('Action'),
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
            ),
            CupertinoDialogAction(
              child: const Text('Action'),
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
            ),
            isActionSingle == false
                ? const SizedBox()
                : CupertinoDialogAction(
                    child: const Text('Action'),
                    onPressed: () {
                      Navigator.of(context).pop(); // Close the dialog
                    },
                  ),
          ]
        ],
      );
    },
  );
}
