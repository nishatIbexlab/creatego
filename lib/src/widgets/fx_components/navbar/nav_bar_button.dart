import 'package:creatego/creatego_theme.dart';
import 'package:mix/mix.dart';

const _boxPadding = Variant('boxPadding');

class FXNavBarButton extends StatelessWidget {
  final HeroIcons icon;
  final String title;
  final Color? titleColor;
  final Color? iconColor;
  final VoidCallback onPressed;

  const FXNavBarButton({
    Key? key,
    this.titleColor = ThemeColors.white,
    this.iconColor = ThemeColors.white,
    required this.icon,
    required this.title,
    required this.onPressed,
  }) : super(key: key);

  Mix get navBarButtonMix => Mix(
    height(36),
    rounded(6),
    hover(
      bgColor(ThemeColors.finex500),
    ),
    _boxPadding(
      padding(10.5),
    ),
    textStyle(ThemeTextMedium.sm),
    textColor(titleColor),
  );

  @override
  Widget build(BuildContext context) {
    return PressableMix(
      mix: navBarButtonMix,
      onPressed: onPressed,
      child: Box(
        variant: _boxPadding,
        child: navBarButtonMix.row(children: [
          HeroIcon(
            icon,
            color: iconColor,
          ),
          const SizedBox(width: 13),
          TextMix(
            title,
          ),
        ]),
      ),
    );
  }
}
