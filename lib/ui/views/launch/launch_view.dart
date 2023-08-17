import 'package:aeguana_task/ui/views/launch/launch_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:stacked/stacked.dart';

import 'launch_viewmodel.dart';

class LaunchView extends StackedView<LaunchViewModel> {
  const LaunchView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    LaunchViewModel viewModel,
    Widget? child,
  ) {
    return Container(
      color: const Color(0xFFF9F7F5),
      child: Stack(
        children: <Widget>[
          const Align(
            alignment: Alignment.bottomLeft,
            child: SizedBox(
              height: 310,
              width: double.infinity,
              child: FittedBox(
                fit: BoxFit.fill,
                child: Image(
                  image: AssetImage(
                    'assets/launch/launch_bubble.png',
                  ),
                ),
              ),
            ),
          ),
          Scaffold(
            backgroundColor: Colors.transparent,
            body: SafeArea(
              child: GestureDetector(
                onTap: () => FocusScope.of(context).unfocus(),
                behavior: HitTestBehavior.opaque,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 42),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        const Image(
                          image: AssetImage('assets/launch/aeguana_logo.png'),
                        ),
                        const SizedBox(height: 16),
                        const Flexible(
                          child: Image(
                            image: AssetImage('assets/launch/launch.png'),
                          ),
                        ),
                        const SizedBox(height: 16),
                        const Column(
                          children: [
                            LaunchTextField(
                              hint: 'Email',
                              keyboardType: TextInputType.emailAddress,
                              textInputAction: TextInputAction.next,
                            ),
                            SizedBox(height: 10),
                            LaunchTextField(
                              hint: 'Password',
                              keyboardType: TextInputType.visiblePassword,
                              textInputAction: TextInputAction.done,
                            ),
                            SizedBox(height: 26),
                          ],
                        ),
                        OutlinedButton(
                          onPressed: viewModel.navigateToDashboardView,
                          style: OutlinedButton.styleFrom(
                            backgroundColor: const Color(0xFF0D3144),
                            shape: const StadiumBorder(),
                            side: const BorderSide(
                              width: 2,
                              color: Color(0xFF0D3144),
                            ),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(vertical: 12),
                            child: SizedBox(
                              width: double.infinity,
                              child: Center(
                                child: Text(
                                  'Log in',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 16),
                        KeyboardVisibilityBuilder(
                          builder: (BuildContext context, bool isKeyboardVisible) {
                            if (!isKeyboardVisible) {
                              return Column(
                                children: <Widget>[
                                  const Text(
                                    'Don\'t have an account?',
                                    style: TextStyle(
                                      fontFamily: 'Raleway',
                                      color: Color(0xFF0A0F0F),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                  const SizedBox(height: 5),
                                  TextButton(
                                    onPressed: () => viewModel.onSignUpTapped(),
                                    child: const Text(
                                      'Sign up',
                                      style: TextStyle(
                                        fontFamily: 'Raleway',
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            }
                            return const SizedBox.shrink();
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  LaunchViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      LaunchViewModel();
}
