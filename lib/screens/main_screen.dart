import 'package:appointmentsv1/constants.dart';
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
  bool rateState = true;
  bool colorState = true;
  bool rateStateChange() {
    setState(() {
      rateState = !rateState;
    });
    return rateState;
  }

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
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Past Appointments",
                      style: Constants.textStyleWO(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Constants.black),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: List.generate(
                        3,
                        (index) => PastAppointments(
                          rateState: rateState,
                          rateChangerFunc: () => rateStateChange(),
                          colorChangerFunc: () => colorChange(),
                          size: size,
                          colorChanger: colorState,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      child: Text(
                        "Active Appointments",
                        style: Constants.textStyleWO(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Constants.black),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: List.generate(
                          2,
                          (index) => ActiveAppointmentCard(
                              docName: "Maral",
                              docPic: "assets/doc_pic.png",
                              docSpecs: "Health")),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
