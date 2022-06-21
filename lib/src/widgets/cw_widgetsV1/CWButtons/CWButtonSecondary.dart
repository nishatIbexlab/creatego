import 'package:creatego/creatego_theme.dart';

class CWButtonSecondaryXS extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final IconData? leftIcon;
  final IconData? rightIcon;
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
          minimumSize: MaterialStateProperty.all(const Size(94, 30)),
          backgroundColor: MaterialStateProperty.all(ThemeColors.orange100)),
      onPressed: onPressed,
      child: SpacedRow(
        horizontalSpace: 4,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (leftIcon != null)
            Icon(leftIcon, size: 16, color: ThemeColors.orange500),
          SizedText(
              text: text,
              textStyle:
                  ThemeTextSemiBold.sm.copyWith(color: ThemeColors.orange500)),
          if (rightIcon != null)
            Icon(rightIcon, size: 16, color: ThemeColors.orange500),
        ],
      ),
    );
  }
}

class CWButtonSecondaryS extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final IconData? leftIcon;
  final IconData? rightIcon;
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
          minimumSize: MaterialStateProperty.all(const Size(110, 36)),
          backgroundColor: MaterialStateProperty.all(ThemeColors.orange100)),
      onPressed: onPressed,
      child: SpacedRow(
        horizontalSpace: 4,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (leftIcon != null)
            Icon(leftIcon, size: 16, color: ThemeColors.orange500),
          SizedText(
              text: text,
              textStyle:
                  ThemeTextSemiBold.sm.copyWith(color: ThemeColors.orange500)),
          if (rightIcon != null)
            Icon(rightIcon, size: 16, color: ThemeColors.orange500),
        ],
      ),
    );
  }
}

class CWButtonSecondaryM extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final IconData? leftIcon;
  final IconData? rightIcon;
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
          minimumSize: MaterialStateProperty.all(const Size(110, 40)),
          backgroundColor: MaterialStateProperty.all(ThemeColors.orange100)),
      onPressed: onPressed,
      child: SpacedRow(
        horizontalSpace: 4,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (leftIcon != null)
            Icon(leftIcon, size: 16, color: ThemeColors.orange500),
          SizedText(
              text: text,
              textStyle:
                  ThemeTextSemiBold.sm.copyWith(color: ThemeColors.orange500)),
          if (rightIcon != null)
            Icon(rightIcon, size: 16, color: ThemeColors.orange500),
        ],
      ),
    );
  }
}

class CWButtonSecondaryL extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final IconData? leftIcon;
  final IconData? rightIcon;
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
          minimumSize: MaterialStateProperty.all(const Size(110, 44)),
          backgroundColor: MaterialStateProperty.all(ThemeColors.orange100)),
      onPressed: onPressed,
      child: SpacedRow(
        horizontalSpace: 4,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (leftIcon != null)
            Icon(leftIcon, size: 16, color: ThemeColors.orange500),
          if (leftIcon != null) const SizedBox(width: 4),
          SizedText(
              text: text,
              textStyle:
                  ThemeTextSemiBold.sm.copyWith(color: ThemeColors.orange500)),
          if (rightIcon != null) const SizedBox(width: 4),
          if (rightIcon != null)
            Icon(rightIcon, size: 16, color: ThemeColors.orange500),
        ],
      ),
    );
  }
}

class CWButtonSecondaryXL extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final IconData? leftIcon;
  final IconData? rightIcon;
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
          minimumSize: MaterialStateProperty.all(const Size(126, 52)),
          backgroundColor: MaterialStateProperty.all(ThemeColors.orange100)),
      onPressed: onPressed,
      child: SpacedRow(
        horizontalSpace: 4,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (leftIcon != null)
            Icon(leftIcon, size: 16, color: ThemeColors.orange500),
          if (leftIcon != null) const SizedBox(width: 6),
          SizedText(
              text: text,
              textStyle:
                  ThemeTextSemiBold.sm.copyWith(color: ThemeColors.orange500)),
          if (rightIcon != null) const SizedBox(width: 6),
          if (rightIcon != null)
            Icon(rightIcon, size: 16, color: ThemeColors.orange500),
        ],
      ),
    );
  }
}
