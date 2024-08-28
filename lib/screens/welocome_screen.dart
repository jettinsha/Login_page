import 'package:flutter/material.dart';
import 'package:smart_x/widgets/custom_scafold.dart';
import 'package:smart_x/widgets/wecome_button.dart';

class WelocomeScreen extends StatelessWidget {
  const WelocomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScafold(
      child: Column(
        children: [
          Flexible(
            flex: 8,
            child: Container(
              padding: const EdgeInsets.symmetric(
                vertical: 0,
                horizontal: 40.0,
              ),
              child: Center(
                child: RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(
                    children: [
                      TextSpan(
                        text: 'Welcome Back!\n',
                        style: TextStyle(
                          fontSize: 45.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      TextSpan(
                          text: '\nEnter  personal details to emplyee account',
                          style: TextStyle(
                            fontSize: 20,
                          )),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Flexible(
            flex: 1,
            child: Align(
              alignment: Alignment.bottomRight,
              child: Row(
                children: [
                  Expanded(
                      child: WecomeButton(
                    buttonText: 'Sign In',
                  )),
                  Expanded(
                      child: WecomeButton(
                    buttonText: 'Sign Up',
                  )),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
