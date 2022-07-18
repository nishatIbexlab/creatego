import 'package:creatego/creatego_theme.dart';

class CWButtonSecondaryXS extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final HeroIcons? leftIcon;
  final HeroIcons? rightIcon;
  const CWButtonSecondaryXS(
      {required this.text,
      required this.onPressed,
      this.rightIcon,
      this.leftIcon,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
          padding: MaterialStateProperty.all(const EdgeInsets.all(0)),
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(6))),
          backgroundColor: MaterialStateProperty.all(ThemeColors.orange100)),
      onPressed: onPressed,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 5),
        child: SpacedRow(
          horizontalSpace: 4,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (leftIcon != null)
              HeroIcon(leftIcon!, size: 20, color: ThemeColors.orange500),
            SizedText(
                text: text,
                textStyle: ThemeTextSemiBold.sm
                    .copyWith(color: ThemeColors.orange500)),
            if (rightIcon != null)
              HeroIcon(rightIcon!, size: 20, color: ThemeColors.orange500),
          ],
        ),
      ),
    );
  }
}

class CWButtonSecondaryS extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final HeroIcons? leftIcon;
  final HeroIcons? rightIcon;
  const CWButtonSecondaryS(
      {required this.text,
      required this.onPressed,
      this.rightIcon,
      this.leftIcon,
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
          backgroundColor: MaterialStateProperty.all(ThemeColors.orange100)),
      onPressed: onPressed,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
        child: SpacedRow(
          horizontalSpace: 4,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (leftIcon != null)
              HeroIcon(leftIcon!, size: 20, color: ThemeColors.orange500),
            SizedText(
                text: text,
                textStyle: ThemeTextSemiBold.sm
                    .copyWith(color: ThemeColors.orange500)),
            if (rightIcon != null)
              HeroIcon(rightIcon!, size: 20, color: ThemeColors.orange500),
          ],
        ),
      ),
    );
  }
}

class CWButtonSecondaryM extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final HeroIcons? leftIcon;
  final HeroIcons? rightIcon;
  const CWButtonSecondaryM(
      {required this.text,
      required this.onPressed,
      this.rightIcon,
      this.leftIcon,
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
          backgroundColor: MaterialStateProperty.all(ThemeColors.orange100)),
      onPressed: onPressed,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
        child: SpacedRow(
          horizontalSpace: 4,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (leftIcon != null)
              HeroIcon(leftIcon!, size: 20, color: ThemeColors.orange500),
            SizedText(
                text: text,
                textStyle: ThemeTextSemiBold.sm
                    .copyWith(color: ThemeColors.orange500)),
            if (rightIcon != null)
              HeroIcon(rightIcon!, size: 20, color: ThemeColors.orange500),
          ],
        ),
      ),
    );
  }
}

class CWButtonSecondaryL extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final HeroIcons? leftIcon;
  final HeroIcons? rightIcon;
  const CWButtonSecondaryL(
      {required this.text,
      required this.onPressed,
      this.rightIcon,
      this.leftIcon,
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
          backgroundColor: MaterialStateProperty.all(ThemeColors.orange100)),
      onPressed: onPressed,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12),
        child: SpacedRow(
          horizontalSpace: 4,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (leftIcon != null)
              HeroIcon(leftIcon!, size: 20, color: ThemeColors.orange500),
            if (leftIcon != null) const SizedBox(width: 4),
            SizedText(
                text: text,
                textStyle: ThemeTextSemiBold.sm
                    .copyWith(color: ThemeColors.orange500)),
            if (rightIcon != null) const SizedBox(width: 4),
            if (rightIcon != null)
              HeroIcon(rightIcon!, size: 20, color: ThemeColors.orange500),
          ],
        ),
      ),
    );
  }
}

class CWButtonSecondaryXL extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final HeroIcons? leftIcon;
  final HeroIcons? rightIcon;
  const CWButtonSecondaryXL(
      {required this.text,
      required this.onPressed,
      this.rightIcon,
      this.leftIcon,
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
          backgroundColor: MaterialStateProperty.all(ThemeColors.orange100)),
      onPressed: onPressed,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        child: SpacedRow(
          horizontalSpace: 6,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (leftIcon != null)
              HeroIcon(leftIcon!, size: 20, color: ThemeColors.orange500),
            if (leftIcon != null) const SizedBox(width: 6),
            SizedText(
                text: text,
                textStyle: ThemeTextSemiBold.sm
                    .copyWith(color: ThemeColors.orange500)),
            if (rightIcon != null) const SizedBox(width: 6),
            if (rightIcon != null)
              HeroIcon(rightIcon!, size: 20, color: ThemeColors.orange500),
          ],
        ),
      ),
    );
  }
}
