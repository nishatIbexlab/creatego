import 'package:creatego/creatego_theme.dart';
import '../CWDropdowns/CWDropdownPrimary.dart';

class CWInputFieldWithLabel extends StatelessWidget {
  final String labelText;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final VoidCallback? onTap;
  final TextInputType? keyboardType;
  final bool? isDisabled;
  final bool? textStartFromRight;
  final String? hintText;
  final Widget? suffix;
  final Widget? prefix;
  final double? inputFieldWidth;
  final bool? obscureText;

  /// * Better to use [CWInputFieldWithValidBorder]
  /// with custom error handling from the page.

  const CWInputFieldWithLabel(
      {required this.labelText,
      this.controller,
      this.keyboardType,
      this.onTap,
      this.validator,
      this.isDisabled = false,
      this.textStartFromRight = false,
      this.hintText,
      this.suffix,
      this.prefix,
      this.inputFieldWidth = 273,
      this.obscureText = false,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: inputFieldWidth,
      child: SpacedColumn(
        verticalSpace: 4,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedText(
              textAlign: TextAlign.start,
              text: labelText,
              textStyle: ThemeTextSemiBold.base
                  .copyWith(color: ThemeColors.coolgray600)),
          Container(
            height: 40,
            decoration: BoxDecoration(
                // boxShadow: ThemeShadows.shadowSm,
                borderRadius: BorderRadius.circular(6),
                boxShadow: ThemeShadows.shadowSm),
            child: TextFormField(
              textAlign:
                  textStartFromRight! ? TextAlign.right : TextAlign.start,
              cursorColor: ThemeColors.coolgray900,
              style: ThemeTextRegular.base
                  .copyWith(color: ThemeColors.coolgray900),
              obscureText: obscureText!,
              decoration: InputDecoration(
                errorStyle: const TextStyle(
                    height: .01, fontSize: 0.1, color: ThemeColors.transparent),
                hintText: hintText,
                hintStyle: ThemeTextRegular.base
                    .copyWith(color: ThemeColors.coolgray500),
                suffixIcon: Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: suffix,
                ),
                suffixIconConstraints:
                    const BoxConstraints.tightFor(height: 20),
                prefixIcon: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: prefix,
                ),
                prefixIconConstraints:
                    const BoxConstraints.tightFor(height: 10),
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                labelStyle: ThemeTextRegular.xl,
                filled: true,
                fillColor: ThemeColors.white,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(6),
                  borderSide: const BorderSide(
                      color: ThemeColors.coolgray200, width: 1),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(6),
                  borderSide:
                      const BorderSide(color: ThemeColors.indigo600, width: 1),
                ),
                focusedErrorBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(6)),
                    borderSide:
                        BorderSide(color: ThemeColors.red500, width: 2)),
                errorBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(6)),
                    borderSide:
                        BorderSide(color: ThemeColors.red500, width: 2)),
              ),
              validator: validator,
              controller: controller,
              onTap: onTap,
              keyboardType: keyboardType,
              readOnly: isDisabled! ? true : false,
            ),
          ),
        ],
      ),
    );
  }
}

class CWInputField extends StatelessWidget {
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final VoidCallback? onTap;
  final TextInputType? keyboardType;
  final bool? isDisabled;
  final bool? textStartFromRight;
  final String? hintText;
  final Widget? suffix;
  final Widget? prefix;
  final double? inputFieldWidth;
  final bool? obscureText;

  /// * Better to use [CWInputFieldWithValidBorder]
  /// with custom error handling from the page.
  ///
  const CWInputField(
      {this.controller,
      this.keyboardType,
      this.onTap,
      this.validator,
      this.isDisabled = false,
      this.textStartFromRight = false,
      this.hintText,
      this.suffix,
      this.prefix,
      this.inputFieldWidth = 273,
      this.obscureText = false,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: inputFieldWidth,
      height: 40,
      decoration: BoxDecoration(
        boxShadow: ThemeShadows.shadowSm,
        borderRadius: BorderRadius.circular(6),
      ),
      child: TextFormField(
        textAlign: textStartFromRight! ? TextAlign.right : TextAlign.start,
        cursorColor: ThemeColors.coolgray900,
        style: ThemeTextRegular.base.copyWith(color: ThemeColors.coolgray900),
        obscureText: obscureText!,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle:
              ThemeTextRegular.base.copyWith(color: ThemeColors.coolgray500),
          suffixIcon: Padding(
            padding: const EdgeInsets.only(right: 10),
            child: suffix,
          ),
          errorStyle: const TextStyle(
              height: .01, fontSize: 0.1, color: ThemeColors.transparent),
          errorMaxLines: 2,
          suffixIconConstraints: const BoxConstraints.tightFor(height: 20),
          prefixIcon: Padding(
            padding: const EdgeInsets.only(left: 10, right: 5),
            child: prefix,
          ),
          prefixIconConstraints: const BoxConstraints.tightFor(height: 20),
          contentPadding:
              const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
          labelStyle: ThemeTextRegular.xl,
          filled: true,
          fillColor: ThemeColors.white,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(6),
            borderSide:
                const BorderSide(color: ThemeColors.coolgray200, width: 1),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(6),
            borderSide:
                const BorderSide(color: ThemeColors.indigo600, width: 1),
          ),
          focusedErrorBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(6)),
              borderSide: BorderSide(color: ThemeColors.red500, width: 2)),
          errorBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(6)),
              borderSide: BorderSide(color: ThemeColors.red500, width: 2)),
        ),
        validator: validator,
        controller: controller,
        onTap: onTap,
        keyboardType: keyboardType,
        readOnly: isDisabled! ? true : false,
      ),
    );
  }
}

class CWInputFieldWithDropdownS extends StatelessWidget {
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final VoidCallback? onTap;
  final TextInputType? keyboardType;
  final bool? isDisabled;
  final bool? textStartFromRight;
  final String? hintText;
  final ValueChanged? onDropdownChanged;
  final List<MenuItem> dropdownItems;
  final MenuItem? dropdownValue;
  final double? inputFieldWidth;
  final bool? isDropdownRight;
  final bool? isDropdownOptionsIconRight;
  final double? dropdownMaxHeight;

  /// * Better to use [CWInputFieldWithValidBorder]
  /// with custom error handling from the page.

  const CWInputFieldWithDropdownS(
      {this.controller,
      this.keyboardType,
      this.onTap,
      this.validator,
      this.isDisabled = false,
      this.textStartFromRight = false,
      this.hintText,
      this.onDropdownChanged,
      required this.dropdownItems,
      this.dropdownValue,
      this.inputFieldWidth = 173,
      this.isDropdownRight = true,
      this.isDropdownOptionsIconRight = false,
      this.dropdownMaxHeight,
      Key? key})
      : super(key: key);

  final _borderRadiusLeft = const BorderRadius.only(
      topLeft: Radius.circular(6), bottomLeft: Radius.circular(6));

  final _borderRadiusRight = const BorderRadius.only(
      topRight: Radius.circular(6), bottomRight: Radius.circular(6));

  @override
  Widget build(BuildContext context) {
    final _borderRadius =
        isDropdownRight! ? _borderRadiusLeft : _borderRadiusRight;

    return Container(
      width: inputFieldWidth!,
      height: 40,
      decoration: BoxDecoration(
        border: Border.all(width: 1, color: ThemeColors.coolgray200),
        borderRadius: BorderRadius.circular(6),
        color: ThemeColors.white,
        boxShadow: ThemeShadows.shadowSm,
      ),
      child: Row(
        children: [
          if (!isDropdownRight!)
            CWInputFieldDropdown(
              items: dropdownItems,
              onChanged: onDropdownChanged,
              value: dropdownValue,
              isDropdownRight: isDropdownRight!,
              isDropdownOptionsIconRight: isDropdownOptionsIconRight,
              dropdownMaxHeight: dropdownMaxHeight,
            ),
          SizedBox(
            width: inputFieldWidth! - 72,
            child: TextFormField(
              textAlign:
                  textStartFromRight! ? TextAlign.right : TextAlign.start,
              cursorColor: ThemeColors.coolgray900,
              style: ThemeTextRegular.base
                  .copyWith(color: ThemeColors.coolgray900),
              decoration: InputDecoration(
                hintText: hintText,
                hintStyle: ThemeTextRegular.base
                    .copyWith(color: ThemeColors.coolgray500),
                errorStyle: const TextStyle(
                    height: .01, fontSize: 0.1, color: ThemeColors.transparent),
                errorMaxLines: 2,
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                labelStyle: ThemeTextRegular.xl,
                filled: true,
                fillColor: ThemeColors.white,
                enabledBorder: OutlineInputBorder(
                  borderRadius: _borderRadius,
                  borderSide: const BorderSide(
                      color: ThemeColors.transparent, width: 1),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: _borderRadius,
                  borderSide: const BorderSide(
                      color: ThemeColors.transparent, width: 0),
                ),
                focusedErrorBorder: OutlineInputBorder(
                    borderRadius: _borderRadius,
                    borderSide:
                        const BorderSide(color: ThemeColors.red500, width: 2)),
                errorBorder: OutlineInputBorder(
                    borderRadius: _borderRadius,
                    borderSide:
                        const BorderSide(color: ThemeColors.red500, width: 2)),
              ),
              validator: validator,
              controller: controller,
              onTap: onTap,
              keyboardType: keyboardType,
              readOnly: isDisabled! ? true : false,
            ),
          ),
          if (isDropdownRight!)
            CWInputFieldDropdown(
                items: dropdownItems,
                onChanged: onDropdownChanged,
                value: dropdownValue,
                isDropdownRight: isDropdownRight!,
                isDropdownOptionsIconRight: isDropdownOptionsIconRight,
                dropdownMaxHeight: dropdownMaxHeight),
        ],
      ),
    );
  }
}

class CWInputFieldWithDropdownM extends StatelessWidget {
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final VoidCallback? onTap;
  final TextInputType? keyboardType;
  final bool? isDisabled;
  final bool? textStartFromRight;
  final String? hintText;
  final ValueChanged? onDropdownChanged;
  final List<MenuItem> dropdownItems;
  final MenuItem? dropdownValue;
  final double? inputFieldWidth;
  final bool? isDropdownRight;
  final bool? isDropdownOptionsIconRight;
  final double? dropdownMaxHeight;
  final bool? isTextCenter;

  /// * Better to use [CWInputFieldWithValidBorder]
  /// with custom error handling from the page.

  const CWInputFieldWithDropdownM(
      {this.controller,
      this.keyboardType,
      this.isTextCenter,
      this.onTap,
      this.validator,
      this.isDisabled = false,
      this.textStartFromRight = false,
      this.hintText,
      this.onDropdownChanged,
      required this.dropdownItems,
      this.dropdownValue,
      this.isDropdownRight = false,
      this.inputFieldWidth = 303,
      this.isDropdownOptionsIconRight = true,
      this.dropdownMaxHeight,
      Key? key})
      : super(key: key);

  final _borderRadiusLeft = const BorderRadius.only(
      topLeft: Radius.circular(6), bottomLeft: Radius.circular(6));

  final _borderRadiusRight = const BorderRadius.only(
      topRight: Radius.circular(6), bottomRight: Radius.circular(6));

  @override
  Widget build(BuildContext context) {
    final _borderRadius =
        isDropdownRight! ? _borderRadiusLeft : _borderRadiusRight;

    return Container(
      width: inputFieldWidth!,
      height: 40,
      decoration: BoxDecoration(
        border: Border.all(width: 1, color: ThemeColors.coolgray200),
        borderRadius: BorderRadius.circular(6),
        color: ThemeColors.white,
        boxShadow: ThemeShadows.shadowSm,
      ),
      child: Row(
        children: [
          if (!isDropdownRight!)
            CWInputFieldDropdown2(
              items: dropdownItems,
              onChanged: onDropdownChanged,
              value: dropdownValue,
              dropdownOptionsWidth: inputFieldWidth,
              isDropdownRight: isDropdownRight!,
              isDropdownOptionsIconRight: isDropdownOptionsIconRight,
              dropdownMaxHeight: dropdownMaxHeight,
            ),
          SizedBox(
            width: inputFieldWidth! - 42,
            child: TextFormField(
              textAlign: _textAlign(),
              cursorColor: ThemeColors.coolgray900,
              style: ThemeTextRegular.base
                  .copyWith(color: ThemeColors.coolgray900),
              decoration: InputDecoration(
                hintText: hintText,
                hintStyle: ThemeTextRegular.base
                    .copyWith(color: ThemeColors.coolgray500),
                errorStyle: const TextStyle(
                    height: .01, fontSize: 0.1, color: ThemeColors.transparent),
                errorMaxLines: 2,
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                labelStyle: ThemeTextRegular.xl,
                filled: true,
                fillColor: ThemeColors.white,
                enabledBorder: OutlineInputBorder(
                  borderRadius: _borderRadius,
                  borderSide: const BorderSide(
                      color: ThemeColors.transparent, width: 0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: _borderRadius,
                  borderSide: const BorderSide(
                      color: ThemeColors.transparent, width: 0),
                ),
                focusedErrorBorder: OutlineInputBorder(
                    borderRadius: _borderRadius,
                    borderSide:
                        const BorderSide(color: ThemeColors.red500, width: 2)),
                errorBorder: OutlineInputBorder(
                    borderRadius: _borderRadius,
                    borderSide:
                        const BorderSide(color: ThemeColors.red500, width: 2)),
              ),
              validator: validator,
              controller: controller,
              onTap: onTap,
              keyboardType: keyboardType,
              readOnly: isDisabled!,
            ),
          ),
          if (isDropdownRight!)
            CWInputFieldDropdown2(
              items: dropdownItems,
              onChanged: onDropdownChanged,
              value: dropdownValue,
              dropdownOptionsWidth: inputFieldWidth,
              isDropdownRight: isDropdownRight!,
              isDropdownOptionsIconRight: isDropdownOptionsIconRight,
              dropdownMaxHeight: dropdownMaxHeight,
            ),
        ],
      ),
    );
  }

  _textAlign() {
    if (isTextCenter != null) {
      return isTextCenter! ? TextAlign.center : TextAlign.start;
    }
    return textStartFromRight! ? TextAlign.right : TextAlign.start;
  }
}

class CWInputFieldWithValidText extends StatelessWidget {
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final VoidCallback? onTap;
  final TextInputType? keyboardType;
  final bool? isDisabled;
  final bool? textStartFromRight;
  final String? hintText;
  final Widget? suffix;
  final Widget? prefix;
  final double? inputFieldWidth;
  final bool? obscureText;

  /// * For the Validation Error Text,
  /// We need extra space to show the error text.
  /// * So, the input field height is 40 and
  /// the error text space is 20.
  /// * Be Careful about vertical space
  /// * Better to use [CWInputFieldWithValidBorder]
  /// with custom error handling from the page.

  const CWInputFieldWithValidText(
      {this.controller,
      this.keyboardType,
      this.onTap,
      this.validator,
      this.isDisabled = false,
      this.textStartFromRight = false,
      this.hintText,
      this.suffix,
      this.prefix,
      this.inputFieldWidth = 273,
      this.obscureText = false,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: inputFieldWidth,
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
      ),
      child: TextFormField(
        textAlign: textStartFromRight! ? TextAlign.right : TextAlign.start,
        cursorColor: ThemeColors.coolgray900,
        style: ThemeTextRegular.base.copyWith(color: ThemeColors.coolgray900),
        obscureText: obscureText!,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle:
              ThemeTextRegular.base.copyWith(color: ThemeColors.coolgray500),
          suffixIcon: Padding(
            padding: const EdgeInsets.only(right: 10),
            child: suffix,
          ),
          errorStyle: const TextStyle(
              fontSize: 10,
              color: ThemeColors.red500,
              height: 1,
              overflow: TextOverflow.fade),
          errorMaxLines: 2,
          suffixIconConstraints: const BoxConstraints.tightFor(height: 20),
          prefixIcon: Padding(
            padding: const EdgeInsets.only(left: 10, right: 5),
            child: prefix,
          ),
          prefixIconConstraints: const BoxConstraints.tightFor(height: 20),
          contentPadding:
              const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
          labelStyle: ThemeTextRegular.xl,
          filled: true,
          fillColor: ThemeColors.white,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(6),
            borderSide:
                const BorderSide(color: ThemeColors.coolgray200, width: 1),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(6),
            borderSide:
                const BorderSide(color: ThemeColors.indigo600, width: 1),
          ),
          focusedErrorBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(6)),
              borderSide: BorderSide(color: ThemeColors.red500, width: 2)),
          errorBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(6)),
              borderSide: BorderSide(color: ThemeColors.red500, width: 2)),
        ),
        validator: validator,
        controller: controller,
        onTap: onTap,
        keyboardType: keyboardType,
        readOnly: isDisabled! ? true : false,
      ),
    );
  }
}

class CWInputFieldWithValidBorder extends StatelessWidget {
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final VoidCallback? onTap;
  final TextInputType? keyboardType;
  final bool? isDisabled;
  final bool? textStartFromRight;
  final String? hintText;
  final Widget? suffix;
  final Widget? prefix;
  final double? inputFieldWidth;
  final bool? obscureText;

  /// * For the Validation Error Border only,
  /// The Text size is .01 and transparent.
  /// * So, the error text is not shown.
  /// * Better to use it with with custom error
  ///  handling from the page.

  const CWInputFieldWithValidBorder(
      {this.controller,
      this.keyboardType,
      this.onTap,
      this.validator,
      this.isDisabled = false,
      this.textStartFromRight = false,
      this.hintText,
      this.suffix,
      this.prefix,
      this.inputFieldWidth = 273,
      this.obscureText = false,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: inputFieldWidth,
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
      ),
      child: TextFormField(
        textAlign: textStartFromRight! ? TextAlign.right : TextAlign.start,
        cursorColor: ThemeColors.coolgray900,
        style: ThemeTextRegular.base.copyWith(color: ThemeColors.coolgray900),
        obscureText: obscureText!,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle:
              ThemeTextRegular.base.copyWith(color: ThemeColors.coolgray500),
          suffixIcon: Padding(
            padding: const EdgeInsets.only(right: 10),
            child: suffix,
          ),
          errorStyle: const TextStyle(
              fontSize: .01,
              color: ThemeColors.transparent,
              height: .01,
              overflow: TextOverflow.fade),
          errorMaxLines: 1,
          suffixIconConstraints: const BoxConstraints.tightFor(height: 20),
          prefixIcon: Padding(
            padding: const EdgeInsets.only(left: 10, right: 5),
            child: prefix,
          ),
          prefixIconConstraints: const BoxConstraints.tightFor(height: 20),
          contentPadding:
              const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
          labelStyle: ThemeTextRegular.xl,
          filled: true,
          fillColor: ThemeColors.white,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(6),
            borderSide:
                const BorderSide(color: ThemeColors.coolgray200, width: 1),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(6),
            borderSide:
                const BorderSide(color: ThemeColors.indigo600, width: 1),
          ),
          focusedErrorBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(6)),
              borderSide: BorderSide(color: ThemeColors.red500, width: 2)),
          errorBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(6)),
              borderSide: BorderSide(color: ThemeColors.red500, width: 2)),
        ),
        validator: validator,
        controller: controller,
        onTap: onTap,
        keyboardType: keyboardType,
        readOnly: isDisabled! ? true : false,
      ),
    );
  }
}
