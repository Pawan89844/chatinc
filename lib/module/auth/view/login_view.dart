import 'package:chatinc/module/auth/view/otp_view.dart';
import 'package:chatinc/theme/app_shapes.dart';
import 'package:chatinc/widgets/app_bold_text.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  LoginView({super.key});
  final TextEditingController _controller = TextEditingController();

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
                      controller: _controller,
                      keyboardType: TextInputType.phone,
                      onChanged: (value) {
                        if (_controller.text.length >= 10) {
                          Future.delayed(
                            const Duration(seconds: 3),
                            () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const OTPView(),
                                )),
                          );
                        }
                      },
                      decoration: const InputDecoration(
                        labelText: 'Enter your Phone No.',

                        // suffixIcon: Padding(
                        //   padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        //   child: IconButton(
                        //       onPressed: () {},
                        //       icon:
                        //           const Icon(Icons.navigate_next, size: 30.0)),
                        // ),
                        isDense: true,
                        border: AppShape.kInputFieldBorder,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
