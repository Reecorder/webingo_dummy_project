import 'package:flutter/material.dart';

class Popular_Jobs extends StatelessWidget {
  const Popular_Jobs({
    super.key,
    this.name = '',
    this.company = '',
    this.designationCount = 0,
    this.city = '',
    this.isAdd = false,
  });
  final String name;
  final String company;
  final int designationCount;
  final String city;
  final bool isAdd;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10, bottom: 5),
      decoration: BoxDecoration(
          color: isAdd ? Color.fromARGB(255, 74, 44, 245) : Colors.white70,
          borderRadius: BorderRadius.circular(15),
           border: Border.all(
              color: Color.fromARGB(255, 201, 200, 200).withOpacity(0.4))
          ),
      child: Column(
        children: [
          ListTile(
            // tileColor: Colors.white24,
            leading: Container(
              height: 50,
              width: 50,
              // margin: const EdgeInsets.only(left: 0.0),
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Colors.white24,
                  borderRadius: BorderRadius.circular(8),
                  image: const DecorationImage(
                      image: AssetImage(
                        'assets/images/logo.png',
                      ),
                      fit: BoxFit.cover)),
            ),
            title: Text(
              name,
              style:  TextStyle(
                  color: !isAdd?Colors.black: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 18),
            ),
            subtitle: Text(
              company,
              style:  TextStyle(
                color:  !isAdd?Colors.black38: Colors.white54 ,
                fontWeight: FontWeight.w400,
                fontSize: 17,
              ),
            ),
            trailing: Container(
              height: 30,
              width: 30,
              margin: const EdgeInsets.only(left: 10),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.transparent,
              ),
              child:  Icon(
                Icons.bookmark_border_outlined,
                color: !isAdd?Colors.black: Colors.white,
                size: 30,
              ),
            ),
          ),
          SizedBox(
            height: 40,
            child: ListView.builder(
              itemCount: designationCount,
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.only(left: 8.5),
              itemBuilder: (context, index) {
                return Container(
                  width: 80,
                  // height: 20,
                  alignment: Alignment.center,
                  margin: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      color: 
                      !isAdd?Color.fromARGB(17, 0, 0, 0): Colors.black26
                      
                      ),
                  child:  Text(
                    'Fulltime',
                    style: TextStyle(
                      color: !isAdd?Colors.black87: Colors.white70,
                      fontWeight: FontWeight.w400,
                      fontSize: 17,
                    ),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 15.5, vertical: 12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  city,
                  style:  TextStyle(
                    color: !isAdd?Colors.black: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 17,
                  ),
                ),
                 Text(
                  '24 hours ago',
                  style: TextStyle(
                    color: !isAdd?Colors.black45: Colors.white54,
                    fontWeight: FontWeight.w600,
                    fontSize: 17,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
