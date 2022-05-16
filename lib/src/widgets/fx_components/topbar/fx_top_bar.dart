import 'package:creatego/creatego_theme.dart';
import 'package:flutter/material.dart';
import 'package:mix/mix.dart';

const _testButton = Variant('testButton');

class FXTopBar extends StatelessWidget {
  final Image? logo;
  final Image? avatar;
  final VoidCallback? menuOnPressed;
  final VoidCallback? bellIconOnPressed;
  final VoidCallback? popUpMenuOnPressed;
  final TextEditingController? searchController;

  FXTopBar({
    Key? key,
    this.avatar,
    this.logo,
    this.menuOnPressed,
    this.searchController,
    this.bellIconOnPressed,
    this.popUpMenuOnPressed,
  }) : super(key: key);

  Mix get topBarMix => Mix(
        paddingHorizontal(14),
        bgColor(ThemeColors.finex700),
        crossAxis(CrossAxisAlignment.center),
        _testButton(
          align(Alignment.center),
          margin(7),
          width(69),
          height(36),
          rounded(6),
          fontSize(15),
          textColor(ThemeColors.white),
          bgColor(ThemeColors.orange500),
        ),
      );

  Mix get searchFieldMix => Mix(
        margin(7),
        height(40),
        width(418),
        rounded(12),
        fontSize(15),
        bgColor(ThemeColors.white),
        mainAxis(MainAxisAlignment.start),
        crossAxis(CrossAxisAlignment.center),
      );

  Mix get topBarRightSide => Mix(
        icon(
          color: ThemeColors.white,
          size: 15,
        ),
      );

  Mix get circleAvatarMix => Mix(
        marginLeft(20),
        marginRight(22),
        height(32),
        width(32),
        rounded(360),
      );

  @override
  Widget build(BuildContext context) {
    return Box(
      mix: topBarMix,
      child: topBarMix.row(children: [
        if (menuOnPressed != null)
          PressableMix(
            onPressed: menuOnPressed,
            child: const HeroIcon(
              HeroIcons.menu,
              color: ThemeColors.white,
            ),
          ),
        if (menuOnPressed != null) const SizedBox(width: 20.33),
        if (logo != null) logo!,
        const Box(
          variant: _testButton,
          child: TextMix(
            'TEST',
            variant: _testButton,
          ),
        ),
        if (searchController != null)
          Box(
            mix: searchFieldMix,
            child: searchFieldMix.row(
              children: [
                const HeroIcon(HeroIcons.search),
                const SizedBox(width: 10.01),
                Flexible(
                  child: TextField(
                    controller: searchController,
                    maxLines: 1,
                    decoration: const InputDecoration(
                      isDense: true,
                      hintText: 'Search by Block ID / TX Hash',
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ],
            ),
          ),
        const Expanded(child: SizedBox()),
        Box(
          mix: topBarRightSide,
          child: topBarRightSide.row(children: [
            if (bellIconOnPressed != null)
              PressableMix(
                mix: topBarRightSide,
                onPressed: bellIconOnPressed,
                child: const HeroIcon(
                  HeroIcons.bell,
                  color: ThemeColors.white,
                ),
              ),
            if (avatar != null)
              Box(
                mix: circleAvatarMix,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(360),
                  child: avatar!,
                ),
              ),
            if (popUpMenuOnPressed != null)
              PressableMix(
                mix: topBarRightSide,
                onPressed: popUpMenuOnPressed,
                child: const IconMix(
                  Icons.keyboard_arrow_down,
                ),
              ),
          ]),
        ),
      ]),
    );
  }
}
