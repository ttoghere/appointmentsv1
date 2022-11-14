// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:async';

import 'package:flutter/material.dart';

import 'package:appointmentsv1/screens/widgets/widgets_shelf.dart';

import '../../constants.dart';

class ReportDetail extends StatefulWidget {
  final String imagePath;
  final String doctorName;
  final String doctorsprofession;
  final String doctorLocation;
  final String labTestCount;
  final List<String> problems;

  const ReportDetail({
    Key? key,
    required this.imagePath,
    required this.doctorName,
    required this.doctorsprofession,
    required this.doctorLocation,
    required this.labTestCount,
    required this.problems,
  }) : super(key: key);

  @override
  State<ReportDetail> createState() => _ReportDetailState();
}

class _ReportDetailState extends State<ReportDetail> {
  List<String> list = [];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: Constants.grey,
            child: Column(
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
                      child: Column(
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
                                  setState(() {});
                                });
                              },
                            ),
                          ),
                        ],
                      )),
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
                  padding: const EdgeInsets.only(left: 13, right: 13, top: 18),
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
                          children:
                              List.generate(5, (index) => TestIcon()).toList(),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.white,
            padding: EdgeInsets.only(left: 15, top: 18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Lab Tests"),
                Text("${widget.labTestCount} Compulsory Tests"),
                SizedBox(
                  height: 25,
                ),
                Column(
                  children: widget.problems.map((e) => Text(e)).toList(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
