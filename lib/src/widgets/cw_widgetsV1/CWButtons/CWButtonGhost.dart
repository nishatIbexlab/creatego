import 'package:creatego/creatego_theme.dart';

class CWButtonGhostXS extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final IconData? leftIcon;
  final IconData? rightIcon;
  const CWButtonGhostXS(
      {required this.text,
      required this.onPressed,
      this.rightIcon,
      this.leftIcon,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          primary: ThemeColors.white,
          elevation: 1,
          shadowColor: ThemeColors.coolgray300,
          minimumSize: const Size(94, 30),
          side: const BorderSide(color: ThemeColors.coolgray300)),
      onPressed: onPressed,
      child: SpacedRow(
        horizontalSpace: 4,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (leftIcon != null)
            Icon(leftIcon, size: 16, color: ThemeColors.coolgray600),
          SizedText(
              text: text,
              textStyle: ThemeTextSemiBold.sm
                  .copyWith(color: ThemeColors.coolgray600)),
          if (rightIcon != null)
            Icon(rightIcon, size: 16, color: ThemeColors.coolgray600),
        ],
      ),
    );
  }
}

class CWButtonGhostS extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final IconData? leftIcon;
  final IconData? rightIcon;
  const CWButtonGhostS(
      {required this.text,
      required this.onPressed,
      this.rightIcon,
      this.leftIcon,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          primary: ThemeColors.white,
          elevation: 1,
          shadowColor: ThemeColors.coolgray300,
          minimumSize: const Size(110, 36),
          side: const BorderSide(color: ThemeColors.coolgray300)),
      onPressed: onPressed,
      child: SpacedRow(
        horizontalSpace: 4,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (leftIcon != null)
            Icon(leftIcon, size: 16, color: ThemeColors.coolgray600),
          SizedText(
              text: text,
              textStyle: ThemeTextSemiBold.sm
                  .copyWith(color: ThemeColors.coolgray600)),
          if (rightIcon != null)
            Icon(rightIcon, size: 16, color: ThemeColors.coolgray600),
        ],
      ),
    );
  }
}

class CWButtonGhostM extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final IconData? leftIcon;
  final IconData? rightIcon;
  const CWButtonGhostM(
      {required this.text,
      required this.onPressed,
      this.rightIcon,
      this.leftIcon,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          primary: ThemeColors.white,
          elevation: 1,
          shadowColor: ThemeColors.coolgray300,
          minimumSize: const Size(110, 40),
          side: const BorderSide(color: ThemeColors.coolgray300)),
      onPressed: onPressed,
      child: SpacedRow(
        horizontalSpace: 4,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (leftIcon != null)
            Icon(leftIcon, size: 16, color: ThemeColors.coolgray600),
          SizedText(
              text: text,
              textStyle: ThemeTextSemiBold.sm
                  .copyWith(color: ThemeColors.coolgray600)),
          if (rightIcon != null)
            Icon(rightIcon, size: 16, color: ThemeColors.coolgray600),
        ],
      ),
    );
  }
}

class CWButtonGhostL extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final IconData? leftIcon;
  final IconData? rightIcon;
  const CWButtonGhostL(
      {required this.text,
      required this.onPressed,
      this.rightIcon,
      this.leftIcon,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          primary: ThemeColors.white,
          elevation: 1,
          shadowColor: ThemeColors.coolgray300,
          minimumSize: const Size(110, 44),
          side: const BorderSide(color: ThemeColors.coolgray300)),
      onPressed: onPressed,
      child: SpacedRow(
        horizontalSpace: 4,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (leftIcon != null)
            Icon(leftIcon, size: 16, color: ThemeColors.coolgray600),
          if (leftIcon != null) const SizedBox(width: 4),
          SizedText(
              text: text,
              textStyle: ThemeTextSemiBold.sm
                  .copyWith(color: ThemeColors.coolgray600)),
          if (rightIcon != null) const SizedBox(width: 4),
          if (rightIcon != null)
            Icon(rightIcon, size: 16, color: ThemeColors.coolgray600),
        ],
      ),
    );
  }
}

class CWButtonGhostXL extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final IconData? leftIcon;
  final IconData? rightIcon;
  const CWButtonGhostXL(
      {required this.text,
      required this.onPressed,
      this.rightIcon,
      this.leftIcon,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          primary: ThemeColors.white,
          elevation: 1,
          shadowColor: ThemeColors.coolgray300,
          minimumSize: const Size(126, 52),
          side: const BorderSide(color: ThemeColors.coolgray300)),
      onPressed: onPressed,
      child: SpacedRow(
        horizontalSpace: 4,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          if (leftIcon != null)
            Icon(leftIcon, size: 20, color: ThemeColors.coolgray600),
          if (leftIcon != null) const SizedBox(width: 6),
          SizedText(
              text: text,
              textStyle: ThemeTextSemiBold.sm
                  .copyWith(color: ThemeColors.coolgray600)),
          if (rightIcon != null) const SizedBox(width: 6),
          if (rightIcon != null)
            Icon(rightIcon, size: 20, color: ThemeColors.coolgray600),
        ],
      ),
    );
  }
}
