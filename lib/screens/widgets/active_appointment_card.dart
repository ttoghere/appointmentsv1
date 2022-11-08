import 'package:flutter/material.dart';
import '../../constants.dart';

class ActiveAppointmentCard extends StatelessWidget {
  final String docPic;
  final String docName;
  final String docSpecs;
  ActiveAppointmentCard({
    required this.docName,
    required this.docPic,
    required this.docSpecs,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(bottom: size.height / 77.2),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Constants.grey,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(size.height / 77.2),
                topRight: Radius.circular(size.height / 77.2),
              ),
            ),
            width: size.height / 2.33,
            height: size.height / 12.51,
            child: ListTile(
              leading: Padding(
                padding: EdgeInsets.only(top: size.height / 54.47),
                child: CircleAvatar(
                  backgroundImage: AssetImage(docPic),
                ),
              ),
              title: Text(
                docName,
                style: Constants.textStyleWO(
                    fontSize: size.height / 51.4,
                    fontWeight: FontWeight.w500,
                    color: Constants.black),
              ),
              subtitle: Text(
                docSpecs,
                style: Constants.textStyleWO(
                    fontSize: size.height / 57.9,
                    fontWeight: FontWeight.w400,
                    color: Constants.black),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Constants.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(size.height / 77.2),
                bottomRight: Radius.circular(size.height / 77.2),
              ),
            ),
            width: size.height / 2.33,
            height: size.height / 14.9,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                activeCardButton(
                    voidCallback: () {},
                    size: size,
                    imagePath: "assets/reschedule.png",
                    buttonText: "Reschedule"),
                activeCardDivider(size: size),
                activeCardButton(
                  size: size,
                  imagePath: "assets/cross.png",
                  buttonText: "Cancel",
                  voidCallback: () {},
                ),
                activeCardDivider(size: size),
                activeCardButton(
                  size: size,
                  imagePath: "assets/pen.png",
                  buttonText: "Update",
                  voidCallback: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  GestureDetector activeCardButton({
    required Size size,
    required String imagePath,
    required String buttonText,
    required VoidCallback voidCallback,
  }) {
    return GestureDetector(
      onTap: voidCallback,
      child: Padding(
        padding: EdgeInsets.only(top: size.height / 71.2),
        child: Column(
          children: [
            Image.asset(imagePath),
            SizedBox(
              height: size.height / 308.6,
            ),
            Text(buttonText),
          ],
        ),
      ),
    );
  }
}

Padding activeCardDivider({required Size size}) {
  return Padding(
    padding: EdgeInsets.only(top: size.height / 132.3),
    child: VerticalDivider(
      thickness: 2,
      color: Constants.dividerGrey,
    ),
  );
}
