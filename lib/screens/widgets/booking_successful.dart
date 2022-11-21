import 'package:appointmentsv1/constants.dart';
import 'package:appointmentsv1/models/clip_path_class.dart';
import 'package:flutter/material.dart';

class BookingSuccesful extends StatelessWidget {
  const BookingSuccesful({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Stack(
              children: [
                Container(
                  child: ClipPath(
                    clipper: ClipPathClass(),
                    child: Container(
                      color: Color(0xFFDBFDFF),
                      width: size.width,
                      height: 480,
                    ),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 34.0),
                    child: Image.asset("assets/firm-logo.png"),
                  ),
                ),
                Positioned(
                    left: 90, top: 130, child: Image.asset("assets/check.png")),
                Positioned(
                    top: 380,
                    left: 110,
                    child: Text(
                      "Successfully Booked!",
                      style: Constants.textStyleWO(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Colors.black),
                    )),
              ],
            ),
            Container(
              margin: EdgeInsets.only(left: 40, right: 40, bottom: 70, top: 50),
              height: 175,
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ListTile(
                    leading: CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage("assets/doc_pic.png"),
                    ),
                    title: Text(
                      "Dr. Suman Sharma",
                      style: Constants.textStyleWO(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF032B44)),
                    ),
                    subtitle: Text(
                      "AIIMS BILASPUR",
                      style: Constants.textStyleWO(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF939393)),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 15, right: 15, bottom: 10),
                    height: 75,
                    color: Color(0xFFE5ECFF),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.calendar_today,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text("Jan 11, 2022")
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(Icons.access_time),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text("Jan 11, 2022")
                                ],
                              )
                            ],
                          ),
                        ),
                        Divider(
                          thickness: 1,
                          color: Color(0xFFA4D9D5),
                        ),
                        Text("Room no. 218, Floor 2")
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
