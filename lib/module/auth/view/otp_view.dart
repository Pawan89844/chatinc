import 'package:chatinc/module/auth/components/otp_component.dart';
import 'package:chatinc/module/auth/view%20model/auth_view_model.dart';
import 'package:chatinc/module/auth/view/signup_view.dart';
import 'package:chatinc/theme/app_colors.dart';
import 'package:chatinc/widgets/app_text.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../widgets/app_bold_text.dart';
import '../../../widgets/app_elevated_button.dart';

class OTPView extends StatelessWidget {
  const OTPView({super.key});

  @override
  Widget build(BuildContext context) {
    var query = MediaQuery.of(context);
    var viewModel = Provider.of<AuthViewModel>(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                constraints: BoxConstraints.tight(Size(double.infinity,
                    (query.size.height / 2.0) - query.padding.top)),
                child: const AppBoldText('Verify OTP', fontSize: 30.0),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  children: [
                    const OTPComponent(maxLength: 6),
                    const SizedBox(height: 14.0),
                    SizedBox(
                      width: query.size.width * .6,
                      child: AppElevatedButton(
                        onPressed: () => viewModel.sendOTP(context,
                            verificationCode: viewModel.otp),
                        text: 'VERIFY',
                      ),
                    )
                    // TextField(
                    //   keyboardType: TextInputType.phone,
                    //   onChanged: (value){
                    //     if(_controller.text.length >= 9){
                    //       Navigator.push(context, MaterialPageRoute(builder: (context) => ,));
                    //     }
                    //   },
                    //   decoration: const InputDecoration(
                    //     labelText: 'Enter your Phone No.',

                    //     // suffixIcon: Padding(
                    //     //   padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    //     //   child: IconButton(
                    //     //       onPressed: () {},
                    //     //       icon:
                    //     //           const Icon(Icons.navigate_next, size: 30.0)),
                    //     // ),
                    //     isDense: true,
                    //     border: AppShape.kInputFieldBorder,
                    //   ),
                    // ),
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
