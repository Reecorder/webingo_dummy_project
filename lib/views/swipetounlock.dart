import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:slide_to_act_reborn/slide_to_act_reborn.dart';
import 'package:webingo_project/views/home_page.dart';

class SwipeToUnlock extends StatefulWidget {
  const SwipeToUnlock({super.key});

  @override
  State<SwipeToUnlock> createState() => _SwipeToUnlockState();
}

class _SwipeToUnlockState extends State<SwipeToUnlock> {
  final GlobalKey<SlideActionState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color.fromARGB(96, 39, 39, 39),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(),
          Image.asset(
            "assets/images/creditcard.png",
            scale: 0.5,
          ),
          // const SizedBox(
          //   height: 50,
          // ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(left: 13, right: 13),
            child: Container(
              height: 300,
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              margin: EdgeInsets.only(top: 50),
              decoration: BoxDecoration(
                  color: Colors.black38,
                  borderRadius: BorderRadius.circular(15)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    overflow: TextOverflow.clip,
                    textAlign: TextAlign.justify,
                    softWrap: true,
                    textScaleFactor: 1.3,
                    text: const TextSpan(
                      text: 'Lets ',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                          fontSize: 25),
                      children: <TextSpan>[
                        TextSpan(
                            text: 'keep Your\nFinacial Under',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Color.fromARGB(255, 76, 236, 215),
                                fontSize: 25)),
                      ],
                    ),
                  ),
                  RichText(
                    overflow: TextOverflow.clip,
                    textAlign: TextAlign.justify,
                    softWrap: true,
                    textScaleFactor: 1.3,
                    text: const TextSpan(
                      text: 'Control ',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(255, 76, 236, 215),
                          fontSize: 25),
                      children: <TextSpan>[
                        TextSpan(
                            text: 'just with \n Your Smartphone',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                                fontSize: 25)),
                      ],
                    ),
                  ),
                  Builder(
                    builder: (context) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 15.0),
                        child: SlideAction(
                          alignment: Alignment.center,
                          key: _key,
                          onSubmit: () {
                            Future.delayed(
                              const Duration(seconds: 1),
                              () {
                                Get.to(() => const HomePage());
                                _key.currentState?.reset();
                              },
                            );
                          },
                          innerColor: const Color.fromARGB(255, 76, 236, 215),
                          outerColor: Colors.white12,
                          elevation: 0,
                          sliderButtonIcon: const Icon(
                            Icons.arrow_forward,
                            size: 25,
                          ),
                          child: const Text(
                            'Slide to Continue',
                            style:
                                TextStyle(color: Colors.white70, fontSize: 20),
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
