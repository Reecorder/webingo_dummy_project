import 'package:flutter/material.dart';

class ProfileContainer extends StatelessWidget {
  const ProfileContainer({
    super.key,
    this.image = '',
    this.isAdd = false,
  });
  final String image;
  final bool isAdd;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      margin: const EdgeInsets.only(left: 15),
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white24,
      ),
      child: isAdd
          ? const Icon(
              Icons.add,
              size: 24,
              color: Colors.white,
            )
          : Container(
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage(
                        image,
                      ),
                      fit: BoxFit.cover)),
            ),
    );
  }
}
