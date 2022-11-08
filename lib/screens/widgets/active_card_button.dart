import 'package:flutter/material.dart';

import '../../constants.dart';

class ActiveCardButton extends StatefulWidget {
  final bool colorChanger;
  final Size size;
  final String imagePath;
  final String buttonText;
  final VoidCallback voidCallback;
  final String buttonInfo;
  const ActiveCardButton({
    Key? key,
    required this.colorChanger,
    required this.size,
    required this.imagePath,
    required this.buttonText,
    required this.voidCallback,
    required this.buttonInfo,
  }) : super(key: key);

  @override
  State<ActiveCardButton> createState() => _ActiveCardButtonState();
}

class _ActiveCardButtonState extends State<ActiveCardButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          widget.voidCallback();
        });
      },
      child: Padding(
        padding: EdgeInsets.only(top: widget.size.height / 71.2),
        child: Column(
          children: [
            Image.asset(widget.imagePath),
            SizedBox(
              height: widget.size.height / 308.6,
            ),
            Text(widget.buttonText),
            Text(
              widget.buttonInfo,
              style: Constants.textStyleWO(
                  fontSize: 12,
                  fontWeight:
                      widget.colorChanger ? FontWeight.w500 : FontWeight.w700,
                  color:
                      widget.colorChanger ? Constants.black : Constants.pink),
            )
          ],
        ),
      ),
    );
  }
}
