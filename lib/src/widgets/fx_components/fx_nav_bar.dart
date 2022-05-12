import 'package:creatego/src/widgets/mixes/pressable_mix.dart';
import 'package:mix/mix.dart';
import 'package:flutter/material.dart';

class FXNavBar extends StatelessWidget {
  const FXNavBar({Key? key}) : super(key: key);

  Mix get FXNavBarMix => Mix();

  Mix get FXNavBarHomeButton => Mix();

  @override
  Widget build(BuildContext context) {
    return Box(
      mix: FXNavBarMix,
      child: FXNavBarMix.row(children: [
        PressableMix(
          child: Box(),
        ),
      ]),
    );
  }
}
