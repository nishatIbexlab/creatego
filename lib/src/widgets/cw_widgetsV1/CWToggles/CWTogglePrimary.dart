import 'package:creatego/creatego_theme.dart';

class CWToggleL extends StatefulWidget {
  /// * [value] determines whether this switch is on or off.
  /// * [onToggle] is called when the user toggles the switch on or off.

  const CWToggleL({
    Key? key,
    required this.value,
    required this.onToggle,
    this.bgColor,
    this.disabled = false,
  }) : super(key: key);

  final bool value;
  final ValueChanged<bool> onToggle;
  final bool disabled;
  final Color? bgColor;

  @override
  _CWToggleLState createState() => _CWToggleLState();
}

class _CWToggleLState extends State<CWToggleL>
    with SingleTickerProviderStateMixin {
  late final Animation _toggleAnimation;
  late final AnimationController _animationController;
  final Duration _duration = const Duration(milliseconds: 200);

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      value: widget.value ? 1.0 : 0.0,
      duration: _duration,
    );
    _toggleAnimation = AlignmentTween(
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
    ).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.linear,
      ),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  void didUpdateWidget(CWToggleL oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (oldWidget.value == widget.value) return;

    if (widget.value) {
      _animationController.forward();
    } else {
      _animationController.reverse();
    }
  }

  @override
  Widget build(BuildContext context) {
    Color _toggleColor = ThemeColors.white;
    Color _switchColor = ThemeColors.white;
    Border? _switchBorder;
    Border? _toggleBorder;

    if (widget.value) {
      _toggleColor = ThemeColors.white;
      _switchColor = widget.bgColor ?? ThemeColors.orange500;
    } else {
      _switchColor = ThemeColors.coolgray200;
    }

    double _toggleSIze = 36.0;
    double _borderRadius = 37.0;
    double _padding = 4.0;
    double _width = 80.0;
    double _height = 44.0;

    return AnimatedBuilder(
      animation: _animationController,
      builder: (context, child) {
        return SizedBox(
          width: _width,
          child: Align(
            alignment: Alignment.centerRight,
            child: GestureDetector(
              onHorizontalDragStart: (details) {
                if (!widget.disabled) {
                  if (widget.value) {
                    _animationController.forward();
                  } else {
                    _animationController.reverse();
                  }

                  widget.onToggle(!widget.value);
                }
              },
              onTap: () {
                if (!widget.disabled) {
                  if (widget.value) {
                    _animationController.forward();
                  } else {
                    _animationController.reverse();
                  }
                  widget.onToggle(!widget.value);
                }
              },
              child: Opacity(
                opacity: widget.disabled ? 0.6 : 1,
                child: Container(
                  width: _width,
                  height: _height,
                  padding: EdgeInsets.all(_padding),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(_borderRadius),
                    color: _switchColor,
                    border: _switchBorder,
                  ),
                  child: Stack(
                    children: <Widget>[
                      Align(
                        alignment: _toggleAnimation.value,
                        child: PhysicalModel(
                          elevation: 1,
                          color: ThemeColors.black.withOpacity(0.07),
                          borderRadius: BorderRadius.circular(10000),
                          child: Container(
                            width: _toggleSIze,
                            height: _toggleSIze,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: _toggleColor,
                              border: _toggleBorder,
                            ),
                            child: AnimatedOpacity(
                              opacity: !widget.value ? 1.0 : 0.0,
                              duration: _duration,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

class CWToggleM extends StatefulWidget {
  /// * [value] determines whether this switch is on or off.
  /// * [onToggle] is called when the user toggles the switch on or off.

  const CWToggleM({
    Key? key,
    required this.value,
    required this.onToggle,
    this.bgColor,
    this.disabled = false,
  }) : super(key: key);

  final bool value;
  final ValueChanged<bool> onToggle;
  final bool disabled;
  final Color? bgColor;

  @override
  _CWToggleMState createState() => _CWToggleMState();
}

class _CWToggleMState extends State<CWToggleM>
    with SingleTickerProviderStateMixin {
  late final Animation _toggleAnimation;
  late final AnimationController _animationController;
  final Duration _duration = const Duration(milliseconds: 200);

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      value: widget.value ? 1.0 : 0.0,
      duration: _duration,
    );
    _toggleAnimation = AlignmentTween(
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
    ).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.linear,
      ),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  void didUpdateWidget(CWToggleM oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (oldWidget.value == widget.value) return;

    if (widget.value) {
      _animationController.forward();
    } else {
      _animationController.reverse();
    }
  }

  @override
  Widget build(BuildContext context) {
    Color _toggleColor = ThemeColors.white;
    Color _switchColor = ThemeColors.white;
    Border? _switchBorder;
    Border? _toggleBorder;

    if (widget.value) {
      _toggleColor = ThemeColors.white;
      _switchColor = widget.bgColor ?? ThemeColors.orange500;
    } else {
      _switchColor = ThemeColors.coolgray200;
    }

    double _toggleSIze = 20.0;
    double _borderRadius = 37.0;
    double _padding = 2.0;
    double _width = 44.0;
    double _height = 24.0;

    return AnimatedBuilder(
      animation: _animationController,
      builder: (context, child) {
        return SizedBox(
          width: _width,
          child: Align(
            alignment: Alignment.centerRight,
            child: GestureDetector(
              onHorizontalDragStart: (details) {
                if (!widget.disabled) {
                  if (widget.value) {
                    _animationController.forward();
                  } else {
                    _animationController.reverse();
                  }

                  widget.onToggle(!widget.value);
                }
              },
              onTap: () {
                if (!widget.disabled) {
                  if (widget.value) {
                    _animationController.forward();
                  } else {
                    _animationController.reverse();
                  }
                  widget.onToggle(!widget.value);
                }
              },
              child: Opacity(
                opacity: widget.disabled ? 0.6 : 1,
                child: Container(
                  width: _width,
                  height: _height,
                  padding: EdgeInsets.all(_padding),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(_borderRadius),
                    color: _switchColor,
                    border: _switchBorder,
                  ),
                  child: Stack(
                    children: <Widget>[
                      Align(
                        alignment: _toggleAnimation.value,
                        child: PhysicalModel(
                          elevation: 1,
                          color: ThemeColors.black.withOpacity(0.07),
                          borderRadius: BorderRadius.circular(10000),
                          child: Container(
                            width: _toggleSIze,
                            height: _toggleSIze,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: _toggleColor,
                              border: _toggleBorder,
                            ),
                            child: AnimatedOpacity(
                              opacity: !widget.value ? 1.0 : 0.0,
                              duration: _duration,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

class CWToggleWithIconM extends StatefulWidget {
  /// * [value] determines whether this switch is on or off.
  /// * [onToggle] is called when the user toggles the switch on or off.
  /// * MUST pass active & inactive icons.

  const CWToggleWithIconM({
    Key? key,
    required this.value,
    required this.onToggle,
    this.bgColor,
    required this.activeIcon,
    required this.inactiveIcon,
    this.disabled = false,
  }) : super(key: key);

  final bool value;
  final ValueChanged<bool> onToggle;
  final bool disabled;
  final Color? bgColor;
  final Widget activeIcon;
  final Widget inactiveIcon;

  @override
  _CWToggleWithIconMState createState() => _CWToggleWithIconMState();
}

class _CWToggleWithIconMState extends State<CWToggleWithIconM>
    with SingleTickerProviderStateMixin {
  late final Animation _toggleAnimation;
  late final AnimationController _animationController;
  final Duration _duration = const Duration(milliseconds: 200);

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      value: widget.value ? 1.0 : 0.0,
      duration: _duration,
    );
    _toggleAnimation = AlignmentTween(
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
    ).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.linear,
      ),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  void didUpdateWidget(CWToggleWithIconM oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (oldWidget.value == widget.value) return;

    if (widget.value) {
      _animationController.forward();
    } else {
      _animationController.reverse();
    }
  }

  @override
  Widget build(BuildContext context) {
    Color _toggleColor = ThemeColors.white;
    Color _switchColor = ThemeColors.white;
    Border? _switchBorder;
    Border? _toggleBorder;

    if (widget.value) {
      _toggleColor = ThemeColors.white;
      _switchColor = widget.bgColor ?? ThemeColors.orange500;
    } else {
      _switchColor = ThemeColors.coolgray200;
    }

    double _toggleSIze = 20.0;
    double _borderRadius = 37.0;
    double _padding = 2.0;
    double _width = 44.0;
    double _height = 24.0;

    return AnimatedBuilder(
      animation: _animationController,
      builder: (context, child) {
        return SizedBox(
          width: _width,
          child: Align(
            alignment: Alignment.centerRight,
            child: GestureDetector(
              onHorizontalDragStart: (details) {
                if (!widget.disabled) {
                  if (widget.value) {
                    _animationController.forward();
                  } else {
                    _animationController.reverse();
                  }

                  widget.onToggle(!widget.value);
                }
              },
              onTap: () {
                if (!widget.disabled) {
                  if (widget.value) {
                    _animationController.forward();
                  } else {
                    _animationController.reverse();
                  }
                  widget.onToggle(!widget.value);
                }
              },
              child: Opacity(
                opacity: widget.disabled ? 0.6 : 1,
                child: Container(
                  width: _width,
                  height: _height,
                  padding: EdgeInsets.all(_padding),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(_borderRadius),
                    color: _switchColor,
                    border: _switchBorder,
                  ),
                  child: Stack(
                    children: <Widget>[
                      Align(
                        alignment: _toggleAnimation.value,
                        child: PhysicalModel(
                          elevation: 1,
                          color: ThemeColors.black.withOpacity(0.07),
                          borderRadius: BorderRadius.circular(10000),
                          child: Container(
                            width: _toggleSIze,
                            height: _toggleSIze,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: _toggleColor,
                              border: _toggleBorder,
                            ),
                            child: FittedBox(
                              fit: BoxFit.contain,
                              child: Stack(
                                children: [
                                  Center(
                                    child: AnimatedOpacity(
                                      opacity: widget.value ? 1.0 : 0.0,
                                      duration: _duration,
                                      child: widget.activeIcon,
                                    ),
                                  ),
                                  Center(
                                    child: AnimatedOpacity(
                                      opacity: !widget.value ? 1.0 : 0.0,
                                      duration: _duration,
                                      child: widget.inactiveIcon,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

class CWToggleS extends StatefulWidget {
  /// * [value] determines whether this switch is on or off.
  /// * [onToggle] is called when the user toggles the switch on or off.

  const CWToggleS({
    Key? key,
    required this.value,
    required this.onToggle,
    this.bgColor,
    this.disabled = false,
  }) : super(key: key);

  final bool value;
  final ValueChanged<bool> onToggle;
  final bool disabled;
  final Color? bgColor;

  @override
  _CWToggleSState createState() => _CWToggleSState();
}

class _CWToggleSState extends State<CWToggleS>
    with SingleTickerProviderStateMixin {
  late final Animation _toggleAnimation;
  late final AnimationController _animationController;
  final Duration _duration = const Duration(milliseconds: 200);

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      value: widget.value ? 1.0 : 0.0,
      duration: _duration,
    );
    _toggleAnimation = AlignmentTween(
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
    ).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.linear,
      ),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  void didUpdateWidget(CWToggleS oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (oldWidget.value == widget.value) return;

    if (widget.value) {
      _animationController.forward();
    } else {
      _animationController.reverse();
    }
  }

  @override
  Widget build(BuildContext context) {
    Color _toggleColor = ThemeColors.white;
    Color _switchColor = ThemeColors.white;

    return SizedBox(
      width: 38,
      height: 24,
      child: FittedBox(
        fit: BoxFit.fill,
        child: Switch(
          splashRadius: 0,
          value: widget.value,
          onChanged: widget.onToggle,
          activeTrackColor: widget.bgColor ?? ThemeColors.orange500,
          activeColor: _switchColor,
          inactiveThumbColor: _toggleColor,
          inactiveTrackColor: ThemeColors.coolgray200,
        ),
      ),
    );
  }
}
