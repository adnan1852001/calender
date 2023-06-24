// ignore_for_file: must_be_immutable

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../shared/components/text_field.dart';
import '../shared/network/navigator/navigator.dart';
import '../shared/network/snackbar/snackbar.dart';
import 'home_screen.dart';

class StartScreen extends StatelessWidget {
  StartScreen({Key? key}) : super(key: key);
  var yearController = TextEditingController();
  var monthController = TextEditingController();
  var fromKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: fromKey,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.white,
          systemOverlayStyle: const SystemUiOverlayStyle(
              statusBarIconBrightness: Brightness.dark,
              systemNavigationBarIconBrightness: Brightness.light,
              statusBarBrightness: Brightness.dark,
              statusBarColor: Colors.white),
        ),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 60),
                      child: Image.asset(
                        'images/calendar.png',
                        color: const Color(0xffED1B35),
                        width: 200.0,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20.0,
                ),
                text_field(
                    controller: yearController,
                    hintText: 'Enter the year',
                    textValidator: 'Please enter the year'),
                const SizedBox(
                  height: 10.0,
                ),
                text_field(
                    controller: monthController,
                    hintText: 'Enter the month',
                    textValidator: 'Please enter the month',
                    onSubmit: (val) {
                      if (fromKey.currentState!.validate()) {
                        navigatorPushAndRemove(
                            context,
                            CalenderScreen(
                                yearController.text, monthController.text));
                      }
                    }),
                const SizedBox(
                  height: 20.0,
                ),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  child: MaterialButton(
                    onPressed: () {
                      if (int.parse(monthController.text) <= 12) {
                        if (fromKey.currentState!.validate()) {
                          navigatorPushAndRemove(
                              context,
                              CalenderScreen(
                                  yearController.text, monthController.text));
                        }
                      } else {
                        snackBar(
                          context,
                          'ادخل رقم الشهر بشكل صحيح',
                          onPressed: () {},
                        );
                      }
                    },
                    child: const Text(
                      'View',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
