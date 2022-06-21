import 'package:creatego/creatego_theme.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

class CWDropdownPrimary extends StatefulWidget {
  final ValueChanged? onChanged;
  final dynamic value;
  final List items;
  final IconData? leftIcon;
  String? hintText;
  bool isValueNull = false;
  final double? dropdownBtnWidth;
  final double? dropdownOptionsWidth;

  /// Dropdown-button-width, Dropdown-Options-Width
  ///  are changeable.

  /// * DO NOT PASS the SAME TEXT in items.
  CWDropdownPrimary(
      {Key? key,
      required this.items,
      this.onChanged,
      this.value,
      this.leftIcon,
      this.dropdownBtnWidth = 115,
      this.dropdownOptionsWidth = 224,
      this.hintText})
      : super(key: key) {
    if (value == null) isValueNull = true;
    hintText ??= "Options";
  }

  @override
  State<CWDropdownPrimary> createState() => _CWDropdownPrimaryState();
}

class _CWDropdownPrimaryState extends State<CWDropdownPrimary> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.dropdownBtnWidth,
      height: 40,
      child: DropdownButton2(
        itemPadding: EdgeInsets.zero,
        alignment: Alignment.centerLeft,
        underline: const SizedBox(),
        onChanged: widget.onChanged,
        isExpanded: true,
        focusColor: ThemeColors.transparent,
        onMenuStateChange: (bool changed) {},
        style: ThemeTextRegular.base.copyWith(color: ThemeColors.black),
        dropdownDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          boxShadow: [
            BoxShadow(
                color: ThemeColors.black.withOpacity(0.2),
                offset: const Offset(0, 1),
                blurRadius: 4)
          ],
        ),
        value: widget.value,
        dropdownWidth: widget.dropdownOptionsWidth,
        customButton: Container(
          // height: 40,
          padding: const EdgeInsets.only(left: 15),
          decoration: BoxDecoration(
            border: Border.all(
              color: ThemeColors.coolgray300,
              width: 1,
            ),
            boxShadow: ThemeShadows.shadowSm,
            borderRadius: BorderRadius.circular(6),
            color: ThemeColors.white,
          ),
          child: SpacedRow(
            crossAxisAlignment: CrossAxisAlignment.center,
            horizontalSpace: 15,
            children: [
              if (widget.isValueNull)
                ..._buildHint()
              else
                ..._buildSelectedItem(context)
            ],
          ),
        ),
        // itemHeight: 56.h,
        items: _getItems(),
      ),
    );
  }

  List<Widget> _buildHint() {
    return [
      if (widget.leftIcon != null)
        Icon(widget.leftIcon!,
            color:
                widget.isValueNull ? ThemeColors.gray400 : ThemeColors.gray700),
      if (widget.isValueNull)
        SizedBox(
          width: widget.leftIcon != null
              ? widget.dropdownBtnWidth! - (55 + 55)
              : widget.dropdownBtnWidth! - 60,
          child: SizedText(
              text: widget.hintText,
              overflow: TextOverflow.ellipsis,
              textStyle: ThemeTextSemiBold.base
                  .copyWith(color: ThemeColors.coolgray600)),
        ),
      const Align(
          alignment: Alignment.centerRight,
          child: Icon(Icons.keyboard_arrow_down_rounded,
              color: ThemeColors.coolgray600)),
    ];
  }

  List<Widget> _buildSelectedItem(BuildContext ctx) {
    return [
      if (widget.leftIcon != null)
        Icon(widget.leftIcon!, color: ThemeColors.coolgray600),
      if (!widget.isValueNull)
        SizedBox(
          width: widget.leftIcon != null
              ? widget.dropdownBtnWidth! - (55 + 55)
              : widget.dropdownBtnWidth! - 60,
          child: SizedText(
              text: widget.value.toString(),
              textStyle: ThemeTextSemiBold.base
                  .copyWith(color: ThemeColors.coolgray600),
              overflow: TextOverflow.ellipsis),
        ),
      const Align(
        alignment: Alignment.centerRight,
        child: Icon(Icons.keyboard_arrow_down_rounded,
            color: ThemeColors.coolgray600),
      ),
    ];
  }

  List<DropdownMenuItem<String>> _getItems() {
    List listValues = widget.items;
    List<DropdownMenuItem<String>> _menuItems = [];
    for (int i = 0; i < listValues.length; i++) {
      _menuItems.add(
        DropdownMenuItem<String>(
          value: listValues[i].toString(),
          child: Container(
            decoration: BoxDecoration(
                color: widget.value == listValues[i]
                    ? ThemeColors.coolgray100
                    : ThemeColors.white,
                border: Border(
                    bottom: BorderSide(
                        width: 1,
                        color: listValues.length - 1 == i
                            ? ThemeColors.transparent
                            : ThemeColors.gray300.withOpacity(0.5)))),
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.symmetric(horizontal: 15),
            width: double.infinity,
            height: double.infinity,
            child: SizedText(
                text: listValues[i].toString(),
                textStyle: ThemeTextSemiBold.base
                    .apply(color: ThemeColors.coolgray600)),
          ),
        ),
      );
    }

    return _menuItems;
  }
}

class CWDropdownWithIconMenu extends StatefulWidget {
  final ValueChanged? onChanged;
  final MenuItem? value;
  final List<MenuItem> items;
  final IconData? leftIcon;
  String? hintText;
  bool isValueNull = false;
  final double? dropdownBtnWidth;
  final double? dropdownOptionsWidth;
  final bool? isDropdownOptionsIconRight;

  /// Dropdown-button-width, Dropdown-Options-Width
  ///  are changeable.

  /// * items: [[MenuItem(text="text", icon= Icons.icon), ...]]
  /// * DO NOT PASS the SAME TEXT in the items' MenuItem.
  CWDropdownWithIconMenu(
      {Key? key,
      required this.items,
      this.onChanged,
      this.value,
      this.leftIcon,
      this.dropdownBtnWidth = 115,
      this.dropdownOptionsWidth = 224,
      this.isDropdownOptionsIconRight = false,
      this.hintText})
      : super(key: key) {
    if (value == null) isValueNull = true;
    hintText ??= "Options";
  }

  @override
  State<CWDropdownWithIconMenu> createState() => _CWDropdownWithIconMenuState();
}

class _CWDropdownWithIconMenuState extends State<CWDropdownWithIconMenu> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.dropdownBtnWidth,
      height: 40,
      child: DropdownButton2(
        itemPadding: EdgeInsets.zero,
        alignment: Alignment.centerLeft,
        underline: const SizedBox(),
        onChanged: widget.onChanged,
        isExpanded: true,
        focusColor: ThemeColors.transparent,
        onMenuStateChange: (bool changed) {},
        style: ThemeTextRegular.base.copyWith(color: ThemeColors.black),
        dropdownDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          boxShadow: [
            BoxShadow(
                color: ThemeColors.black.withOpacity(0.2),
                offset: const Offset(0, 1),
                blurRadius: 4)
          ],
        ),
        value: widget.value,

        dropdownWidth: widget.dropdownOptionsWidth,
        customButton: Container(
          height: 45,
          padding: const EdgeInsets.only(left: 15),
          decoration: BoxDecoration(
            border: Border.all(
              color: ThemeColors.coolgray300,
              width: 1,
            ),
            boxShadow: ThemeShadows.shadowSm,
            borderRadius: BorderRadius.circular(6),
            color: ThemeColors.white,
          ),
          child: SpacedRow(
            crossAxisAlignment: CrossAxisAlignment.center,
            horizontalSpace: 15,
            children: [
              if (widget.isValueNull)
                ..._buildHint()
              else
                ..._buildSelectedItem(context)
            ],
          ),
        ),
        // itemHeight: 56.h,
        items: _getItems(),
      ),
    );
  }

  List<Widget> _buildHint() {
    return [
      if (widget.leftIcon != null)
        Icon(widget.leftIcon!,
            color:
                widget.isValueNull ? ThemeColors.gray400 : ThemeColors.gray700),
      if (widget.isValueNull)
        SizedBox(
          width: widget.leftIcon != null
              ? widget.dropdownBtnWidth! - (55 + 55)
              : widget.dropdownBtnWidth! - 60,
          child: SizedText(
              text: widget.hintText,
              overflow: TextOverflow.ellipsis,
              textStyle: ThemeTextSemiBold.base
                  .copyWith(color: ThemeColors.coolgray600)),
        ),
      const Align(
          alignment: Alignment.centerRight,
          child: Icon(Icons.keyboard_arrow_down_rounded,
              color: ThemeColors.coolgray600)),
    ];
  }

  List<Widget> _buildSelectedItem(BuildContext ctx) {
    return [
      if (widget.leftIcon != null)
        Icon(widget.leftIcon!, color: ThemeColors.coolgray600),
      if (!widget.isValueNull)
        SizedBox(
          width: widget.leftIcon != null
              ? widget.dropdownBtnWidth! - (55 + 55)
              : widget.dropdownBtnWidth! - 60,
          child: SizedText(
              text: widget.value?.text.toString(),
              textStyle: ThemeTextSemiBold.base
                  .copyWith(color: ThemeColors.coolgray600),
              overflow: TextOverflow.ellipsis),
        ),
      const Align(
        alignment: Alignment.centerRight,
        child: Icon(Icons.keyboard_arrow_down_rounded,
            color: ThemeColors.coolgray600),
      ),
    ];
  }

  List<DropdownMenuItem<MenuItem>> _getItems() {
    List<MenuItem> listValues = widget.items;
    List<DropdownMenuItem<MenuItem>> _menuItems = [];
    for (int i = 0; i < listValues.length; i++) {
      _menuItems.add(
        DropdownMenuItem<MenuItem>(
          value: listValues[i],
          child: Container(
              decoration: BoxDecoration(
                  color: listValues[i].text == widget.value?.text
                      ? ThemeColors.coolgray100
                      : ThemeColors.white,
                  border: Border(
                      bottom: BorderSide(
                          width: 1,
                          color: listValues.length - 1 == i
                              ? ThemeColors.transparent
                              : ThemeColors.gray300.withOpacity(0.5)))),
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.symmetric(horizontal: 15),
              width: double.infinity,
              height: double.infinity,
              child: _buildMenuItems(
                item: listValues[i],
                isDropdownOptionsIconRight: widget.isDropdownOptionsIconRight!,
                dropdownOptionsWidth: widget.dropdownOptionsWidth!,
              )),
        ),
      );
    }

    return _menuItems;
  }
}

class CWDropdownWithIconMenu2 extends StatefulWidget {
  final ValueChanged? onChanged;
  final MenuItem? value;
  final List<MenuItem> items;
  final IconData? leftIcon;
  String? hintText;
  bool isValueNull = false;
  final double? dropdownBtnWidth;
  final double? dropdownOptionsWidth;
  final bool? isDropdownOptionsIconRight;

  /// Input-dropdown-width, Input-dropdown-Width
  ///  are changeable.

  /// * DO NOT PASS the SAME TEXT in items.
  CWDropdownWithIconMenu2(
      {Key? key,
      required this.items,
      this.onChanged,
      this.value,
      this.leftIcon,
      this.dropdownBtnWidth = 215,
      this.dropdownOptionsWidth = 224,
      this.isDropdownOptionsIconRight = false,
      this.hintText})
      : super(key: key) {
    if (value == null) isValueNull = true;
    hintText ??= "Options";
  }

  @override
  State<CWDropdownWithIconMenu2> createState() =>
      _CWDropdownWithIconMenu2State();
}

class _CWDropdownWithIconMenu2State extends State<CWDropdownWithIconMenu2> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.dropdownBtnWidth,
      height: 40,
      child: DropdownButton2(
        itemPadding: EdgeInsets.zero,
        alignment: Alignment.centerLeft,
        underline: const SizedBox(),
        onChanged: widget.onChanged,
        isExpanded: true,
        focusColor: ThemeColors.transparent,
        onMenuStateChange: (bool changed) {},
        style: ThemeTextRegular.base.copyWith(color: ThemeColors.black),
        dropdownDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          boxShadow: [
            BoxShadow(
                color: ThemeColors.black.withOpacity(0.2),
                offset: const Offset(0, 1),
                blurRadius: 4)
          ],
        ),
        value: widget.value,
        dropdownWidth: widget.dropdownBtnWidth,
        customButton: Container(
          height: 40,
          padding: const EdgeInsets.only(left: 15),
          decoration: BoxDecoration(
            border: Border.all(
              color: ThemeColors.coolgray300,
              width: 1,
            ),
            boxShadow: ThemeShadows.shadowSm,
            borderRadius: BorderRadius.circular(6),
            color: ThemeColors.white,
          ),
          child: SpacedRow(
            crossAxisAlignment: CrossAxisAlignment.center,
            horizontalSpace: 15,
            children: [
              if (widget.isValueNull)
                ..._buildHint()
              else
                ..._buildSelectedItem(context)
            ],
          ),
        ),
        // itemHeight: 56.h,
        items: _getItems(),
      ),
    );
  }

  List<Widget> _buildHint() {
    return [
      if (widget.leftIcon != null)
        Icon(widget.leftIcon!,
            color:
                widget.isValueNull ? ThemeColors.gray400 : ThemeColors.gray700),
      if (widget.isValueNull)
        SizedText(
            width: widget.leftIcon != null
                ? widget.dropdownBtnWidth! - 99
                : widget.dropdownBtnWidth! - 60,
            text: widget.hintText,
            overflow: TextOverflow.ellipsis,
            textStyle: ThemeTextSemiBold.base
                .copyWith(color: ThemeColors.coolgray600)),
      Container(
        width: 28,
        height: 50,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(5), bottomRight: Radius.circular(5)),
          color: ThemeColors.coolgray100,
        ),
        child: const Icon(Icons.keyboard_arrow_down_rounded,
            color: ThemeColors.coolgray600),
      ),
    ];
  }

  List<Widget> _buildSelectedItem(BuildContext ctx) {
    return [
      if (widget.leftIcon != null)
        Icon(widget.leftIcon!,
            color:
                widget.isValueNull ? ThemeColors.gray400 : ThemeColors.gray700),
      if (!widget.isValueNull)
        SizedText(
            width: widget.leftIcon != null
                ? widget.dropdownBtnWidth! - 99
                : widget.dropdownBtnWidth! - 60,
            text: widget.value?.text.toString(),
            overflow: TextOverflow.ellipsis,
            textStyle: ThemeTextSemiBold.base
                .copyWith(color: ThemeColors.coolgray600)),
      Container(
        width: 28,
        height: 50,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(4), bottomRight: Radius.circular(4)),
          color: ThemeColors.coolgray100,
        ),
        child: const Icon(Icons.keyboard_arrow_down_rounded,
            color: ThemeColors.coolgray600),
      ),
    ];
  }

  List<DropdownMenuItem<MenuItem>> _getItems() {
    List<MenuItem> listValues = widget.items;
    List<DropdownMenuItem<MenuItem>> _menuItems = [];
    for (int i = 0; i < listValues.length; i++) {
      _menuItems.add(
        DropdownMenuItem<MenuItem>(
          value: listValues[i],
          child: Container(
              decoration: BoxDecoration(
                  color: listValues[i].text == widget.value?.text
                      ? ThemeColors.coolgray100
                      : ThemeColors.white,
                  border: Border(
                      bottom: BorderSide(
                          width: 1,
                          color: listValues.length - 1 == i
                              ? ThemeColors.transparent
                              : ThemeColors.gray300.withOpacity(0.5)))),
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.symmetric(horizontal: 15),
              width: double.infinity,
              height: double.infinity,
              child: _buildMenuItems(
                item: listValues[i],
                isDropdownOptionsIconRight: widget.isDropdownOptionsIconRight!,
                dropdownOptionsWidth: widget.dropdownOptionsWidth! - 10,
              )),
        ),
      );
    }

    return _menuItems;
  }
}

///////////////////////////////////////////////////
//////////// These Dropdowns are //////////////////
////////////   FOR Input Files   //////////////////
///////////////////////////////////////////////////
class CWInputFieldDropdown extends StatefulWidget {
  final ValueChanged? onChanged;
  final MenuItem? value;
  final List<MenuItem> items;
  bool isValueNull = false;
  String? hintText;
  final bool isDropdownRight;
  final bool? isDropdownOptionsIconRight;

  /// Dropdown-button-width, Dropdown-Options-Width
  ///  are changeable.

  /// * items: [[MenuItem(text="text", icon= Icons.icon), ...]]
  /// * DO NOT PASS the SAME TEXT in the items' MenuItem.
  CWInputFieldDropdown(
      {Key? key,
      required this.items,
      this.onChanged,
      this.value,
      required this.isDropdownRight,
      this.isDropdownOptionsIconRight = false,
      this.hintText})
      : super(key: key) {
    if (value == null) isValueNull = true;
    hintText ??= "Options";
  }

  @override
  State<CWInputFieldDropdown> createState() => _CWInputFieldDropdownState();
}

class _CWInputFieldDropdownState extends State<CWInputFieldDropdown> {
  final _borderRadiusLeft = const BorderRadius.only(
      topLeft: Radius.circular(5), bottomLeft: Radius.circular(5));

  final _borderRadiusRight = const BorderRadius.only(
      topRight: Radius.circular(5), bottomRight: Radius.circular(5));

  final double _dropdownBtnWidth = 70;
  final double _dropdownOptionsWidth = 104;

  @override
  Widget build(BuildContext context) {
    final _offSet = widget.isDropdownRight
        ? Offset(-_dropdownOptionsWidth + _dropdownBtnWidth + 2, -5)
        : const Offset(0, -5);

    final _borderRadius =
        widget.isDropdownRight ? _borderRadiusRight : _borderRadiusLeft;

    return SizedBox(
      width: _dropdownBtnWidth,
      height: 40,
      child: DropdownButton2(
        itemPadding: EdgeInsets.zero,
        alignment: Alignment.centerLeft,
        underline: const SizedBox(),
        onChanged: widget.onChanged,
        isExpanded: true,
        focusColor: ThemeColors.transparent,
        onMenuStateChange: (bool changed) {},
        style: ThemeTextRegular.base.copyWith(color: ThemeColors.black),
        dropdownDecoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(4)),
          boxShadow: [
            BoxShadow(
                color: ThemeColors.black.withOpacity(0.2),
                offset: const Offset(0, 1),
                blurRadius: 4)
          ],
        ),
        value: widget.value,
        offset: _offSet,
        dropdownWidth: _dropdownOptionsWidth,
        customButton: Container(
          height: 48,
          padding: const EdgeInsets.only(left: 6),
          decoration: BoxDecoration(
            borderRadius: _borderRadius,
            color: ThemeColors.coolgray100,
          ),
          child: SpacedRow(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              if (widget.isValueNull)
                ..._buildHint()
              else
                ..._buildSelectedItem(context)
            ],
          ),
        ),
        // itemHeight: 56.h,
        items: _getItems(),
      ),
    );
  }

  List<Widget> _buildHint() {
    return [
      if (widget.isValueNull)
        if (widget.hintText != "")
          SizedBox(
            width: _dropdownBtnWidth - 30,
            child: SizedText(
                text: widget.hintText,
                overflow: TextOverflow.ellipsis,
                textStyle: ThemeTextRegular.base
                    .copyWith(color: ThemeColors.coolgray600)),
          ),
      Align(
          alignment:
              widget.hintText == "" ? Alignment.centerRight : Alignment.center,
          child: const Icon(Icons.keyboard_arrow_down_rounded,
              color: ThemeColors.coolgray600)),
    ];
  }

  List<Widget> _buildSelectedItem(BuildContext ctx) {
    return [
      if (!widget.isValueNull)
        SizedBox(
          width: _dropdownBtnWidth - 30,
          child: SizedText(
              alignment: Alignment.center,
              text: widget.value?.text.toString(),
              textStyle: ThemeTextRegular.base
                  .copyWith(color: ThemeColors.coolgray600),
              overflow: TextOverflow.ellipsis),
        ),
      const Icon(Icons.keyboard_arrow_down_rounded,
          color: ThemeColors.coolgray600),
    ];
  }

  List<DropdownMenuItem<MenuItem>> _getItems() {
    List<MenuItem> listValues = widget.items;
    List<DropdownMenuItem<MenuItem>> _menuItems = [];
    for (int i = 0; i < listValues.length; i++) {
      _menuItems.add(
        DropdownMenuItem<MenuItem>(
          value: listValues[i],
          child: Container(
              decoration: BoxDecoration(
                  color: listValues[i].text == widget.value?.text
                      ? ThemeColors.coolgray100
                      : ThemeColors.white,
                  border: Border(
                      bottom: BorderSide(
                          width: 1,
                          color: listValues.length - 1 == i
                              ? ThemeColors.transparent
                              : ThemeColors.gray300.withOpacity(0.5)))),
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.symmetric(horizontal: 15),
              width: double.infinity,
              height: double.infinity,
              child: _buildMenuItems(
                item: listValues[i],
                isDropdownOptionsIconRight: widget.isDropdownOptionsIconRight!,
                dropdownOptionsWidth: _dropdownOptionsWidth,
              )),
        ),
      );
    }

    return _menuItems;
  }
}

class CWInputFieldDropdown2 extends StatefulWidget {
  final ValueChanged? onChanged;
  final MenuItem? value;
  final List<MenuItem> items;
  bool isValueNull = false;
  String? hintText;
  final double? dropdownOptionsWidth;
  final bool isDropdownRight;
  final bool? isDropdownOptionsIconRight;

  /// Dropdown-button-width, Dropdown-Options-Width
  ///  are changeable.

  /// * items: [[MenuItem(text="text", icon= Icons.icon), ...]]
  /// * DO NOT PASS the SAME TEXT in the items' MenuItem.
  CWInputFieldDropdown2(
      {Key? key,
      required this.items,
      this.onChanged,
      this.value,
      this.dropdownOptionsWidth = 120,
      required this.isDropdownRight,
      this.isDropdownOptionsIconRight = false,
      this.hintText})
      : super(key: key) {
    if (value == null) isValueNull = true;
    hintText ??= "Options";
  }

  @override
  State<CWInputFieldDropdown2> createState() => _CWInputFieldDropdown2State();
}

class _CWInputFieldDropdown2State extends State<CWInputFieldDropdown2> {
  final _borderRadiusLeft = const BorderRadius.only(
      topLeft: Radius.circular(5), bottomLeft: Radius.circular(5));

  final _borderRadiusRight = const BorderRadius.only(
      topRight: Radius.circular(5), bottomRight: Radius.circular(5));

  final double _dropdownBtnWidth = 40;

  @override
  Widget build(BuildContext context) {
    final _offSet = widget.isDropdownRight
        ? Offset(-widget.dropdownOptionsWidth! + _dropdownBtnWidth + 2, -5)
        : const Offset(0, -5);

    final _borderRadius =
        widget.isDropdownRight ? _borderRadiusRight : _borderRadiusLeft;

    return SizedBox(
      width: _dropdownBtnWidth,
      height: 40,
      child: DropdownButton2(
        buttonWidth: _dropdownBtnWidth,
        itemPadding: EdgeInsets.zero,
        alignment: Alignment.centerLeft,
        underline: const SizedBox(),
        onChanged: widget.onChanged,
        isExpanded: true,
        focusColor: ThemeColors.transparent,
        onMenuStateChange: (bool changed) {},
        style: ThemeTextRegular.base.copyWith(color: ThemeColors.black),
        dropdownDecoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(4)),
          boxShadow: [
            BoxShadow(
                color: ThemeColors.black.withOpacity(0.2),
                offset: const Offset(0, 1),
                blurRadius: 4)
          ],
        ),
        value: widget.value,
        offset: _offSet,
        dropdownWidth: widget.dropdownOptionsWidth,
        customButton: Container(
          height: 48,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: _borderRadius,
            color: ThemeColors.coolgray100,
          ),
          child: const Icon(Icons.keyboard_arrow_down_rounded,
              color: ThemeColors.coolgray600),
        ),
        // itemHeight: 56.h,
        items: _getItems(),
      ),
    );
  }

  List<DropdownMenuItem<MenuItem>> _getItems() {
    List<MenuItem> listValues = widget.items;
    List<DropdownMenuItem<MenuItem>> _menuItems = [];
    for (int i = 0; i < listValues.length; i++) {
      _menuItems.add(
        DropdownMenuItem<MenuItem>(
          value: listValues[i],
          child: Container(
              decoration: BoxDecoration(
                  color: listValues[i].text == widget.value?.text
                      ? ThemeColors.coolgray100
                      : ThemeColors.white,
                  border: Border(
                      bottom: BorderSide(
                          width: 1,
                          color: listValues.length - 1 == i
                              ? ThemeColors.transparent
                              : ThemeColors.gray300.withOpacity(0.5)))),
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.symmetric(horizontal: 15),
              width: double.infinity,
              height: double.infinity,
              child: _buildMenuItems(
                item: listValues[i],
                isDropdownOptionsIconRight: widget.isDropdownOptionsIconRight!,
                dropdownOptionsWidth: widget.dropdownOptionsWidth!,
              )),
        ),
      );
    }

    return _menuItems;
  }
}

class MenuItem {
  final String text;
  final IconData? icon;

  const MenuItem({
    required this.text,
    this.icon,
  });
}

Widget _buildMenuItems(
    {required MenuItem item,
    required bool isDropdownOptionsIconRight,
    double? dropdownOptionsWidth}) {
  return Row(
    children: [
      if (item.icon != null)
        if (!isDropdownOptionsIconRight)
          Icon(
            item.icon,
            color: ThemeColors.coolgray500,
            size: 20,
          ),
      if (item.icon != null)
        if (!isDropdownOptionsIconRight)
          const SizedBox(
            width: 10,
          ),
      SizedText(
        //padding + iconSize
        width: dropdownOptionsWidth! - 60,
        text: item.text,
        overflow: TextOverflow.ellipsis,
        textStyle:
            ThemeTextSemiBold.base.copyWith(color: ThemeColors.coolgray600),
      ),
      if (item.icon != null)
        if (isDropdownOptionsIconRight)
          Icon(
            item.icon,
            color: ThemeColors.coolgray500,
            size: 20,
          ),
      if (item.icon != null)
        if (isDropdownOptionsIconRight)
          const SizedBox(
            width: 10,
          ),
    ],
  );
}
