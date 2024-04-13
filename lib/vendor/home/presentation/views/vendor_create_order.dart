import 'package:auto_route/auto_route.dart';
import 'package:chococam/app/extensions/build_context.dart';
import 'package:chococam/app/extensions/num.dart';
import 'package:chococam/auth/presentation/views/welcome_screen.dart';
import 'package:chococam/vendor/home/presentation/views/vendor_home_screen.dart';
import 'package:flutter/material.dart';

@RoutePage()
class VendorCreateOrderScreen extends StatelessWidget {
  const VendorCreateOrderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset:
          false, // set to false to avoid 'bottom overflowed by 80 pixels
      appBar: AppBar(
        title: const Text('Create Order'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              // ChocoTile(title: title, subtitle: subtitle),

              ChocoTile(
                title: 'Identifiant',
                subtitle: 'UIO38478',
                icon: const Icon(Icons.person),
              ),
              ChocoTile(
                title: 'Telephone',
                subtitle: '237690596606',
                icon: Icon(Icons.phone),
              ),
              36.vGap,
              Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: context.colorScheme.primary,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.camera),
                    4.vGap,
                    Text(
                      'Scan the Receipt',
                      style: context.titleLg.copyWith(color: Colors.white),
                    ),
                  ],
                ),
              ),
              16.vGap,
              ChocoInput(
                placeholder: 'Enter the amount',
              ),
              8.vGap,
              ChocoInput(
                placeholder: 'Montant Encaisser a la veille',
              ),
              32.vGap,
              ChocoButton(text: 'Submit')
            ],
          ),
        ),
      ),
    );
  }
}

class ChocoInput extends StatelessWidget {
  final String placeholder;
  const ChocoInput({
    super.key,
    this.placeholder = 'Enter the ...',
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(32),
        border: Border.all(color: context.colorScheme.primary),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: TextFormField(
        decoration: InputDecoration(
            labelText: placeholder,
            border: InputBorder.none,
            icon: Icon(Icons.attach_money)),
      ),
    );
  }
}
