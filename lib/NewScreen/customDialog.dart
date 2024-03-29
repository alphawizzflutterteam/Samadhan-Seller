import 'package:flutter/material.dart';

class CustomDialog extends StatelessWidget {
  final Text content;
  final Text title;
  final Color firstColor;
  final Color secondColor;
  final Icon headerIcon;

  const CustomDialog(
      {Key? key,
      required this.content,
      required this.title,
      required this.firstColor,
      required this.secondColor,
      required this.headerIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      elevation: 8,
      backgroundColor: Colors.transparent,
      child: buildChild(context),
    );
  }

  buildChild(BuildContext context) => Container(
        height: 350,
        decoration: BoxDecoration(
          color: firstColor,
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(0, 6.0, 6.0, 0),
              child: Align(
                  alignment: Alignment.topRight,
                  child: IconButton(
                    icon: Icon(
                      Icons.close,
                      color: Colors.white,
                      size: 25.0,
                    ),
                    onPressed: () => Navigator.pop(context),
                  )),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0),
              child: headerIcon,
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: secondColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15.0),
                      topRight: Radius.circular(15.0),
                      bottomLeft: Radius.circular(20.0),
                      bottomRight: Radius.circular(20.0),
                    )),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    title,
                    content,
                  ],
                ),
              ),
            )
          ],
        ),
      );
}
