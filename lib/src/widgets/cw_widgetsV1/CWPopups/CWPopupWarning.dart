import '../CWButtons/CWButtonGhost.dart';
import '../CWButtons/CWButtonPrimary.dart';
import 'package:creatego/creatego_theme.dart';

class CWPopupWarning extends StatelessWidget {
  final Widget textWidget;
  final String btnText;
  final Color? btnBgColor;
  final VoidCallback onPressed;
  final IconData? icon;
  final bool? showIconBorder;

  const CWPopupWarning({
    required this.textWidget,
    required this.btnText,
    required this.onPressed,
    this.btnBgColor,
    this.icon,
    this.showIconBorder = true,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      height: 350,
      color: Colors.transparent,
      child: Stack(children: [
        Positioned(
          top: 50,
          child: Container(
            width: 500,
            padding:
                const EdgeInsets.only(left: 24, right: 24, bottom: 20, top: 40),
            decoration: BoxDecoration(
                color: ThemeColors.white,
                borderRadius: BorderRadius.circular(24)),
            child: Column(
              children: [
                SpacedRow(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      textWidget,
                      InkWell(
                          child: const Icon(Icons.clear,
                              size: 32, color: ThemeColors.coolgray500),
                          onTap: () {
                            Navigator.of(context).pop();
                          })
                    ]),
                const SizedBox(height: 40),
                SpacedRow(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
                  horizontalSpace: 32,
                  children: [
                    CWButtonPrimaryL(
                      text: btnText,
                      bgColor: btnBgColor,
                      onPressed: onPressed,
                    ),
                    CWButtonGhostL(
                      text: "Cancel",
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 10,
          right: (500 / 2) - 35,
          child: Container(
            width: 80,
            decoration: BoxDecoration(
                color: ThemeColors.white,
                border: Border.all(
                  color: showIconBorder!
                      ? ThemeColors.red500
                      : ThemeColors.transparent,
                  width: showIconBorder! ? 5 : 0,
                ),
                borderRadius: BorderRadius.circular(99)),
            alignment: Alignment.center,
            child: Icon(
              icon ?? Icons.clear,
              color: ThemeColors.red500,
              size: showIconBorder! ? 70 : 80,
            ),
          ),
        ),
      ]),
    );
  }
}

class CWPopupSuccess extends StatelessWidget {
  final IconData? icon;
  final bool? showIconBorder;
  final String? successText;

  const CWPopupSuccess({
    this.icon,
    this.showIconBorder = true,
    this.successText,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      height: 250,
      color: Colors.transparent,
      child: Stack(children: [
        Positioned(
          top: 50,
          child: Container(
            width: 500,
            padding:
                const EdgeInsets.only(left: 24, right: 24, bottom: 24, top: 40),
            decoration: BoxDecoration(
                color: ThemeColors.white,
                borderRadius: BorderRadius.circular(24)),
            child: SizedText(
              width: 420,
              maxLines: 3,
              textAlign: TextAlign.center,
              text: successText ?? "Success",
              overflow: TextOverflow.ellipsis,
              textStyle: ThemeTextSemiBold.xl3
                  .copyWith(color: ThemeColors.coolgray700),
            ),
          ),
        ),
        Positioned(
          top: 10,
          right: (500 / 2) - 35,
          child: Container(
            width: 80,
            decoration: BoxDecoration(
                color: ThemeColors.white,
                border: Border.all(
                  color: showIconBorder!
                      ? ThemeColors.green500
                      : ThemeColors.transparent,
                  width: showIconBorder! ? 5 : 0,
                ),
                borderRadius: BorderRadius.circular(99)),
            alignment: Alignment.center,
            child: Icon(
              icon ?? Icons.check_rounded,
              color: ThemeColors.green500,
              size: showIconBorder! ? 70 : 80,
            ),
          ),
        ),
      ]),
    );
  }
}
