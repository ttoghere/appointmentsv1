import 'package:appointmentsv1/constants.dart';
import 'package:appointmentsv1/widgets/widgets_shelf.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatelessWidget {
  const MainScreen({
    Key? key,
  }) : super(key: key);

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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: size.height / 57.9,
                  ),
                  child: Text(
                    "Active Appointments",
                    style: Constants.textStyleWO(
                      fontSize: size.height / 46.3,
                      fontWeight: FontWeight.w500,
                      color: Constants.black,
                    ),
                  ),
                ),
                ActiveAppointmentCard(
                  docName: "Dr. Sunil Shankar Vedant",
                  docPic: "assets/doc_pic.png",
                  docSpecs: "Fever,Cold,Cough",
                ),
                ActiveAppointmentCard(
                  docName: "Dr. Sunil Shankar Vedant",
                  docPic: "assets/doc_pic.png",
                  docSpecs: "Fever,Cold,Cough",
                ),
                ActiveAppointmentCard(
                  docName: "Dr. Sunil Shankar Vedant",
                  docPic: "assets/doc_pic.png",
                  docSpecs: "Fever,Cold,Cough",
                ),
                ActiveAppointmentCard(
                  docName: "Dr. Sunil Shankar Vedant",
                  docPic: "assets/doc_pic.png",
                  docSpecs: "Fever,Cold,Cough",
                ),
                ActiveAppointmentCard(
                  docName: "Dr. Sunil Shankar Vedant",
                  docPic: "assets/doc_pic.png",
                  docSpecs: "Fever,Cold,Cough",
                ),
                ActiveAppointmentCard(
                  docName: "Dr. Sunil Shankar Vedant",
                  docPic: "assets/doc_pic.png",
                  docSpecs: "Fever,Cold,Cough",
                ),
                ActiveAppointmentCard(
                  docName: "Dr. Sunil Shankar Vedant",
                  docPic: "assets/doc_pic.png",
                  docSpecs: "Fever,Cold,Cough",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
