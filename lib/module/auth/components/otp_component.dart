import 'package:chatinc/theme/app_shapes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OTPComponent extends StatefulWidget {
  final int maxLength;
  const OTPComponent({super.key, required this.maxLength});

  @override
  State<OTPComponent> createState() => _OTPComponentState();
}

class _OTPComponentState extends State<OTPComponent> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
          widget.maxLength,
          (i) => SizedBox(
                width: 70.0,
                // height: 50.0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    inputFormatters: [LengthLimitingTextInputFormatter(1)],
                    onChanged: (value) {},
                    decoration: const InputDecoration(
                        isDense: true,
                        alignLabelWithHint: true,
                        border: AppShape.kInputFieldBorder),
                  ),
                ),
              )),
    );
  }
}
