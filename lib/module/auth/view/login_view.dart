import 'package:chatinc/module/auth/view%20model/auth_view_model.dart';
import 'package:chatinc/module/auth/view/otp_view.dart';
import 'package:chatinc/theme/app_shapes.dart';
import 'package:chatinc/widgets/app_bold_text.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
              ChangeNotifierProvider.value(
                value: AuthViewModel(),
                child: Consumer<AuthViewModel>(
                  builder: (context, viewmodel, __) {
                    return Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        children: [
                          TextField(
                            controller: _controller,
                            keyboardType: TextInputType.phone,
                            onSubmitted: (value) => viewmodel.sendOTP(context,
                                mobileNo: _controller.text),
                            decoration: const InputDecoration(
                              labelText: 'Enter your Phone No.',
                              isDense: true,
                              border: AppShape.kInputFieldBorder,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
