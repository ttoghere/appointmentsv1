import 'package:appointmentsv1/screens/widgets/widgets_shelf.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  MainScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  bool colorState = false;
  bool colorChange() {
    setState(() {
      colorState = !colorState;
    });
    return colorState;
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(
            size.height / 77.16,
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                PastAppointments(
                  colorChangerFunc: () => colorChange(),
                  size: size,
                  colorChanger: colorState,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
