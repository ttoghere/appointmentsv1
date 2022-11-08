import 'package:appointmentsv1/constants.dart';
import 'package:flutter/material.dart';

class NoAppointment extends StatelessWidget {
  const NoAppointment({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: size.height / 14.46,
        ),
        Padding(
          padding: EdgeInsets.only(
            left: size.height / 14.25,
            right: size.height / 14.25,
            top: size.height / 5.07,
          ),
          child: Image.asset("assets/main_photo.png"),
        ),
        SizedBox(
          height: size.height / 115.75,
        ),
        Padding(
          padding: EdgeInsets.only(bottom: size.height / 4.54),
          child: Text(
            "Stay Healthy :D!",
            style: Constants.textStyleWO(
              fontSize: size.height / 46.3,
              fontWeight: FontWeight.w500,
              color: Constants.green,
            ),
          ),
        ),
        GestureDetector(
          onTap: () {},
          child: Container(
            color: Constants.darkPink,
            margin: EdgeInsets.symmetric(horizontal: size.height / 61.73),
            height: size.height / 19.3,
            width: size.height / 2.33,
            alignment: Alignment.center,
            child: Text(
              "+ ADD NEW REPORT",
              style: Constants.textStyleWO(
                fontSize: size.height / 57.9,
                fontWeight: FontWeight.w700,
                color: Constants.white,
              ),
            ),
          ),
        ),
        SizedBox(
          height: size.height / 9.54,
        ),
      ],
    );
  }
}
