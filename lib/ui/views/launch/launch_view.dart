import 'package:flutter/material.dart';
import 'package:flutter_app_template/ui/views/launch/launch_textfield.dart';
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
    return Scaffold(
      backgroundColor: const Color(0xFFF9F7F5),
      body: Stack(
        children: [
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
                )),
              ),
            ),
          ),
          SafeArea(
            child: Center(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 32, horizontal: 42),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Image(
                      image: AssetImage('assets/launch/aeguana_logo.png'),
                    ),
                    const SizedBox(height: 16),
                    const Image(
                      image: AssetImage('assets/launch/launch.png'),
                      height: 220,
                    ),
                    const SizedBox(height: 16),
                    const Column(
                      children: [
                        LaunchTextField(hint: 'Email'),
                        SizedBox(height: 10),
                        LaunchTextField(hint: 'Password'),
                        SizedBox(height: 26),
                      ],
                    ),
                    OutlinedButton(
                      onPressed: viewModel.navigateToDashboardView,
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(const Color(0xFF0D3144)),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100),
                          ),
                        ),
                      ),
                      child: const SizedBox(
                        width: double.infinity,
                        height: 50,
                        child: Center(
                          child: Text(
                            'Log in',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontFamily: 'Futura',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    const Column(
                      children: [
                        Text(
                          'Don\'t have an account?',
                          style: TextStyle(
                            fontFamily: 'Raleway',
                            color: Color(0xFF0A0F0F),
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          'Sign up',
                          style: TextStyle(
                            fontFamily: 'Raleway',
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          )
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
