import 'package:appointmentsv1/constants.dart';
import 'package:appointmentsv1/widgets/star_rating.dart';
import 'package:appointmentsv1/widgets/widgets_shelf.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Material App',
      home: const MainScreen(),
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
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Container(
                      height: size.height / 2.84,
                      width: size.height / 2.3,
                      decoration: BoxDecoration(
                        color: Constants.grey,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(
                            size.height / 77.16,
                          ),
                          topRight: Radius.circular(
                            size.height / 77.16,
                          ),
                        ),
                      ),
                      child: Column(
                        children: [
                          ListTile(
                            leading: const CircleAvatar(
                              backgroundImage: AssetImage("assets/doc_pic.png"),
                            ),
                            title: Text(
                              "Dr. Subil Shankar Vedant",
                              style: Constants.textStyleWO(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Constants.black),
                            ),
                            subtitle: Text(
                              "Fever and Cold",
                              style: Constants.textStyleWO(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Constants.black),
                            ),
                            trailing: Column(
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
                                SizedBox(width: 100, child: StarRating()),
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                "Radiology Dept., GetWell Hospital, Nagpur",
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text("MonetmacL, Leucitrizine, ZyroSyrup"),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: size.height / 2.3,
                      height: size.height / 11.58,
                      decoration: BoxDecoration(
                        color: Constants.white,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(
                            size.height / 77.16,
                          ),
                          bottomRight: Radius.circular(
                            size.height / 77.16,
                          ),
                        ),
                      ),
                    ),
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
