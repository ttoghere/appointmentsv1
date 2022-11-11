// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:appointmentsv1/constants.dart';
import 'package:appointmentsv1/models/active_appointment_model.dart';
import 'package:appointmentsv1/models/past_appointment.dart';
import 'package:appointmentsv1/screens/widgets/widgets_shelf.dart';

class MainScreen extends StatefulWidget {
  MainScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
  }

  @override
  dispose() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    super.dispose();
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
          child: PastAppointmentModel.pastAppointments.isEmpty &&
                  ActiveAppointmentModel.activeAppointments.isEmpty
              ? NoAppointment(size: size)
              : Stack(
                  children: [
                    SingleChildScrollView(
                      child: Column(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              if (ActiveAppointmentModel
                                  .activeAppointments.isEmpty)
                                SizedBox()
                              else
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 16),
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
                                    ActiveAppointmentModel
                                        .activeAppointments.length, (index) {
                                  var access = ActiveAppointmentModel
                                      .activeAppointments[index];
                                  return ActiveAppointmentCard(
                                    docName: access.docName,
                                    docPic: access.docPic,
                                    docSpecs: access.docSpecs,
                                  );
                                }),
                              ),
                              if (PastAppointmentModel.pastAppointments.isEmpty)
                                const SizedBox()
                              else
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: List.generate(
                                          PastAppointmentModel.pastAppointments
                                              .length, (index) {
                                        var access = PastAppointmentModel
                                            .pastAppointments[index];
                                        return PastAppointments(
                                            chemList: access.chemList,
                                            imagePath: access.imagePath,
                                            doctorName: access.doctorName,
                                            doctorsprofession:
                                                access.doctorsprofession,
                                            doctorLocation:
                                                access.doctorLocation,
                                            followUpTime: access.followUpTime,
                                            labTestCount: access.labTestCount,
                                            updateDoctor: access.updateDoctor,
                                            size: size);
                                      }),
                                    ),
                                  ],
                                ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: 50,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          MainScreenButtons(
                            onpress: () {},
                            height: size.width / 8.92,
                            width: size.width / 1.72,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset("assets/plus.png"),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Add New Report",
                                  style: Constants.textStyleWO(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                    color: Constants.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          MainScreenButtons(
                            onpress: () {},
                            height: size.width / 9,
                            width: size.width / 9,
                            child: Image.asset("assets/magnify.png"),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          MainScreenButtons(
                            onpress: () {},
                            height: size.width / 9,
                            width: size.width / 9,
                            child: Image.asset("assets/books.png"),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
        ),
      ),
    );
  }
}

//9
class MainScreenButtons extends StatelessWidget {
  const MainScreenButtons({
    Key? key,
    required this.onpress,
    required this.height,
    required this.width,
    required this.child,
  }) : super(key: key);

  final double height;
  final double width;
  final VoidCallback onpress;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: Container(
        decoration: BoxDecoration(
          color: Constants.darkPink,
          borderRadius: BorderRadius.circular(8),
        ),
        alignment: Alignment.center,
        height: height,
        width: width,
        child: child,
      ),
    );
  }
}
