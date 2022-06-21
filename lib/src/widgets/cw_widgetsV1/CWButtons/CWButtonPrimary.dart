import 'package:creatego/creatego_theme.dart';

class CWButtonPrimaryXS extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final IconData? leftIcon;
  final IconData? rightIcon;
  const CWButtonPrimaryXS(
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
          backgroundColor: MaterialStateProperty.all(ThemeColors.orange500)),
      onPressed: onPressed,
      child: SpacedRow(
        horizontalSpace: 4,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (leftIcon != null) Icon(leftIcon, size: 16),
          SizedText(text: text, textStyle: ThemeTextSemiBold.sm),
          if (rightIcon != null) Icon(rightIcon, size: 16),
        ],
      ),
    );
  }
}

class CWButtonPrimaryS extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final IconData? leftIcon;
  final IconData? rightIcon;
  const CWButtonPrimaryS(
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
          backgroundColor: MaterialStateProperty.all(ThemeColors.orange500)),
      onPressed: onPressed,
      child: SpacedRow(
        horizontalSpace: 4,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (leftIcon != null) Icon(leftIcon, size: 16),
          SizedText(text: text, textStyle: ThemeTextSemiBold.sm),
          if (rightIcon != null) Icon(rightIcon, size: 16),
        ],
      ),
    );
  }
}

class CWButtonPrimaryM extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final IconData? leftIcon;
  final IconData? rightIcon;
  const CWButtonPrimaryM(
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
          backgroundColor: MaterialStateProperty.all(ThemeColors.orange500)),
      onPressed: onPressed,
      child: SpacedRow(
        horizontalSpace: 4,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (leftIcon != null) Icon(leftIcon, size: 16),
          SizedText(text: text, textStyle: ThemeTextSemiBold.sm),
          if (rightIcon != null) Icon(rightIcon, size: 16),
        ],
      ),
    );
  }
}

class CWButtonPrimaryL extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final IconData? leftIcon;
  final IconData? rightIcon;
  const CWButtonPrimaryL(
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
          backgroundColor: MaterialStateProperty.all(ThemeColors.orange500)),
      onPressed: onPressed,
      child: SpacedRow(
        horizontalSpace: 4,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (leftIcon != null) Icon(leftIcon, size: 16),
          if (leftIcon != null) const SizedBox(width: 4),
          SizedText(text: text, textStyle: ThemeTextSemiBold.sm),
          if (rightIcon != null) const SizedBox(width: 4),
          if (rightIcon != null) Icon(rightIcon, size: 16),
        ],
      ),
    );
  }
}

class CWButtonPrimaryXL extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final IconData? leftIcon;
  final IconData? rightIcon;
  const CWButtonPrimaryXL(
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
          backgroundColor: MaterialStateProperty.all(ThemeColors.orange500)),
      onPressed: onPressed,
      child: SpacedRow(
        horizontalSpace: 4,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (leftIcon != null) Icon(leftIcon, size: 16),
          if (leftIcon != null) const SizedBox(width: 6),
          SizedText(text: text, textStyle: ThemeTextSemiBold.sm),
          if (rightIcon != null) const SizedBox(width: 6),
          if (rightIcon != null) Icon(rightIcon, size: 16),
        ],
      ),
    );
  }
}
