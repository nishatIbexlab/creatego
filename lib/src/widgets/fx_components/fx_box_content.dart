import 'package:flutter/material.dart';
import 'package:mix/mix.dart';
import 'package:creatego/creatego_theme.dart';

class FXBoxContent extends StatelessWidget {
  final String titleText;
  final HeroIcons icon;
  String? subtitle;
  final int totalValue;

  FXBoxContent({
    Key? key,
    required this.totalValue,
    required this.icon,
    required this.titleText,
    this.subtitle,
  }) : super(key: key);

  Mix get FXBoxContentMix => Mix(
        mainAxis(MainAxisAlignment.spaceBetween),
        crossAxis(CrossAxisAlignment.center),
      );

  Mix get FXBoxColumn => Mix(
        mainAxis(MainAxisAlignment.center),
        crossAxis(CrossAxisAlignment.center),
      );

  Mix get FXBoxIcon => Mix(
        rounded(360),
        paddingVertical(11.66),
        paddingHorizontal(13.2),
        //ToDo Add proper color
        border(
          color: ThemeColors.amber500,
          width: 3,
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Box(
      mix: FXBoxContentMix,
      child: FXBoxContentMix.row(children: [
        Box(
          mix: FXBoxIcon,
          child: HeroIcon(
            icon,
            color: ThemeColors.amber500,
          ),
        ),
        FXBoxContentMix.row(children: [
          FXBoxColumn.column(children: [
            TextMix(titleText),
            if (subtitle != null) TextMix(subtitle!),
          ]),
          TextMix(
            totalValue.toString(),
          ),
        ]),
      ]),
    );
  }
}
