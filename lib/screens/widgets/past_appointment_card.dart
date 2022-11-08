import 'package:flutter/material.dart';
import '../../constants.dart';
import 'widgets_shelf.dart';

class PastAppointments extends StatefulWidget {
  const PastAppointments({
    Key? key,
    required this.size,
    required this.colorChangerFunc,
    required this.colorChanger,
  }) : super(key: key);

  final Size size;
  final bool colorChanger;
  final Function colorChangerFunc;

  @override
  State<PastAppointments> createState() => _PastAppointmentsState();
}

class _PastAppointmentsState extends State<PastAppointments> {
  void unFocus() {
    widget.colorChangerFunc();
    showModalBottomSheet(
        barrierColor: Colors.transparent,
        context: context,
        builder: (context) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              BottomSheetButton(widget: widget),
              BottomSheetButton(widget: widget),
              BottomSheetButton(widget: widget),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12),
      child: GestureDetector(
        onTap: () {
          unFocus();
        },
        child: Container(
          decoration: BoxDecoration(
              border: Border.all(
                color: widget.colorChanger ? Constants.grey : Colors.blue[600]!,
                width: 4,
              ),
              borderRadius: BorderRadius.circular(10)),
          child: Column(
            children: [
              Container(
                height: widget.size.height / 3.50,
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
                                sendDataMethod: () {},
                              ),
                            ),
                          ],
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
                                "Radiology Dept., GetWell Hospital, Nagpur",
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
                              children: List.generate(
                                  5,
                                  (index) => InkWell(
                                        onTap: () {
                                          print("Blood Report");
                                        },
                                        child: Container(
                                          height: 80,
                                          width: 110,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
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
                                      )).toList(),
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
                height: widget.size.height / 11.58,
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
                        colorChanger: widget.colorChanger,
                        voidCallback: () {
                          widget.colorChangerFunc();
                        },
                        buttonInfo: "(07/11/22)",
                        size: widget.size,
                        imagePath: "assets/video_call.png",
                        buttonText: "Follow Up"),
                    ActiveCardDivider(),
                    ActiveCardButton(
                      colorChanger: widget.colorChanger,
                      buttonInfo: "(4tests)",
                      size: widget.size,
                      imagePath: "assets/chem_glass.png",
                      buttonText: "Labs",
                      voidCallback: () {
                        widget.colorChangerFunc();
                      },
                    ),
                    ActiveCardDivider(),
                    ActiveCardButton(
                      size: widget.size,
                      buttonInfo: "(Dr. Shamshankar Prasad)",
                      imagePath: "assets/person_outlined.png",
                      buttonText: "Update",
                      voidCallback: () {
                        widget.colorChangerFunc();
                      },
                      colorChanger: widget.colorChanger,
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
