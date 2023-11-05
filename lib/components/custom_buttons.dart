
import 'package:flutter_application_1/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/color.dart';


class DefaultButton extends StatelessWidget {
  final VoidCallback onPress;
  final String title;
  final IconData iconData;

  const DefaultButton(
      {Key? key,
      required this.onPress,
      required this.title,
      required this.iconData})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        padding: const EdgeInsets.only(right: kDefaultPadding),
     
        decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [kSecondaryColor, kPrimaryColor],
              begin: const FractionalOffset(0.0, 0.0),
              end: const FractionalOffset(0.5, 0.0),
              stops: [0.0, 1.0],
              tileMode: TileMode.clamp,
            ),
            borderRadius: BorderRadius.circular(kDefaultPadding)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            Text(title, style: Theme.of(context).textTheme.subtitle2),
            Spacer(),
            Icon(
              iconData,
          
              color: kOtherColor,
            )
          ],
        ),
      ),
    );
  }
}