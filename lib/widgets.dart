import 'package:flutter/material.dart';
import 'package:ostella_task/constants.dart';

class Buttons extends StatelessWidget {
  Buttons({
    Key? key,
    required this.onPress,
    required this.child,
    required this.height,
    this.loading = false,
  }) : super(key: key);
  final bool loading;
  Function() onPress;
  Widget child;
  double height;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 1, 10, 1),
      child: InkWell(
        borderRadius: BorderRadius.circular(30),
        onTap: onPress,
        child: Container(
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: defaultColor,
          ),
          child: Center(
            child: loading
                ? const CircularProgressIndicator(color: Colors.white)
                : child,
          ),
        ),
      ),
    );
  }
}

class CustomText extends StatelessWidget {
  CustomText(this.text, this.color, this.size, this.weight, this.overflow,
      this.textAlign);
  final String text;
  final Color color;
  final double size;
  final FontWeight weight;
  final TextOverflow overflow;
  final TextAlign textAlign;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: overflow,
      textAlign: textAlign,
      style: TextStyle(
        fontSize: size,
        fontWeight: weight,
        color: color,
      ),
    );
  }
}

Widget ListViewWidget(width, step, user, title, subtitle) {
  //   "step": "STEP 1",
  // "user": "YOU",
  // "title": "",
  // "detail": "",

  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: width * 0.2,
          decoration: BoxDecoration(
              color: white, borderRadius: BorderRadius.circular(15)),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(15, 8, 15, 8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomText(step, grey, 12, FontWeight.w600, TextOverflow.fade,
                    TextAlign.center),
                CircleAvatar(
                  radius: 20,
                  backgroundImage: NetworkImage(firstImageUrl),
                ),
                CustomText(user, grey, 12, FontWeight.w600,
                    TextOverflow.ellipsis, TextAlign.center),
              ],
            ),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(
              width: width * 0.55,
              child: CustomText(title, defaultColor, 15, FontWeight.w500,
                  TextOverflow.fade, TextAlign.start),
            ),
            SizedBox(
              width: width * 0.55,
              child: CustomText(subtitle, grey, 13, FontWeight.w500,
                  TextOverflow.fade, TextAlign.start),
            ),
          ],
        ),
      )
    ],
  );
}
