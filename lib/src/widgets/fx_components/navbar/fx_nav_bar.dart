import 'package:creatego/creatego_theme.dart';
import 'package:mix/mix.dart';
import 'package:flutter/material.dart';

const _navBarPadding = Variant('navBarPadding');

class FXNavBar extends StatefulWidget {
  final Color? backGroundColor;
  final int? currentIndex;
  final Function(int)? onTabChange;
  final List<YSButton> children;

  FXNavBar({
    Key? key,
    required this.children,
    this.onTabChange,
    this.currentIndex = 0,
    this.backGroundColor = ThemeColors.finex600,
  }) : super(key: key);

  @override
  State<FXNavBar> createState() => _FXNavBarState();
}

class _FXNavBarState extends State<FXNavBar> {
  Mix get fxNavBarMix => Mix(
        height(64),
        _navBarPadding(
          paddingHorizontal(24),
          paddingVertical(11),
        ),
        bgColor(widget.backGroundColor!),
        textColor(ThemeColors.white),
        fontSize(14),
        fontWeight(FontWeight.w500),
      );

  @override
  Widget build(BuildContext context) {
    return Box(
      mix: fxNavBarMix,
      variant: _navBarPadding,
      child: SpacedRow(
        children: _buildNavbarChildren(),
        horizontalSpace: 20,
      ),
    );
  }

  List<Widget> _buildNavbarChildren() {
    final List<Widget> children = [];
    for (int i = 0; i < widget.children.length; i++) {
      final _item = widget.children[i];
      children.add(
        _checkActive(
          widget.currentIndex!,
          i,
          _item,
          widget.onTabChange,
        ),
      );
    }
    return children;
  }

  _checkActive(int currentIndex, int childrenIndex, YSButton item,
      Function(int)? onPressed) {
    if (currentIndex == childrenIndex) {
      return YSButton(
        text: item.text,
        icon: item.icon,
        bgColor: item.bgColor,
        onPressed: () {
          setState(() {
            onPressed?.call(childrenIndex);
          });
        },
      );
    } else {
      return YSButton.link(
        text: item.text,
        icon: item.icon,
        textColor: ThemeColors.white,
        onPressed: () => setState(() {
          onPressed?.call(childrenIndex);
        }),
      );
    }
  }
}
