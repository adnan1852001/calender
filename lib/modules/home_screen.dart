import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../shared/components/drawer/drawer.dart';
import '../shared/network/get_name_month_method/getNameMonth.dart';
import '../shared/network/get_num_days_month_method/get_num_days_month.dart';
import '../shared/network/get_start_day_method/get_start_day.dart';

// ignore: must_be_immutable
class CalenderScreen extends StatelessWidget {
  CalenderScreen(this.year, this.month, {super.key});
  String year;
  String month;

  @override
  Widget build(BuildContext context) {
    int startDay = getStartDay(int.parse(year), int.parse(month));
    int numberOfDaysInMonth =
        getNumDaysMonth(int.parse(year), int.parse(month));
    int i = 0;
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarIconBrightness: Brightness.light,
            systemNavigationBarIconBrightness: Brightness.dark,
            statusBarBrightness: Brightness.dark,
            statusBarColor: Color(0xffED1B35)),
        backgroundColor: const Color(0xffED1B35),
        title: const Text('Calendar'),
      ),
      drawer: drawer(context),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/Layer 4 copy 8.png"),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.srgbToLinearGamma()),
        ),
        child: Column(
          children: [
            Row(
              children: const [
                Padding(
                  padding: EdgeInsets.all(25.0),
                  child: Text(
                    'Welcome...',
                    style: TextStyle(
                        color: Color(0xffED1B35),
                        fontSize: 35.0,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
            Stack(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 40),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 300,
                            decoration: BoxDecoration(
                              color: Colors.red.shade50,
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Column(
                              children: [
                                const SizedBox(
                                  height: 40,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Text(
                                      'Su',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Text(
                                      'Mo',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    SizedBox(
                                      width: 12,
                                    ),
                                    Text(
                                      'Tu',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    SizedBox(
                                      width: 18,
                                    ),
                                    Text(
                                      'We',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    SizedBox(
                                      width: 14,
                                    ),
                                    Text(
                                      'Th',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    SizedBox(
                                      width: 18,
                                    ),
                                    Text(
                                      'Fr',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    SizedBox(
                                      width: 22,
                                    ),
                                    Text(
                                      'Sa',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Container(
                                    width: double.infinity,
                                    color: Colors.black,
                                    height: 1.0,
                                    child: const Text(''),
                                  ),
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Row(
                                  children: [
                                    const SizedBox(
                                      width: 20.0,
                                    ),
                                    SizedBox(
                                        height: 210,
                                        width: 280,
                                        child: GridView(
                                          gridDelegate:
                                              const SliverGridDelegateWithFixedCrossAxisCount(
                                                  crossAxisCount: 7),
                                          children: [
                                            for (i = 0; i < startDay; i++)
                                              const Text(''),
                                            for (i = 1;
                                                i <= numberOfDaysInMonth;
                                                i++)
                                              Text('$i')
                                          ],
                                        )),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 250.0,
                        height: 40.0,
                        decoration: BoxDecoration(
                          color: const Color(0xffED1B35),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const SizedBox(
                              width: 75,
                            ),
                            Text(
                              getNameMonth(int.parse(month)),
                              style: const TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                              width: 60,
                              height: 25,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(25),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    year,
                                    style: const TextStyle(
                                      fontWeight: FontWeight.w300,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
