import 'package:creatego/creatego_theme.dart';

class CWButtonPrimaryXS extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final HeroIcons? leftIcon;
  final HeroIcons? rightIcon;
  final Color? bgColor;
  const CWButtonPrimaryXS(
      {required this.text,
      required this.onPressed,
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
          backgroundColor: MaterialStateProperty.all(ThemeColors.orange500)),
      onPressed: onPressed,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 5),
        child: SpacedRow(
          horizontalSpace: 4,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (leftIcon != null) HeroIcon(leftIcon!, size: 20),
            SizedText(text: text, textStyle: ThemeTextSemiBold.sm),
            if (rightIcon != null) HeroIcon(rightIcon!, size: 20),
          ],
        ),
      ),
    );
  }
}

class CWButtonPrimaryS extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final HeroIcons? leftIcon;
  final HeroIcons? rightIcon;
  final Color? bgColor;
  const CWButtonPrimaryS(
      {required this.text,
      required this.onPressed,
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
          backgroundColor: MaterialStateProperty.all(ThemeColors.orange500)),
      onPressed: onPressed,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
        child: SpacedRow(
          horizontalSpace: 4,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (leftIcon != null) HeroIcon(leftIcon!, size: 20),
            SizedText(text: text, textStyle: ThemeTextSemiBold.sm),
            if (rightIcon != null) HeroIcon(rightIcon!, size: 20),
          ],
        ),
      ),
    );
  }
}

class CWButtonPrimaryM extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final HeroIcons? leftIcon;
  final HeroIcons? rightIcon;
  final Color? bgColor;
  const CWButtonPrimaryM(
      {required this.text,
      required this.onPressed,
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
          backgroundColor: MaterialStateProperty.all(ThemeColors.orange500)),
      onPressed: onPressed,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
        child: SpacedRow(
          horizontalSpace: 4,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (leftIcon != null) HeroIcon(leftIcon!, size: 20),
            SizedText(text: text, textStyle: ThemeTextSemiBold.sm),
            if (rightIcon != null) HeroIcon(rightIcon!, size: 20),
          ],
        ),
      ),
    );
  }
}

class CWButtonPrimaryL extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final HeroIcons? leftIcon;
  final HeroIcons? rightIcon;
  final Color? bgColor;
  const CWButtonPrimaryL(
      {required this.text,
      required this.onPressed,
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
              MaterialStateProperty.all(bgColor ?? ThemeColors.orange500)),
      onPressed: onPressed,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12),
        child: SpacedRow(
          horizontalSpace: 4,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (leftIcon != null) HeroIcon(leftIcon!, size: 20),
            if (leftIcon != null) const SizedBox(width: 4),
            SizedText(text: text, textStyle: ThemeTextSemiBold.sm),
            if (rightIcon != null) const SizedBox(width: 4),
            if (rightIcon != null) HeroIcon(rightIcon!, size: 20),
          ],
        ),
      ),
    );
  }
}

class CWButtonPrimaryXL extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final HeroIcons? leftIcon;
  final HeroIcons? rightIcon;
  final Color? bgColor;
  const CWButtonPrimaryXL(
      {required this.text,
      required this.onPressed,
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
          backgroundColor: MaterialStateProperty.all(ThemeColors.orange500)),
      onPressed: onPressed,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        child: SpacedRow(
          horizontalSpace: 6,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (leftIcon != null) HeroIcon(leftIcon!, size: 20),
            if (leftIcon != null) const SizedBox(width: 6),
            SizedText(text: text, textStyle: ThemeTextSemiBold.sm),
            if (rightIcon != null) const SizedBox(width: 6),
            if (rightIcon != null) HeroIcon(rightIcon!, size: 20),
          ],
        ),
      ),
    );
  }
}
