import 'package:flutter/material.dart';

class detectionWidgets extends StatelessWidget {
  String img;
  String title;
  detectionWidgets({super.key, required this.img, required this.title});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.70,
      height: 58,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(30.0)),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(width: 24),
          Container(
            height: 23,
            width: 19,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(img),
                fit: BoxFit.contain,
              ),
            ),
          ),
          const SizedBox(width: 24.0),
          Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              color: Color(0xff222222),
              fontWeight: FontWeight.w400,
            ),
          )
        ],
      ),
    );
  }
}
