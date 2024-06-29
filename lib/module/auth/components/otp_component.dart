// ignore_for_file: avoid_function_literals_in_foreach_calls

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
  // late List<FocusNode> node = <FocusNode>[];
  // String typedValue = '';
  late List<TextEditingController> _controllers;
  late List<FocusNode> _focusNodes;

  @override
  void initState() {
    super.initState();
    // List<FocusNode> generatedNode =
    //     List.generate(widget.maxLength, (i) => FocusNode());
    // node.addAll(generatedNode);
    _controllers =
        List.generate(widget.maxLength, (index) => TextEditingController());
    _focusNodes = List.generate(widget.maxLength, (index) => FocusNode());
  }

  @override
  void dispose() {
    super.dispose();
    _controllers.forEach((controller) => controller.dispose());
    _focusNodes.forEach((focusNode) => focusNode.dispose());
  }

  void _handleTextFieldChange(String value, int index) {
    if (value.isNotEmpty) {
      if (index < _focusNodes.length - 1) {
        FocusScope.of(context).requestFocus(_focusNodes[index + 1]);
      } else {
        _focusNodes[index].unfocus();
      }
    }
  }

  void _handleKeyEvent(KeyEvent event, int index) {
    if (event is KeyDownEvent &&
        event.logicalKey == LogicalKeyboardKey.backspace) {
      if (_controllers[index].text.isEmpty) {
        if (index > 0) {
          _focusNodes[index].previousFocus();
          // FocusScope.of(context).requestFocus(_focusNodes[index].previousFocus());
        } else {
          _controllers[index].clear();
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
          widget.maxLength,
          (i) => KeyboardListener(
                focusNode: FocusNode(),
                onKeyEvent: (value) => _handleKeyEvent(value, i),
                child: SizedBox(
                  width: 70.0,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      focusNode: _focusNodes[i],
                      inputFormatters: [LengthLimitingTextInputFormatter(1)],
                      onChanged: (value) => _handleTextFieldChange(value, i),
                      // onChanged: (value) {
                      //   // if (value.isNotEmpty && i < widget.maxLength - 1) {
                      //   //   typedValue += value;
                      //   //   node[i].nextFocus();
                      //   // } else {
                      //   //   bool isFocus = node[i].previousFocus();
                      //   //   print('IsFocus: $isFocus');
                      //   //   typedValue += value;
                      //   //   // print('Value: $typedValue');
                      //   //   node[i].unfocus();
                      //   // }
                      //   // if (typedValue.length == 3) {
                      //   //   print('Value:');
                      //   // }
                      // },
                      decoration: const InputDecoration(
                          isDense: true,
                          alignLabelWithHint: true,
                          border: AppShape.kInputFieldBorder),
                    ),
                  ),
                ),
              )),
    );
  }
}
