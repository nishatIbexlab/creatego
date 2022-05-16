import 'package:creatego/creatego_theme.dart';
import 'package:creatego/src/widgets/fx_components/navbar/nav_bar_button.dart';
import 'package:mix/mix.dart';
import 'package:flutter/material.dart';

const _navBarPadding = Variant('navBarPadding');

class FXNavBar extends StatelessWidget {
  final Color? backGroundColor;
  final Color? dashBoardButtonColor;
  final List<FXNavBarButton> children;
  final Color? dashBoardIconColor;

  const FXNavBar({
    Key? key,
    required this.children,
    this.dashBoardIconColor = ThemeColors.white,
    this.dashBoardButtonColor = ThemeColors.amber500,
    this.backGroundColor = ThemeColors.finex600,
  }) : super(key: key);

  Mix get fxNavBarMix => Mix(
    height(64),
    _navBarPadding(paddingHorizontal(24)),
    bgColor(backGroundColor!),
    textColor(ThemeColors.white),
    fontSize(14),
    fontWeight(FontWeight.w500),
  );

  @override
  Widget build(BuildContext context) {
    List<Widget> widgets = [];
    for (var element in children) {
      widgets.add(element);
      if (children.last != element) {
        widgets.add(const SizedBox(width: 34.5));
      }
    }
    return Box(
      mix: fxNavBarMix,
      variant: _navBarPadding,
      child: fxNavBarMix.row(children: widgets),
    );
  }
}
