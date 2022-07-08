import '../../../../creatego_theme.dart';

class CWDatePickerPrimary extends StatelessWidget {
  final String? dateString;
  final VoidCallback onPressed;
  final Color? btnColor;

  /// * For now, handle the calender popup from pages.
  /// * pass the date to dateString.

  const CWDatePickerPrimary(
      {this.dateString,
      required this.onPressed,
      this.btnColor = ThemeColors.white,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          primary: btnColor,
          elevation: 1,
          padding: const EdgeInsets.all(0),
          shadowColor: ThemeColors.coolgray300,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
          // minimumSize: const Size(110, 40),
          side: const BorderSide(color: ThemeColors.coolgray300)),
      onPressed: onPressed,
      child: Container(
        width: 160,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        child: SpacedRow(
          horizontalSpace: 4,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            if (dateString == null)
              SizedText(
                  text: "Select a date",
                  textStyle: ThemeTextSemiBold.sm
                      .copyWith(color: ThemeColors.coolgray500)),
            if (dateString == null)
              const Icon(Icons.calendar_today_outlined,
                  size: 16, color: ThemeColors.coolgray500),
            if (dateString != null)
              SizedText(
                  text: dateString,
                  textStyle: ThemeTextSemiBold.sm
                      .copyWith(color: ThemeColors.coolgray900)),
            if (dateString != null)
              const Icon(Icons.calendar_today_outlined,
                  size: 16, color: ThemeColors.coolgray900),
          ],
        ),
      ),
    );
  }
}
