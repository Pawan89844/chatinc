import 'package:chatinc/module/auth/components/otp_component.dart';
import 'package:chatinc/theme/app_shapes.dart';
import 'package:chatinc/widgets/app_bold_text.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  LoginView({super.key});
  final List<TextEditingController> controller = <TextEditingController>[];

  @override
  Widget build(BuildContext context) {
    var query = MediaQuery.of(context);
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                constraints: BoxConstraints.tight(Size(double.infinity,
                    (query.size.height / 2.0) - query.padding.top)),
                child: const AppBoldText('Login', fontSize: 30.0),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  children: [
                    TextField(
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        labelText: 'Enter your Phone No.',
                        suffixIcon: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: IconButton(
                              onPressed: () {},
                              icon:
                                  const Icon(Icons.navigate_next, size: 30.0)),
                        ),
                        isDense: true,
                        border: AppShape.kInputFieldBorder,
                      ),
                    ),
                  ],
                ),
              ),
              OTPComponent(
                maxLength: 4,
              )
            ],
          ),
        ),
      ),
    );
  }
}
