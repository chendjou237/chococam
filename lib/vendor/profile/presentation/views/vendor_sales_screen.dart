import 'package:auto_route/auto_route.dart';
import 'package:chococam/app/common/constants.dart';
import 'package:chococam/app/extensions/build_context.dart';
import 'package:chococam/app/extensions/num.dart';
import 'package:chococam/vendor/home/presentation/views/vendor_create_order.dart';
import 'package:flutter/material.dart';

@RoutePage()
class VendorSalesScreen extends StatelessWidget {
  const VendorSalesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: SizedBox(),
        title: const Text('Sales'),
      ),
      body: Container(
        padding: EdgeInsets.all(KSizes.padding),
        width: double.infinity,
        child: Column(
          children: <Widget>[
            ChocoInput(
              icon: Icons.search_outlined,
              placeholder: 'search for the sale ...',
            ),
            16.vGap,
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title: Text(
                      'Moussa Store',
                      style: context.titleMdBold,
                    ),
                    subtitle: Text('690596603'),
                    leading: const Icon(Icons.store),
                    trailing: Text(
                      'Mobile Emana',
                      style: context.titleLg,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
