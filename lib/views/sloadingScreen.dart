import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:webingo_project/views/dashboard_page.dart';
import 'package:webingo_project/views/home_page.dart';

class LoadingPage extends StatefulWidget {
  const LoadingPage({super.key, required this.title});

  final String title;

  @override
  State<LoadingPage> createState() => _MyHoLoadingState();
}

class _MyHoLoadingState extends State<LoadingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 30, 202),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Image.asset("assets/images/logo.png"),
            const SizedBox(
              height: 150,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 13, right: 13),
              child: Column(
                children: [
                  const Text(
                    "Voo - Find Your Dream Job Here",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 45,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      "Finding, Connecting,\nBuilding Success ",
                      style: TextStyle(
                        color: Color.fromARGB(255, 114, 111, 111),
                        fontSize: 20,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: () {
                    Get.offAll(() => const DashboardPage());
                  },
                  child: Container(
                    margin: const EdgeInsets.only(right: 20),
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(100)),
                    child: const Icon(
                      Icons.arrow_forward,
                      color: Colors.blue,
                      size: 50,
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
