import 'package:creatego/creatego_theme.dart';

class CWStatusChip extends StatelessWidget {
  const CWStatusChip({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Chip(
      avatar: CircleAvatar(
        backgroundColor: Colors.grey.shade800,
        child: const Text('AB'),
      ),
      label: const Text('test'),
    );
  }
}
