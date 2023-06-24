import 'package:calendar/shared/network/navigator/navigator.dart';
import 'package:flutter/material.dart';

import '../../../modules/start_screen.dart';

Set<Future<String?>> ShowDialog(context) => {
      showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          elevation: 5,
          title: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.end,
            mainAxisSize: MainAxisSize.max,
            children: const [
              Text(' تسجيل خروج '),
            ],
          ),
          content: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.end,
            mainAxisSize: MainAxisSize.max,
            children: const [
              Text('هل تريد تسجيل الخروج ؟'),
            ],
          ),
          actions: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                TextButton(
                  onPressed: () {
                    navigatorPushAndRemove(context, StartScreen());
                  },
                  child: const Text(
                    ' تأكيد ',
                    style: TextStyle(color: Color(0xffED1B35)),
                  ),
                ),
                TextButton(
                  onPressed: () => Navigator.pop(context, 'Cancel'),
                  child: const Text(
                    ' الغاء ',
                    style: TextStyle(color: Color(0xffED1B35)),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    };
