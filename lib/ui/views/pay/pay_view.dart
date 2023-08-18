import 'package:aeguana_task/ui/common/app_colors.dart';
import 'package:aeguana_task/ui/common/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'pay_viewmodel.dart';

class PayView extends StackedView<PayViewModel> {
  const PayView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    PayViewModel viewModel,
    Widget? child,
  ) {
    return Material(
      child: Container(
        color: kPayViewBackgroundColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 200,
              width: 200,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
            ),
            const SizedBox(height: 55),
            const Text(
              kScanningCode,
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 18,
                color: kNearBlack2Color,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  PayViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      PayViewModel();
}
