import 'package:flutter/material.dart';

class TransactionWidget extends StatelessWidget {
  const TransactionWidget(
      {super.key, this.date = '', this.mony = '', this.name = ''});
  final String name;
  final String date;
  final String mony;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      // tileColor: Colors.white24,
      leading: Container(
        height: 50,
        width: 50,
        margin: const EdgeInsets.only(left: 10),
        decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white24,
            image: DecorationImage(
                image: AssetImage(
                  'assets/images/spotify.png',
                ),
                fit: BoxFit.cover)),
      ),
      title: Text(
        name,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w400,
          fontSize: 22,
        ),
      ),
      subtitle: Text(
        date,
        style: const TextStyle(
          color: Colors.white24,
          fontWeight: FontWeight.w400,
          fontSize: 20,
        ),
      ),
      trailing: Text(
        mony,
        style: const TextStyle(
          color: Colors.white24,
          fontWeight: FontWeight.w400,
          fontSize: 20,
        ),
      ),
    );
  }
}
