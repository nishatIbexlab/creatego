import 'package:creatego/creatego_theme.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

class InputFieldYolletappDropdown3 extends StatefulWidget {
  List listValues;
  dynamic value;
  final ValueChanged onChanged;
  final DropdownSize dropdownSize;
  final String hint;
  final bool addDivider;
  final VoidCallback? onLastItemExistFunction;
  final String? onLastItemExistMsg;
  final double borderRadius;
  final bool isOrange;
  final double buttonHorizontalPadding;
  final double buttonVerticalPadding;
  final bool disabled;
  final double? width;

  InputFieldYolletappDropdown3({
    Key? key,
    required this.listValues,
    required this.onChanged,
    this.value,
    this.onLastItemExistFunction,
    this.dropdownSize = DropdownSize.SIZE1,
    this.hint = 'select_item',
    this.addDivider = false,
    this.onLastItemExistMsg,
    this.borderRadius = 24,
    this.isOrange = false,
    this.width,
    this.buttonHorizontalPadding = 24,
    this.buttonVerticalPadding = 14,
    this.disabled = false,
  }) : super(key: key);

  @override
  State<InputFieldYolletappDropdown3> createState() =>
      _InputFieldYolletappDropdown3State();
}

class _InputFieldYolletappDropdown3State
    extends State<InputFieldYolletappDropdown3> {
  bool activeDropDown = true;
  FocusNode focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    focusNode = FocusNode(debugLabel: 'Button');
    focusNode.addListener(_handleFocusChange);
  }

  void _handleFocusChange() {
    if (focusNode.hasFocus != activeDropDown) {
      setState(() {
        activeDropDown = focusNode.hasFocus;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: Container(
        decoration: BoxDecoration(
          color: ThemeColors.white,
          border: _borderController(),
          borderRadius: BorderRadius.circular(widget.borderRadius),
          boxShadow: _shadowController(),
        ),
        child: IgnorePointer(
          ignoring: widget.disabled,
          child: DropdownButton2(
              focusNode: focusNode,
              isExpanded: true,
              hint: SizedText(
                  text: widget.hint, textStyle: _textSizeController()),
              icon: RotatedBox(
                quarterTurns: !activeDropDown ? 2 : 0,
                child: HeroIcon(
                  HeroIcons.chevronDown,
                  color: widget.isOrange
                      ? ThemeColors.orange500
                      : _colorController(),
                  solid: true,
                  size: widget.dropdownSize == DropdownSize.SIZE1
                      ? 42
                      : widget.dropdownSize == DropdownSize.SIZE5
                          ? 43
                          : 32,
                ),
              ),
              items: _addDividersAfterItems(),
              value: widget.value,
              onChanged: widget.onChanged,
              buttonHeight: _buttonHeightController(),
              buttonWidth: _buttonWidthController(),
              itemHeight: 50,
              dropdownWidth: _dropDownWidthController(),
              dropdownDecoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
              ),
              buttonPadding: EdgeInsets.symmetric(
                  vertical: widget.buttonVerticalPadding,
                  horizontal: widget.buttonHorizontalPadding),
              dropdownPadding:
                  EdgeInsets.symmetric(horizontal: 0, vertical: 14),
              dropdownElevation: 2),
        ),
      ),
    );
  }

  // disabling & icon & text color
  _colorController() {
    // if (widget.inputType == InputType.Disabled) {
    return ThemeColors.coolgray400;
    // } else {
    //   return ThemeColors.coolgray700;
    // }
  }

  _borderController() {
    if (widget.dropdownSize == DropdownSize.SIZE4) {
      return Border.all(width: 2, color: ThemeColors.coolgray400);
    } else if (widget.dropdownSize != DropdownSize.SIZE1) {
      return Border.all(width: 1, color: ThemeColors.coolgray300);
    } else {
      return null;
    }
  }

  _buttonWidthController() {
    switch (widget.dropdownSize) {
      case DropdownSize.SIZE1:
        return 656;
      case DropdownSize.SIZE2:
        return 240;
      case DropdownSize.SIZE3:
        return 240;
      case DropdownSize.SIZE4:
        return 116;
      case DropdownSize.SIZE5:
        return 576;
    }
  }

  _buttonHeightController() {
    switch (widget.dropdownSize) {
      case DropdownSize.SIZE1:
        return 98;
      case DropdownSize.SIZE2:
        return 64;
      case DropdownSize.SIZE3:
        return 64;
      case DropdownSize.SIZE4:
        return 54;
      case DropdownSize.SIZE5:
        return 84;
    }
  }

  // _radiusController() {
  //   if (widget.dropdownSize == DropdownSize.SIZE4) {
  //     return BorderRadius.circular(12.r);
  //   } else {
  //     return BorderRadius.circular(24.r);
  //   }
  // }

  _shadowController() {
    if (widget.dropdownSize == DropdownSize.SIZE1) {
      return ThemeShadows.shadowSm;
    } else {
      return null;
    }
  }

  _textSizeController() {
    if (widget.dropdownSize == DropdownSize.SIZE1) {
      return ThemeTextRegular.lg.copyWith(color: _colorController());
    }
    if (widget.dropdownSize == DropdownSize.SIZE4) {
      return ThemeTextRegular.lg.copyWith(color: _colorController());
    } else {
      return ThemeTextRegular.lg.copyWith(color: _colorController());
    }
  }

  _dropDownWidthController() {
    if (widget.dropdownSize != DropdownSize.SIZE1) {
      return 400;
    } else {
      return null;
    }
  }

  List<DropdownMenuItem<String>> _addDividersAfterItems() {
    List listValues = widget.listValues;
    List<DropdownMenuItem<String>> _menuItems = [];
    for (var item in listValues) {
      _menuItems.addAll(
        [
          DropdownMenuItem<String>(
            value: item.toString(),
            child: SizedText(
              text: item.toString(),
              textStyle: ThemeTextRegular.lg.copyWith(
                  color: widget.isOrange
                      ? ThemeColors.orange500
                      : ThemeColors.coolgray600),
            ),
          ),
          if (widget.addDivider)
            if (item != listValues.last)
              DropdownMenuItem<String>(
                enabled: false,
                child: Divider(
                  height: .5,
                ),
              ),
        ],
      );
    }
    if (widget.onLastItemExistFunction != null) {
      _menuItems.add(
        DropdownMenuItem<String>(
          enabled: false,
          child: Divider(
            height: .5,
          ),
        ),
      );
      _menuItems.add(
        DropdownMenuItem<String>(
          value: widget.onLastItemExistMsg!,
          enabled: false,
          child: SpacedRow(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            horizontalSpace: 10,
            children: [
              HeroIcon(
                HeroIcons.plusCircle,
                size: 40,
                color: ThemeColors.coolgray600,
              ),
              GestureDetector(
                onTap: widget.onLastItemExistFunction,
                child: SizedText(
                    text: 'Добавить поставщика',
                    textStyle: ThemeTextRegular.lg
                        .copyWith(color: ThemeColors.coolgray600)),
              ),
            ],
          ),
        ),
      );
    }
    return _menuItems;
  }
}

enum DropdownSize { SIZE1, SIZE2, SIZE3, SIZE4, SIZE5 }

/// SIZE is not clear in the design
