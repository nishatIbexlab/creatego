import 'package:creatego/creatego_theme.dart';

class CWButtonDisabledXS extends StatelessWidget {
  final String text;
  final HeroIcons? leftIcon;
  final HeroIcons? rightIcon;
  final Color? bgColor;
  const CWButtonDisabledXS(
      {required this.text,
      this.rightIcon,
      this.leftIcon,
      this.bgColor,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
          padding: MaterialStateProperty.all(const EdgeInsets.all(0)),
          // : MaterialStateProperty.all(const Size(94, 30)),
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(6))),
          backgroundColor:
              MaterialStateProperty.all(bgColor ?? ThemeColors.coolgray400)),
      onPressed: null,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 5),
        child: SpacedRow(
          horizontalSpace: 4,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (leftIcon != null)
              HeroIcon(leftIcon!, size: 20, color: ThemeColors.white),
            SizedText(
                text: text,
                textStyle:
                    ThemeTextSemiBold.sm.copyWith(color: ThemeColors.white)),
            if (rightIcon != null)
              HeroIcon(rightIcon!, size: 20, color: ThemeColors.white),
          ],
        ),
      ),
    );
  }
}

class CWButtonDisabledS extends StatelessWidget {
  final String text;
  final HeroIcons? leftIcon;
  final HeroIcons? rightIcon;
  final Color? bgColor;
  const CWButtonDisabledS(
      {required this.text,
      this.rightIcon,
      this.leftIcon,
      this.bgColor,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
          padding: MaterialStateProperty.all(const EdgeInsets.all(0)),
          // : MaterialStateProperty.all(const Size(110, 36)),
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(6))),
          backgroundColor:
              MaterialStateProperty.all(bgColor ?? ThemeColors.coolgray400)),
      onPressed: null,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
        child: SpacedRow(
          horizontalSpace: 4,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (leftIcon != null)
              HeroIcon(leftIcon!, size: 20, color: ThemeColors.white),
            SizedText(
                text: text,
                textStyle:
                    ThemeTextSemiBold.sm.copyWith(color: ThemeColors.white)),
            if (rightIcon != null)
              HeroIcon(rightIcon!, size: 20, color: ThemeColors.white),
          ],
        ),
      ),
    );
  }
}

class CWButtonDisabledM extends StatelessWidget {
  final String text;
  final HeroIcons? leftIcon;
  final HeroIcons? rightIcon;
  final Color? bgColor;
  const CWButtonDisabledM(
      {required this.text,
      this.rightIcon,
      this.leftIcon,
      this.bgColor,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
          padding: MaterialStateProperty.all(const EdgeInsets.all(0)),
          // : MaterialStateProperty.all(const Size(110, 40)),
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(6))),
          backgroundColor:
              MaterialStateProperty.all(bgColor ?? ThemeColors.coolgray400)),
      onPressed: null,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
        child: SpacedRow(
          horizontalSpace: 4,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (leftIcon != null)
              HeroIcon(leftIcon!, size: 20, color: ThemeColors.white),
            SizedText(
                text: text,
                textStyle:
                    ThemeTextSemiBold.sm.copyWith(color: ThemeColors.white)),
            if (rightIcon != null)
              HeroIcon(rightIcon!, size: 20, color: ThemeColors.white),
          ],
        ),
      ),
    );
  }
}

class CWButtonDisabledL extends StatelessWidget {
  final String text;
  final HeroIcons? leftIcon;
  final HeroIcons? rightIcon;
  final Color? bgColor;
  const CWButtonDisabledL(
      {required this.text,
      this.rightIcon,
      this.leftIcon,
      this.bgColor,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
          padding: MaterialStateProperty.all(const EdgeInsets.all(0)),
          // : MaterialStateProperty.all(const Size(110, 44)),
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(6))),
          backgroundColor:
              MaterialStateProperty.all(bgColor ?? ThemeColors.coolgray400)),
      onPressed: null,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12),
        child: SpacedRow(
          horizontalSpace: 4,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (leftIcon != null)
              HeroIcon(leftIcon!, size: 20, color: ThemeColors.white),
            if (leftIcon != null) const SizedBox(width: 4),
            SizedText(
                text: text,
                textStyle:
                    ThemeTextSemiBold.sm.copyWith(color: ThemeColors.white)),
            if (rightIcon != null) const SizedBox(width: 4),
            if (rightIcon != null)
              HeroIcon(rightIcon!, size: 20, color: ThemeColors.white),
          ],
        ),
      ),
    );
  }
}

class CWButtonDisabledXL extends StatelessWidget {
  final String text;
  final HeroIcons? leftIcon;
  final HeroIcons? rightIcon;
  final Color? bgColor;
  const CWButtonDisabledXL(
      {required this.text,
      this.rightIcon,
      this.leftIcon,
      this.bgColor,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
          padding: MaterialStateProperty.all(const EdgeInsets.all(0)),
          // : MaterialStateProperty.all(const Size(126, 52)),
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(6))),
          backgroundColor:
              MaterialStateProperty.all(bgColor ?? ThemeColors.coolgray400)),
      onPressed: null,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        child: SpacedRow(
          horizontalSpace: 6,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (leftIcon != null)
              HeroIcon(leftIcon!, size: 20, color: ThemeColors.white),
            if (leftIcon != null) const SizedBox(width: 6),
            SizedText(
                text: text,
                textStyle:
                    ThemeTextSemiBold.sm.copyWith(color: ThemeColors.white)),
            if (rightIcon != null) const SizedBox(width: 6),
            if (rightIcon != null)
              HeroIcon(rightIcon!, size: 20, color: ThemeColors.white),
          ],
        ),
      ),
    );
  }
}
