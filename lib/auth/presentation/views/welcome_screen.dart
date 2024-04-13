import 'package:auto_route/auto_route.dart';
import 'package:chococam/app/common/constants.dart';
import 'package:chococam/app/extensions/build_context.dart';
import 'package:chococam/app/extensions/num.dart';
import 'package:chococam/app/router/app_router.dart';
import 'package:flutter/material.dart';

@RoutePage()
class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Welcome to Chococam'),
        ),
        body: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ChocoFixedButton(
                text: 'Vendor',
                onPressed: () {
                  context.router.push(const VendorRoute());
                },
              ),
              16.vGap,
              const ChocoFixedButton(
                text: 'Merchandisor',
              ),
            ],
          ),
        ));
    ;
  }
}

class ChocoButton extends StatelessWidget {
  final String text;
  final void Function()? onPressed;

  const ChocoButton({
    super.key,
    required this.text,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        alignment: Alignment.center,
        width: MediaQuery.of(context).size!.width * 0.6,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: context.colorScheme.primary,
          borderRadius: BorderRadius.circular(32),
        ),
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 24,
          ),
        ),
      ),
    );
  }
}

class ChocoFixedButton extends StatelessWidget {
  final String text;
  final void Function()? onPressed;

  const ChocoFixedButton({
    super.key,
    required this.text,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: KSizes.buttonWidth,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: context.colorScheme.primary,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 24,
          ),
        ),
      ),
    );
  }
}
