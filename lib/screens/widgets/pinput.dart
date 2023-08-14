import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

import '../../constants/colors.dart';
import 'count_down_timer.dart';

class PinPut extends StatelessWidget {
  const PinPut({super.key});

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: const TextStyle(
          fontSize: 20,
          color: Color.fromRGBO(30, 60, 87, 1),
          fontWeight: FontWeight.w600),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.blue),
        borderRadius: BorderRadius.circular(20),
      ),
    );

    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      border: Border.all(color: Colors.blue),
      borderRadius: BorderRadius.circular(8),
    );

    final submittedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration?.copyWith(
        color: const Color.fromRGBO(234, 239, 243, 1),
      ),
    );

    return Container(
      margin: const EdgeInsets.only(top: 50),
      child: Center(

        child: ListView(

          children: [
           const Text("Please Enter the OPT Code sent to: 0973750029",textAlign: TextAlign.center, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
           const SizedBox(
             height: 10,
           ),
            Pinput(
              defaultPinTheme: defaultPinTheme,
              focusedPinTheme: focusedPinTheme,
              submittedPinTheme: submittedPinTheme,

              androidSmsAutofillMethod: AndroidSmsAutofillMethod.smsUserConsentApi,
              pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
              closeKeyboardWhenCompleted: true,
              length: 4,
              showCursor: true,
              onCompleted: (pin) => print(pin),
            ),
            const SizedBox(
              height: 25,
            ),
            const CountDownTimer(),
            const SizedBox(
              height: 25,
            ),
            Visibility(
            visible: true,
            child:Container(
              padding: const EdgeInsets.all(16),
                child: const Text("Didn't receive the OTP Code? request another OTP Code here.",textAlign:TextAlign.center,style: TextStyle(color: primaryColor800),)
            ),
            )

          ],
        )

      ),
    );
  }
}
