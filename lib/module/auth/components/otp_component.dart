import 'package:chatinc/module/auth/view%20model/auth_view_model.dart';
import 'package:chatinc/theme/app_shapes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

class OTPComponent extends StatefulWidget {
  final int maxLength;
  const OTPComponent({super.key, required this.maxLength});

  @override
  State<OTPComponent> createState() => _OTPComponentState();
}

class _OTPComponentState extends State<OTPComponent> {
  late List<FocusNode> node;

  @override
  void initState() {
    super.initState();
    List<FocusNode> genNode =
        List.generate(widget.maxLength, (i) => FocusNode());
    node = genNode;
  }

  void _logic(String value, int i) {
    if (value.isNotEmpty) {
      node[i].nextFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    var query = MediaQuery.of(context).size;
    var viewmodel = Provider.of<AuthViewModel>(context);
    return Wrap(
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      alignment: WrapAlignment.center,
      children: List.generate(
          widget.maxLength,
          (i) => SizedBox(
                width: query.width * .15,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 8.0, vertical: 5.0),
                  child: TextField(
                    inputFormatters: [LengthLimitingTextInputFormatter(1)],
                    focusNode: node[i],
                    onSubmitted: (value) => viewmodel.setOTP(value),
                    onChanged: (value) => _logic(value, i),
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
