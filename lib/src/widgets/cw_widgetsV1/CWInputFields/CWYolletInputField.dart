import 'package:creatego/creatego_theme.dart';

/////////////////////////////////////////////
// L size
/////////////////////////////////////////////
class CWYolletInputFieldL extends StatelessWidget {
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final VoidCallback? onTap;
  final TextInputType? keyboardType;
  final bool? isDisabled;
  final String? hintText;

  const CWYolletInputFieldL(
      {this.controller,
      this.keyboardType,
      this.onTap,
      this.validator,
      this.isDisabled = false,
      this.hintText,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 656,
      child: Container(
        decoration: BoxDecoration(
          boxShadow: ThemeShadows.shadowSm,
          borderRadius: BorderRadius.circular(24),
        ),
        child: TextFormField(
          cursorColor: ThemeColors.coolgray900,
          style: ThemeTextRegular.xl3.copyWith(color: ThemeColors.coolgray900),
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle:
                ThemeTextRegular.xl3.copyWith(color: ThemeColors.coolgray500),
            contentPadding:
                const EdgeInsets.symmetric(vertical: 28, horizontal: 16),
            labelStyle: ThemeTextRegular.xl,
            filled: true,
            fillColor: ThemeColors.white,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(24),
              borderSide:
                  const BorderSide(color: ThemeColors.coolgray200, width: 1),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(24),
              borderSide:
                  const BorderSide(color: ThemeColors.coolgray200, width: 1),
            ),
            errorBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(24)),
                borderSide: BorderSide(color: ThemeColors.red200, width: 2)),
          ),
          validator: validator,
          controller: controller,
          onTap: onTap,
          keyboardType: keyboardType,
          readOnly: isDisabled! ? true : false,
        ),
      ),
    );
  }
}

class CWYolletInputFieldWithLabelL extends StatelessWidget {
  final String labelText;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final VoidCallback? onTap;
  final TextInputType? keyboardType;
  final bool? isDisabled;
  final bool? textStartFromRight;
  final String? hintText;

  const CWYolletInputFieldWithLabelL(
      {required this.labelText,
      this.controller,
      this.keyboardType,
      this.onTap,
      this.validator,
      this.isDisabled = false,
      this.textStartFromRight = false,
      this.hintText,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 656,
      child: SpacedColumn(
        verticalSpace: 16,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedText(
              textAlign: TextAlign.start,
              text: labelText,
              textStyle:
                  ThemeTextRegular.xl.copyWith(color: ThemeColors.coolgray400)),
          Container(
            decoration: BoxDecoration(
              boxShadow: ThemeShadows.shadowSm,
              borderRadius: BorderRadius.circular(24),
            ),
            child: TextFormField(
              textAlign:
                  textStartFromRight! ? TextAlign.right : TextAlign.start,
              cursorColor: ThemeColors.coolgray900,
              style:
                  ThemeTextRegular.xl3.copyWith(color: ThemeColors.coolgray900),
              decoration: InputDecoration(
                hintText: hintText,
                hintStyle: ThemeTextRegular.xl3
                    .copyWith(color: ThemeColors.coolgray500),
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 28, horizontal: 16),
                labelStyle: ThemeTextRegular.xl,
                filled: true,
                fillColor: ThemeColors.white,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(24),
                  borderSide: const BorderSide(
                      color: ThemeColors.coolgray200, width: 1),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(24),
                  borderSide: const BorderSide(
                      color: ThemeColors.coolgray200, width: 1),
                ),
                errorBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(24)),
                    borderSide:
                        BorderSide(color: ThemeColors.red200, width: 2)),
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

class CWYolletInputFieldWithSuffixL extends StatelessWidget {
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final VoidCallback? onTap;
  final TextInputType? keyboardType;
  final Widget suffix;
  final bool? isDisabled;
  final bool? textStartFromRight;
  final String? hintText;

  const CWYolletInputFieldWithSuffixL(
      {this.controller,
      this.keyboardType,
      this.onTap,
      this.validator,
      required this.suffix,
      this.isDisabled = false,
      this.textStartFromRight = false,
      this.hintText,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 656,
      child: Container(
        decoration: BoxDecoration(
          boxShadow: ThemeShadows.shadowSm,
          borderRadius: BorderRadius.circular(24),
        ),
        child: TextFormField(
          textAlign: textStartFromRight! ? TextAlign.right : TextAlign.start,
          cursorColor: ThemeColors.coolgray900,
          style: ThemeTextRegular.xl3.copyWith(color: ThemeColors.coolgray900),
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle:
                ThemeTextRegular.xl3.copyWith(color: ThemeColors.coolgray500),
            suffixIcon: Padding(
              padding: const EdgeInsets.only(right: 20),
              child: suffix,
            ),
            suffixIconConstraints: const BoxConstraints.tightFor(height: 44),
            contentPadding:
                const EdgeInsets.symmetric(vertical: 28, horizontal: 16),
            labelStyle: ThemeTextRegular.xl,
            filled: true,
            fillColor: ThemeColors.white,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(24),
              borderSide:
                  const BorderSide(color: ThemeColors.coolgray200, width: 1),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(24),
              borderSide:
                  const BorderSide(color: ThemeColors.coolgray200, width: 1),
            ),
            errorBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(24)),
                borderSide: BorderSide(color: ThemeColors.red200, width: 2)),
          ),
          validator: validator,
          controller: controller,
          onTap: onTap,
          keyboardType: keyboardType,
          readOnly: isDisabled! ? true : false,
        ),
      ),
    );
  }
}

class CWYolletInputFieldWithPrefixL extends StatelessWidget {
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final VoidCallback? onTap;
  final TextInputType? keyboardType;
  final Widget prefix;
  final bool? isDisabled;
  final bool? textStartFromRight;
  final String? hintText;

  const CWYolletInputFieldWithPrefixL(
      {this.controller,
      this.keyboardType,
      this.onTap,
      this.validator,
      required this.prefix,
      this.isDisabled = false,
      this.textStartFromRight = false,
      this.hintText,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 656,
      child: Container(
        decoration: BoxDecoration(
          boxShadow: ThemeShadows.shadowSm,
          borderRadius: BorderRadius.circular(24),
        ),
        child: TextFormField(
          textAlign: textStartFromRight! ? TextAlign.right : TextAlign.start,
          cursorColor: ThemeColors.coolgray900,
          style: ThemeTextRegular.xl3.copyWith(color: ThemeColors.coolgray900),
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle:
                ThemeTextRegular.xl3.copyWith(color: ThemeColors.coolgray500),
            prefixIcon: Padding(
              padding: const EdgeInsets.only(left: 20, right: 10),
              child: prefix,
            ),
            prefixIconConstraints: const BoxConstraints.tightFor(height: 44),
            contentPadding:
                const EdgeInsets.symmetric(vertical: 28, horizontal: 16),
            labelStyle: ThemeTextRegular.xl,
            filled: true,
            fillColor: ThemeColors.white,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(24),
              borderSide:
                  const BorderSide(color: ThemeColors.coolgray200, width: 1),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(24),
              borderSide:
                  const BorderSide(color: ThemeColors.coolgray200, width: 1),
            ),
            errorBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(24)),
                borderSide: BorderSide(color: ThemeColors.red200, width: 2)),
          ),
          validator: validator,
          controller: controller,
          onTap: onTap,
          keyboardType: keyboardType,
          readOnly: isDisabled! ? true : false,
        ),
      ),
    );
  }
}

/////////////////////////////////////////////
// M size
/////////////////////////////////////////////
class CWYolletInputFieldM extends StatelessWidget {
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final VoidCallback? onTap;
  final TextInputType? keyboardType;
  final bool? isDisabled;
  final String? hintText;

  const CWYolletInputFieldM(
      {this.controller,
      this.keyboardType,
      this.onTap,
      this.validator,
      this.isDisabled = false,
      this.hintText,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 526,
      child: Container(
        decoration: BoxDecoration(
          boxShadow: ThemeShadows.shadowSm,
          borderRadius: BorderRadius.circular(24),
        ),
        child: TextFormField(
          cursorColor: ThemeColors.coolgray900,
          style: ThemeTextRegular.xl3.copyWith(color: ThemeColors.coolgray900),
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle:
                ThemeTextRegular.xl3.copyWith(color: ThemeColors.coolgray500),
            contentPadding:
                const EdgeInsets.symmetric(vertical: 28, horizontal: 16),
            labelStyle: ThemeTextRegular.xl,
            filled: true,
            fillColor: ThemeColors.white,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(24),
              borderSide:
                  const BorderSide(color: ThemeColors.coolgray200, width: 1),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(24),
              borderSide:
                  const BorderSide(color: ThemeColors.coolgray200, width: 1),
            ),
            errorBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(24)),
                borderSide: BorderSide(color: ThemeColors.red200, width: 2)),
          ),
          validator: validator,
          controller: controller,
          onTap: onTap,
          keyboardType: keyboardType,
          readOnly: isDisabled! ? true : false,
        ),
      ),
    );
  }
}

class CWYolletInputFieldWithLabelM extends StatelessWidget {
  final String labelText;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final VoidCallback? onTap;
  final TextInputType? keyboardType;
  final bool? isDisabled;
  final bool? textStartFromRight;
  final String? hintText;

  const CWYolletInputFieldWithLabelM(
      {required this.labelText,
      this.controller,
      this.keyboardType,
      this.onTap,
      this.validator,
      this.isDisabled = false,
      this.textStartFromRight = false,
      this.hintText,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 526,
      child: SpacedColumn(
        verticalSpace: 16,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedText(
              textAlign: TextAlign.start,
              text: labelText,
              textStyle:
                  ThemeTextRegular.xl.copyWith(color: ThemeColors.coolgray400)),
          Container(
            decoration: BoxDecoration(
              boxShadow: ThemeShadows.shadowSm,
              borderRadius: BorderRadius.circular(24),
            ),
            child: TextFormField(
              textAlign:
                  textStartFromRight! ? TextAlign.right : TextAlign.start,
              cursorColor: ThemeColors.coolgray900,
              style:
                  ThemeTextRegular.xl3.copyWith(color: ThemeColors.coolgray900),
              decoration: InputDecoration(
                hintText: hintText,
                hintStyle: ThemeTextRegular.xl3
                    .copyWith(color: ThemeColors.coolgray500),
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 28, horizontal: 16),
                labelStyle: ThemeTextRegular.xl,
                filled: true,
                fillColor: ThemeColors.white,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(24),
                  borderSide: const BorderSide(
                      color: ThemeColors.coolgray200, width: 1),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(24),
                  borderSide: const BorderSide(
                      color: ThemeColors.coolgray200, width: 1),
                ),
                errorBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(24)),
                    borderSide:
                        BorderSide(color: ThemeColors.red200, width: 2)),
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

class CWYolletInputFieldWithSuffixM extends StatelessWidget {
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final VoidCallback? onTap;
  final TextInputType? keyboardType;
  final Widget suffix;
  final bool? isDisabled;
  final bool? textStartFromRight;
  final String? hintText;

  const CWYolletInputFieldWithSuffixM(
      {this.controller,
      this.keyboardType,
      this.onTap,
      this.validator,
      required this.suffix,
      this.isDisabled = false,
      this.textStartFromRight = false,
      this.hintText,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 526,
      child: Container(
        decoration: BoxDecoration(
          boxShadow: ThemeShadows.shadowSm,
          borderRadius: BorderRadius.circular(24),
        ),
        child: TextFormField(
          textAlign: textStartFromRight! ? TextAlign.right : TextAlign.start,
          cursorColor: ThemeColors.coolgray900,
          style: ThemeTextRegular.xl3.copyWith(color: ThemeColors.coolgray900),
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle:
                ThemeTextRegular.xl3.copyWith(color: ThemeColors.coolgray500),
            suffixIcon: Padding(
              padding: const EdgeInsets.only(right: 20),
              child: suffix,
            ),
            suffixIconConstraints: const BoxConstraints.tightFor(height: 44),
            contentPadding:
                const EdgeInsets.symmetric(vertical: 28, horizontal: 16),
            labelStyle: ThemeTextRegular.xl,
            filled: true,
            fillColor: ThemeColors.white,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(24),
              borderSide:
                  const BorderSide(color: ThemeColors.coolgray200, width: 1),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(24),
              borderSide:
                  const BorderSide(color: ThemeColors.coolgray200, width: 1),
            ),
            errorBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(24)),
                borderSide: BorderSide(color: ThemeColors.red200, width: 2)),
          ),
          validator: validator,
          controller: controller,
          onTap: onTap,
          keyboardType: keyboardType,
          readOnly: isDisabled! ? true : false,
        ),
      ),
    );
  }
}

class CWYolletInputFieldWithPrefixM extends StatelessWidget {
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final VoidCallback? onTap;
  final TextInputType? keyboardType;
  final Widget prefix;
  final bool? isDisabled;
  final bool? textStartFromRight;
  final String? hintText;

  const CWYolletInputFieldWithPrefixM(
      {this.controller,
      this.keyboardType,
      this.onTap,
      this.validator,
      required this.prefix,
      this.isDisabled = false,
      this.textStartFromRight = false,
      this.hintText,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 526,
      child: Container(
        decoration: BoxDecoration(
          boxShadow: ThemeShadows.shadowSm,
          borderRadius: BorderRadius.circular(24),
        ),
        child: TextFormField(
          textAlign: textStartFromRight! ? TextAlign.right : TextAlign.start,
          cursorColor: ThemeColors.coolgray900,
          style: ThemeTextRegular.xl3.copyWith(color: ThemeColors.coolgray900),
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle:
                ThemeTextRegular.xl3.copyWith(color: ThemeColors.coolgray500),
            prefixIcon: Padding(
              padding: const EdgeInsets.only(left: 20, right: 10),
              child: prefix,
            ),
            prefixIconConstraints: const BoxConstraints.tightFor(height: 44),
            contentPadding:
                const EdgeInsets.symmetric(vertical: 28, horizontal: 16),
            labelStyle: ThemeTextRegular.xl,
            filled: true,
            fillColor: ThemeColors.white,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(24),
              borderSide:
                  const BorderSide(color: ThemeColors.coolgray200, width: 1),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(24),
              borderSide:
                  const BorderSide(color: ThemeColors.coolgray200, width: 1),
            ),
            errorBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(24)),
                borderSide: BorderSide(color: ThemeColors.red200, width: 2)),
          ),
          validator: validator,
          controller: controller,
          onTap: onTap,
          keyboardType: keyboardType,
          readOnly: isDisabled! ? true : false,
        ),
      ),
    );
  }
}

/////////////////////////////////////////////
// S size
/////////////////////////////////////////////
class CWYolletInputFieldS extends StatelessWidget {
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final VoidCallback? onTap;
  final TextInputType? keyboardType;
  final bool? isDisabled;
  final String? hintText;

  const CWYolletInputFieldS(
      {this.controller,
      this.keyboardType,
      this.onTap,
      this.validator,
      this.isDisabled = false,
      this.hintText,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 244,
      child: Container(
        decoration: BoxDecoration(
          boxShadow: ThemeShadows.shadowSm,
          borderRadius: BorderRadius.circular(24),
        ),
        child: TextFormField(
          cursorColor: ThemeColors.coolgray900,
          style: ThemeTextRegular.xl3.copyWith(color: ThemeColors.coolgray900),
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle:
                ThemeTextRegular.xl3.copyWith(color: ThemeColors.coolgray500),
            contentPadding:
                const EdgeInsets.symmetric(vertical: 28, horizontal: 16),
            labelStyle: ThemeTextRegular.xl,
            filled: true,
            fillColor: ThemeColors.white,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(24),
              borderSide:
                  const BorderSide(color: ThemeColors.coolgray200, width: 1),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(24),
              borderSide:
                  const BorderSide(color: ThemeColors.coolgray200, width: 1),
            ),
            errorBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(24)),
                borderSide: BorderSide(color: ThemeColors.red200, width: 2)),
          ),
          validator: validator,
          controller: controller,
          onTap: onTap,
          keyboardType: keyboardType,
          readOnly: isDisabled! ? true : false,
        ),
      ),
    );
  }
}

class CWYolletInputFieldWithLabelS extends StatelessWidget {
  final String labelText;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final VoidCallback? onTap;
  final TextInputType? keyboardType;
  final bool? isDisabled;
  final bool? textStartFromRight;
  final String? hintText;

  const CWYolletInputFieldWithLabelS(
      {required this.labelText,
      this.controller,
      this.keyboardType,
      this.onTap,
      this.validator,
      this.isDisabled = false,
      this.textStartFromRight = false,
      this.hintText,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 244,
      child: SpacedColumn(
        verticalSpace: 16,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedText(
              textAlign: TextAlign.start,
              text: labelText,
              textStyle:
                  ThemeTextRegular.xl.copyWith(color: ThemeColors.coolgray400)),
          Container(
            decoration: BoxDecoration(
              boxShadow: ThemeShadows.shadowSm,
              borderRadius: BorderRadius.circular(24),
            ),
            child: TextFormField(
              textAlign:
                  textStartFromRight! ? TextAlign.right : TextAlign.start,
              cursorColor: ThemeColors.coolgray900,
              style:
                  ThemeTextRegular.xl3.copyWith(color: ThemeColors.coolgray900),
              decoration: InputDecoration(
                hintText: hintText,
                hintStyle: ThemeTextRegular.xl3
                    .copyWith(color: ThemeColors.coolgray500),
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 28, horizontal: 16),
                labelStyle: ThemeTextRegular.xl,
                filled: true,
                fillColor: ThemeColors.white,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(24),
                  borderSide: const BorderSide(
                      color: ThemeColors.coolgray200, width: 1),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(24),
                  borderSide: const BorderSide(
                      color: ThemeColors.coolgray200, width: 1),
                ),
                errorBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(24)),
                    borderSide:
                        BorderSide(color: ThemeColors.red200, width: 2)),
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

class CWYolletInputFieldWithSuffixS extends StatelessWidget {
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final VoidCallback? onTap;
  final TextInputType? keyboardType;
  final Widget suffix;
  final bool? isDisabled;
  final bool? textStartFromRight;
  final String? hintText;

  const CWYolletInputFieldWithSuffixS(
      {this.controller,
      this.keyboardType,
      this.onTap,
      this.validator,
      required this.suffix,
      this.isDisabled = false,
      this.textStartFromRight = false,
      this.hintText,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 244,
      child: Container(
        decoration: BoxDecoration(
          boxShadow: ThemeShadows.shadowSm,
          borderRadius: BorderRadius.circular(24),
        ),
        child: TextFormField(
          textAlign: textStartFromRight! ? TextAlign.right : TextAlign.start,
          cursorColor: ThemeColors.coolgray900,
          style: ThemeTextRegular.xl3.copyWith(color: ThemeColors.coolgray900),
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle:
                ThemeTextRegular.xl3.copyWith(color: ThemeColors.coolgray500),
            suffixIcon: Padding(
              padding: const EdgeInsets.only(right: 20),
              child: suffix,
            ),
            suffixIconConstraints: const BoxConstraints.tightFor(height: 44),
            contentPadding:
                const EdgeInsets.symmetric(vertical: 28, horizontal: 16),
            labelStyle: ThemeTextRegular.xl,
            filled: true,
            fillColor: ThemeColors.white,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(24),
              borderSide:
                  const BorderSide(color: ThemeColors.coolgray200, width: 1),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(24),
              borderSide:
                  const BorderSide(color: ThemeColors.coolgray200, width: 1),
            ),
            errorBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(24)),
                borderSide: BorderSide(color: ThemeColors.red200, width: 2)),
          ),
          validator: validator,
          controller: controller,
          onTap: onTap,
          keyboardType: keyboardType,
          readOnly: isDisabled! ? true : false,
        ),
      ),
    );
  }
}

class CWYolletInputFieldWithPrefixS extends StatelessWidget {
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final VoidCallback? onTap;
  final TextInputType? keyboardType;
  final Widget prefix;
  final bool? isDisabled;
  final bool? textStartFromRight;
  final String? hintText;

  const CWYolletInputFieldWithPrefixS(
      {this.controller,
      this.keyboardType,
      this.onTap,
      this.validator,
      required this.prefix,
      this.isDisabled = false,
      this.textStartFromRight = false,
      this.hintText,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 244,
      child: Container(
        decoration: BoxDecoration(
          boxShadow: ThemeShadows.shadowSm,
          borderRadius: BorderRadius.circular(24),
        ),
        child: TextFormField(
          textAlign: textStartFromRight! ? TextAlign.right : TextAlign.start,
          cursorColor: ThemeColors.coolgray900,
          style: ThemeTextRegular.xl3.copyWith(color: ThemeColors.coolgray900),
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle:
                ThemeTextRegular.xl3.copyWith(color: ThemeColors.coolgray500),
            prefixIcon: Padding(
              padding: const EdgeInsets.only(left: 20, right: 10),
              child: prefix,
            ),
            prefixIconConstraints: const BoxConstraints.tightFor(height: 44),
            contentPadding:
                const EdgeInsets.symmetric(vertical: 28, horizontal: 16),
            labelStyle: ThemeTextRegular.xl,
            filled: true,
            fillColor: ThemeColors.white,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(24),
              borderSide:
                  const BorderSide(color: ThemeColors.coolgray200, width: 1),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(24),
              borderSide:
                  const BorderSide(color: ThemeColors.coolgray200, width: 1),
            ),
            errorBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(24)),
                borderSide: BorderSide(color: ThemeColors.red200, width: 2)),
          ),
          validator: validator,
          controller: controller,
          onTap: onTap,
          keyboardType: keyboardType,
          readOnly: isDisabled! ? true : false,
        ),
      ),
    );
  }
}
