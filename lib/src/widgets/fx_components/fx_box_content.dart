import 'package:flutter/material.dart';
import 'package:mix/mix.dart';
import 'package:creatego/creatego_theme.dart';

const _boxShadow = Variant('shadow');
const _grayText = Variant('grayText');

class FXBoxContent extends StatelessWidget {
  final double height;
  final double width;
  final String titleText;
  final HeroIcons icon;
  String? subtitle;
  final int totalValue;
  final Color? backGroundColor;
  final Color? txtColor;
  final Color? totalValueColor;
  final Color? iconBorderColor;
  final Color? iconColor;

  FXBoxContent({
    Key? key,
    this.height = 133,
    this.width = 334,
    this.iconColor = ThemeColors.amber500,
    this.iconBorderColor = ThemeColors.amber500,
    this.totalValueColor = ThemeColors.coolgray700,
    this.txtColor = ThemeColors.gray400,
    required this.totalValue,
    required this.icon,
    required this.titleText,
    this.backGroundColor = ThemeColors.white,
    this.subtitle,
  }) : super(key: key);

  Mix get FXBoxContentMix => Mix(
        h(height),
        w(width),
        _boxShadow(
          shadow(
              color: Colors.black.withOpacity(0.07),
              offset: Offset(0, 1),
              blurRadius: 2.0),
        ),
        rounded(6),
        fontSize(32),
        paddingVertical(16),
        paddingHorizontal(25),
        bgColor(backGroundColor!),
        textColor(totalValueColor),
        fontWeight(FontWeight.bold),
        mainAxis(MainAxisAlignment.start),
        crossAxis(CrossAxisAlignment.center),
      );

  Mix get FXBoxColumn => Mix(
        fontSize(15),
        textColor(txtColor),
        mainAxis(MainAxisAlignment.center),
        crossAxis(CrossAxisAlignment.start),
      );

  Mix get FXBoxIcon => Mix(
        rounded(360),
        paddingVertical(11.66),
        paddingHorizontal(13.2),
        //ToDo Add proper color
        border(
          color: iconBorderColor,
          width: 3,
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Box(
      mix: FXBoxContentMix,
      variant: _boxShadow,
      child: FXBoxContentMix.row(children: [
        Box(
          mix: FXBoxIcon,
          child: HeroIcon(
            icon,
            color: iconColor,
          ),
        ),
        const SizedBox(width: 20),
        FXBoxColumn.column(
          children: [
            TextMix(titleText),
            if (subtitle != null) const SizedBox(height: 6),
            if (subtitle != null) TextMix(subtitle!),
          ],
        ),
        const Expanded(child: SizedBox()),
        TextMix(
          totalValue.toString(),
        ),
      ]),
    );
  }
}
