import 'package:aeguana_task/ui/common/app_colors.dart';
import 'package:aeguana_task/ui/common/app_strings.dart';
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
      color: kBackgroundColor,
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
                              hint: kLaunchViewEmailHint,
                              keyboardType: TextInputType.emailAddress,
                              textInputAction: TextInputAction.next,
                            ),
                            SizedBox(height: 10),
                            LaunchTextField(
                              hint: kLaunchViewPasswordHint,
                              keyboardType: TextInputType.visiblePassword,
                              textInputAction: TextInputAction.done,
                            ),
                            SizedBox(height: 26),
                          ],
                        ),
                        OutlinedButton(
                          onPressed: viewModel.navigateToDashboardView,
                          style: OutlinedButton.styleFrom(
                            backgroundColor: kPrimaryColor,
                            shape: const StadiumBorder(),
                            side: const BorderSide(
                              width: 2,
                              color: kPrimaryColor,
                            ),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(vertical: 12),
                            child: SizedBox(
                              width: double.infinity,
                              child: Center(
                                child: Text(
                                  kLaunchViewCTAButton,
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
                                    kLaunchViewNoAccount,
                                    style: TextStyle(
                                      fontFamily: 'Raleway',
                                      color: kNearBlack2Color,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                  const SizedBox(height: 5),
                                  TextButton(
                                    onPressed: () => viewModel.onSignUpTapped(),
                                    child: const Text(
                                      kLaunchViewSignUp,
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
