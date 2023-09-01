import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyContainer extends StatelessWidget {
  const MyContainer({
    super.key,
    this.mony = '0',
    this.name = '',
    this.number = '',
    this.isAdd = false,
  });
  final String mony;
  final String name;
  final String number;
  final bool isAdd;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      width: width / 2,
      height: width / 2 + 40,
      padding: const EdgeInsets.all(15),
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        // color: Colors.teal[300],
        borderRadius: BorderRadius.circular(15),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: isAdd
              ? [
                  Colors.white24,
                  Colors.white24,
                ]
              : const [
                  Color.fromARGB(255, 59, 192, 207),
                  Color.fromARGB(208, 66, 207, 193),
                ],
        ),
      ),
      child: isAdd
          ? const Center(
              child: Icon(
                Icons.add,
                color: Colors.white,
                size: 34,
              ),
            )
          : Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                  ),
                ),
                const Spacer(),
                Text(
                  mony,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 5),
                const Text(
                  'USD',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                  ),
                ),
                const Spacer(),
                Row(
                  children: [
                    const Icon(Icons.currency_bitcoin),
                    const Spacer(),
                    Text(
                      number,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ],
            ),
    );
  }
}
