import 'package:appointmentsv1/screens/widgets/widgets_shelf.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';


class BottomSheetButton extends StatelessWidget {
  const BottomSheetButton({
    Key? key,
    required this.widget,
  }) : super(key: key);

  final PastAppointments widget;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.colorChangerFunc();
        Navigator.pop(context);
      },
      child: Container(
        padding: EdgeInsets.all(16),
        color: Constants.pink,
        child: Row(
          children: [
            Icon(
              Icons.notification_important_outlined,
              color: Colors.white,
              size: 19,
            ),
            SizedBox(
              width: 4,
            ),
            Text(
              "Share The Doctor",
              style: Constants.textStyleWO(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Constants.white),
            ),
          ],
        ),
      ),
    );
  }
}
