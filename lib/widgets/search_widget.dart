import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  SearchBar();

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    final jobController = TextEditingController();

    
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Container(
        width: width * 0.95,
        height: width * 0.14,
        padding: const EdgeInsets.symmetric(
          horizontal: 7,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          border: Border.all(
              color: Color.fromARGB(255, 201, 200, 200).withOpacity(0.4)),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Icon(
              Icons.search,
              color: Colors.black,
              size: 30,
            ),
            SizedBox(
              height: 40,
              width: width /2 +70,
              child: TextFormField(
                keyboardType: TextInputType.text,
                controller: jobController,
                onChanged: ((value) {
                  jobController.text = value;
                }),
                style: const TextStyle(
                    fontSize: 30, color: Color.fromARGB(255, 0, 0, 0)),
                decoration: const InputDecoration(
                    hintText: 'Job title or keyword',
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 20),
                    focusedBorder:
                        UnderlineInputBorder(borderSide: BorderSide.none),
                    border: UnderlineInputBorder(
                        borderSide: BorderSide.none
                        )),
                        cursorColor: Colors.transparent,
              ),
            ),
            Container(
                width: 45,
                height: 45,
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(100),
                ),
                child: const Icon(Icons.filter_list, color: Colors.black))
          ],
        ),
      ),
    );
  }
}
