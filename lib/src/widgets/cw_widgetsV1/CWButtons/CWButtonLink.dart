import 'package:creatego/creatego_theme.dart';

class CWButtonLinkXS extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final IconData? leftIcon;
  final IconData? rightIcon;
  const CWButtonLinkXS(
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
          elevation: MaterialStateProperty.all(0),
          overlayColor: MaterialStateProperty.all(ThemeColors.orange50),
          minimumSize: MaterialStateProperty.all(const Size(94, 30)),
          backgroundColor: MaterialStateProperty.all(ThemeColors.transparent)),
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

class CWButtonLinkS extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final IconData? leftIcon;
  final IconData? rightIcon;
  const CWButtonLinkS(
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
          elevation: MaterialStateProperty.all(0),
          overlayColor: MaterialStateProperty.all(ThemeColors.orange50),
          minimumSize: MaterialStateProperty.all(const Size(110, 36)),
          backgroundColor: MaterialStateProperty.all(ThemeColors.transparent)),
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

class CWButtonLinkM extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final IconData? leftIcon;
  final IconData? rightIcon;
  const CWButtonLinkM(
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
          elevation: MaterialStateProperty.all(0),
          overlayColor: MaterialStateProperty.all(ThemeColors.orange50),
          minimumSize: MaterialStateProperty.all(const Size(110, 40)),
          backgroundColor: MaterialStateProperty.all(ThemeColors.transparent)),
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

class CWButtonLinkL extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final IconData? leftIcon;
  final IconData? rightIcon;
  const CWButtonLinkL(
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
          elevation: MaterialStateProperty.all(0),
          overlayColor: MaterialStateProperty.all(ThemeColors.orange50),
          minimumSize: MaterialStateProperty.all(const Size(110, 44)),
          backgroundColor: MaterialStateProperty.all(ThemeColors.transparent)),
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

class CWButtonLinkXL extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final IconData? leftIcon;
  final IconData? rightIcon;
  const CWButtonLinkXL(
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
          elevation: MaterialStateProperty.all(0),
          overlayColor: MaterialStateProperty.all(ThemeColors.orange50),
          minimumSize: MaterialStateProperty.all(const Size(126, 52)),
          backgroundColor: MaterialStateProperty.all(ThemeColors.transparent)),
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
