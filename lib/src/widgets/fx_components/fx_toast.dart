import 'package:creatego/creatego_theme.dart';
import 'package:mix/mix.dart';

const toastTitleVariant = Variant('toastTitleVariant');
const toastMessageVariant = Variant('toastMessageVariant');
const toastIconVariant = Variant('toastIconVariant');
const toastCloseIconVariant = Variant('toastCloseIconVariant');

class FxToast extends StatelessWidget {
  final ToastType toastType;
  final String toastTitle;
  final String toastMessage;
  const FxToast({
    Key? key,
    required this.toastType,
    required this.toastMessage,
    required this.toastTitle,
  }) : super(key: key);

  Mix get toastMix => Mix(
        shadow(
          blurRadius: 26,
          offset: const Offset(0, 2),
          spreadRadius: 0,
          color: _getShadowColor(toastType),
        ),
        border(color: _getBgColor(toastType), width: 1),
        crossAxis(CrossAxisAlignment.start),
        paddingHorizontal(12),
        paddingVertical(12),
        rounded(6),
        bgColor(_getBgColor(toastType)),
        toastTitleVariant(textStyle(ThemeTextMedium.rubik), marginBottom(2)
            //added new style
            // textColor(ThemeColors.white)
            ),
        toastMessageVariant(
          textStyle(ThemeTextRegular.sm),
        ),
        toastIconVariant(height(32), width(32), marginLeft(12)),
        toastCloseIconVariant(
          height(16),
          width(16),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Box(
      mix: toastMix,
      child: toastMix.row(children: [
        Box(
          variant: toastIconVariant,
          child: HeroIcon(_getIcons(toastType)),
        ),
        Box(
          child: toastMix.column(children: [
            const Box(
              variant: toastTitleVariant,
              child: TextMix('Toast title'),
            ),
            const Box(
              variant: toastMessageVariant,
              child: TextMix('Toast message here'),
            ),
          ]),
        ),
        const Spacer(),
        const Box(variant: toastCloseIconVariant, child: HeroIcon(HeroIcons.x)),
      ]),
    );
  }

  _getBgColor(ToastType toastType) {
    switch (toastType) {
      case ToastType.error:
        return ThemeColors.finex800; //added by Galymzhan red color
      case ToastType.warning:
        return ThemeColors.finex500;
      default:
        return ThemeColors.finex600;
    }
  }

  _getShadowColor(ToastType toastType) {
    switch (toastType) {
      case ToastType.error:
        return ThemeColors.finex900
            .withOpacity(10); //added by Galymzhan red color
      case ToastType.warning:
        return ThemeColors.finex900.withOpacity(10);
      default:
        return ThemeColors.finex1000.withOpacity(10);
    }
  }

  _getIcons(ToastType toastType) {
    //need to add icons like success, error, warning
    switch (toastType) {
      case ToastType.error:
        return HeroIcons.checkCircle;
      case ToastType.warning:
        return HeroIcons.cake;

      default:
        return HeroIcons.wifi;
    }
  }
}

enum ToastType { success, error, warning }
