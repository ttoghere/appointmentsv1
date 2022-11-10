import 'package:appointmentsv1/constants.dart';
import 'package:appointmentsv1/models/active_appointment_model.dart';
import 'package:appointmentsv1/models/past_appointment.dart';
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
              : SingleChildScrollView(
                  child: Column(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          if (PastAppointmentModel.pastAppointments.isEmpty)
                            const SizedBox()
                          else
                            Column(
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
                                      PastAppointmentModel
                                          .pastAppointments.length, (index) {
                                    var access = PastAppointmentModel
                                        .pastAppointments[index];
                                    return PastAppointments(
                                        chemList: access.chemList,
                                        imagePath: access.imagePath,
                                        doctorName: access.doctorName,
                                        doctorsprofession:
                                            access.doctorsprofession,
                                        doctorLocation: access.doctorLocation,
                                        followUpTime: access.followUpTime,
                                        labTestCount: access.labTestCount,
                                        updateDoctor: access.updateDoctor,
                                        size: size);
                                  }),
                                ),
                              ],
                            ),
                          if (ActiveAppointmentModel.activeAppointments.isEmpty)
                            SizedBox()
                          else
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
