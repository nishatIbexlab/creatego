import 'package:flutter/material.dart';
import 'package:mix/mix.dart';
import 'package:creatego/creatego_theme.dart';

class FNXBoxContent extends StatelessWidget {
  String? titleText;
  String? subtitle;
  int? totalValue;

  FNXBoxContent({
    Key? key,
    this.totalValue,
    this.titleText = '',
    this.subtitle,
  }) : super(key: key);

  Mix get FNXBoxContentMix => Mix(
        mainAxis(MainAxisAlignment.spaceBetween),
        crossAxis(CrossAxisAlignment.center),
      );

  Mix get FNXBoxColumn => Mix(
        mainAxis(MainAxisAlignment.center),
        crossAxis(CrossAxisAlignment.center),
      );

  Mix get FNXBoxIcon => Mix(
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
      mix: FNXBoxContentMix,
      child: FNXBoxContentMix.row(children: [
        Box(
          mix: FNXBoxIcon,
          child: const HeroIcon(
            HeroIcons.cloudDownload,
            color: ThemeColors.amber500,
          ),
        ),
        FNXBoxContentMix.row(children: [
          FNXBoxColumn.column(children: [
            TextMix(titleText!),
            TextMix(subtitle!),
          ]),
          TextMix(
            totalValue.toString(),
          ),
        ]),
      ]),
    );
  }
}
