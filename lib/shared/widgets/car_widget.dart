import 'package:flutter/material.dart';
import 'package:car_rental/models/car.dart';
import 'package:car_rental/shared/styles/colors.dart';

class CarWidget extends StatelessWidget {
  const CarWidget({
    Key key,
    @required this.car,
    this.index,
    this.heroTag,
  }) : super(key: key);

  final Car car;
  final int index;
  final String heroTag;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
      ),
      padding: EdgeInsets.all(16),
      margin: EdgeInsets.only(
          right: index != null ? 16 : 0, left: index == 0 ? 16 : 0),
      width: 220,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          // Align(
          //   alignment: Alignment.centerRight,
          //   child: Container(
          //     decoration: BoxDecoration(
          //       color: kPrimaryColorShadow,
          //       borderRadius: BorderRadius.all(
          //         Radius.circular(15),
          //       ),
          //     ),
          //     child: Padding(
          //       padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          //       child: Text(
          //         car.condition,
          //         style: TextStyle(
          //           color: kPrimaryColor,
          //           fontSize: 11.7,
          //           fontWeight: FontWeight.bold,
          //         ),
          //       ),
          //     ),
          //   ),
          // ),
          SizedBox(height: 10),
          Container(
            height: 95,
            child: Center(
              child: heroTag != null
                  ? Hero(
                      tag: heroTag,
                      child: Image.asset(
                        car.images[0],
                        fit: BoxFit.fitWidth,
                      ),
                    )
                  : Image.asset(
                      car.images[0],
                      fit: BoxFit.fitWidth,
                    ),
            ),
          ),
          // SizedBox(height: 20),
          // Text(
          //   car.model,
          //   style: TextStyle(fontSize: 20),
          // ),
          SizedBox(height: 20),
          Text(
            car.brand,
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              height: 1,
            ),
          ),
          // Text(
          //   "per " +
          //       (car.condition == "Daily"
          //           ? "day"
          //           : car.condition == "Weekly"
          //               ? "week"
          //               : "month"),
          //   style: TextStyle(
          //     fontSize: 14,
          //     color: Colors.grey,
          //   ),
          // ),
        ],
      ),
    );
  }
}
