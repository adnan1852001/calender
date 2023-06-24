import 'package:calendar/shared/network/navigator/navigator.dart';
import 'package:flutter/material.dart';

import '../../../modules/about_screen.dart';
import '../../network/show_dialog/show_dialog.dart';

Widget drawer(context) => Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
              color: Color(0xffED1B35),
            ),
            child: Column(
              children: [
                Image.asset(
                  'images/calendarD.png',
                  color: Colors.white,
                  width: 150,
                  height: 130,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: ListTile(
                    title: Row(
                      children: const [
                        Icon(
                          Icons.info_outline,
                          color: Colors.black,
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          'Informations',
                          style: TextStyle(fontSize: 16.0),
                        ),
                      ],
                    ),
                    onTap: () {
                      navigatorPush(context, const AboutScreen());
                    },
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: ListTile(
                    title: Row(
                      children: const [
                        Icon(
                          Icons.logout,
                          color: Colors.black,
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          'Log Out',
                          style: TextStyle(fontSize: 16.0),
                        ),
                      ],
                    ),
                    onTap: () {
                      ShowDialog(context);
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
