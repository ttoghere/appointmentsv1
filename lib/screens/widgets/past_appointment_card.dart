// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:async';

import 'package:appointmentsv1/screens/widgets/report_detail.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';
import 'widgets_shelf.dart';

class PastAppointments extends StatefulWidget {
  final String imagePath;
  final String doctorName;
  final String doctorsprofession;
  final String doctorLocation;
  final String followUpTime;
  final String labTestCount;
  final String updateDoctor;
  final String chemList;
  PastAppointments({
    Key? key,
    required this.chemList,
    required this.imagePath,
    required this.doctorName,
    required this.doctorsprofession,
    required this.doctorLocation,
    required this.followUpTime,
    required this.labTestCount,
    required this.updateDoctor,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  State<PastAppointments> createState() => _PastAppointmentsState();
}

class _PastAppointmentsState extends State<PastAppointments> {
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

  void unFocus() {
    colorChange();
    showModalBottomSheet(
        barrierColor: Colors.transparent,
        context: context,
        builder: (context) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              BottomSheetButton(
                colorChanger: colorState,
                widget: widget,
                message: "Share The Doctor",
              ),
              BottomSheetButton(
                colorChanger: colorState,
                widget: widget,
                message: "Add Report to Favorites",
              ),
              BottomSheetButton(
                colorChanger: colorState,
                widget: widget,
                message: "Add Doctor to Favorites",
              ),
            ],
          );
        }).whenComplete(() => colorChange());
  }

  List<Map<String,dynamic>> testsList=[
    {"labCount":4,"problems":["Blood Test","Oxytyocin Test","CMP Test",],}
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(top: 12),
      child: GestureDetector(
        onLongPress: () {
          print(size.height);
          print(size.width);
          unFocus();
        },
        onTap: () => Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => ReportDetail(
              problems:testsList[0]["problems"],
              imagePath: widget.imagePath,
              doctorName: widget.doctorName,
              doctorsprofession: widget.doctorsprofession,
              doctorLocation: widget.doctorLocation,
              labTestCount:widget.labTestCount ,
            ),
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
              border: Border.all(
                color: colorState ? Constants.grey : Colors.blue[600]!,
                width: 4,
              ),
              borderRadius: BorderRadius.circular(10)),
          child: Column(
            children: [
              Container(
                height: 261,
                width: widget.size.height / 2.3,
                decoration: BoxDecoration(
                  color: Constants.grey,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(
                      widget.size.height / 77.16,
                    ),
                    topRight: Radius.circular(
                      widget.size.height / 77.16,
                    ),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage(widget.imagePath),
                      ),
                      title: Text(
                        widget.doctorName,
                        style: Constants.textStyleWO(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Constants.black),
                      ),
                      subtitle: Text(
                        widget.doctorsprofession,
                        style: Constants.textStyleWO(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Constants.black),
                      ),
                      trailing: GestureDetector(
                        onTap: () {},
                        child: rateState
                            ? Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "Rate and Review",
                                    style: Constants.textStyleWO(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: Constants.black),
                                  ),
                                  SizedBox(
                                    width: 100,
                                    child: StarRating(
                                      sendDataMethod: () {
                                        Timer(Duration(milliseconds: 500), () {
                                          setState(() {
                                            rateStateChange();
                                          });
                                        });
                                      },
                                    ),
                                  ),
                                ],
                              )
                            : Text(
                                "Add Review",
                                style: Constants.textStyleWO(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                    color: Constants.pink),
                              ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 18, left: 15),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Image.asset("assets/24_hours.png"),
                              SizedBox(
                                width: 7,
                              ),
                              Text(
                                widget.doctorLocation,
                                style: Constants.textStyleWO(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: Constants.black),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 9,
                          ),
                          Row(
                            children: [
                              Image.asset("assets/chem_glass.png"),
                              SizedBox(
                                width: 7,
                              ),
                              Text(
                                "MonetmacL, Leucitrizine, ZyroSyrup",
                                style: Constants.textStyleWO(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: Constants.black),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 13, right: 13, top: 18),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Reports",
                            style: Constants.textStyleWO(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Constants.black),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: List.generate(5, (index) => TestIcon())
                                  .toList(),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: widget.size.height / 2.3,
                height: 80,
                decoration: BoxDecoration(
                  color: Constants.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(
                      widget.size.height / 77.16,
                    ),
                    bottomRight: Radius.circular(
                      widget.size.height / 77.16,
                    ),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ActiveCardButton(
                        colorChanger: colorState,
                        voidCallback: () {
                          colorChange();
                        },
                        buttonInfo: widget.followUpTime,
                        size: widget.size,
                        imagePath: "assets/video_call.png",
                        buttonText: "Follow Up"),
                    ActiveCardDivider(),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 1.0),
                      child: ActiveCardButton(
                        colorChanger: colorState,
                        buttonInfo: widget.labTestCount,
                        size: widget.size,
                        imagePath: "assets/chem_glass.png",
                        buttonText: "Labs",
                        voidCallback: () {
                          colorChange();
                        },
                      ),
                    ),
                    ActiveCardDivider(),
                    ActiveCardButton(
                      size: widget.size,
                      buttonInfo: widget.updateDoctor,
                      imagePath: "assets/person_outlined.png",
                      buttonText: "Update",
                      voidCallback: () {
                        colorChange();
                      },
                      colorChanger: colorState,
                    )
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

class TestIcon extends StatelessWidget {
  const TestIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print("Blood Report");
      },
      child: Container(
        height: 70,
        width: 90,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              "assets/list_logo.png",
              fit: BoxFit.fill,
            ),
            SizedBox(
              height: 4,
            ),
            Text("Blood Test"),
          ],
        ),
      ),
    );
  }
}
