import 'package:auto_route/auto_route.dart';
import 'package:chococam/app/common/constants.dart';
import 'package:chococam/app/extensions/build_context.dart';
import 'package:chococam/app/extensions/num.dart';
import 'package:chococam/app/router/app_router.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

@RoutePage()
class VendorHomeScreen extends StatelessWidget {
  const VendorHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(),
        centerTitle: true,
        title: const Text('Vendor Home'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.router.push(const VendorCreateOrderRoute());
        },
        child: const Icon(Icons.add),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: KSizes.padding),
        child: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Historique des ventes',
                style: context.titleLg,
              ),
              16.vGap,
              Expanded(
                child: ListView.builder(
                  itemCount: 10,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      title: Text(
                        'CHDL398473xs',
                        style: context.titleMdBold,
                      ),
                      subtitle: Text('12/12/2021'),
                      leading: const Icon(Icons.receipt_long),
                      trailing: Text(
                        '12,000 XAF',
                        style: context.titleLg,
                      ),
                    );
                  },
                ),
              ),
              //ChocoTile(title: title, subtitle: subtitle)

              // ChocoTile(
              //   title: 'Identifiant',
              //   subtitle: 'UIO38478',
              //   icon: const Icon(Icons.person),
              // ),
              // 4.vGap,
              // ChocoTile(
              //   title: 'Telephone',
              //   subtitle: '237690596606',
              //   icon: Icon(Icons.phone),
              // ),
              // 8.vGap,
              // Container(
              //   width: double.infinity,
              //   height: 200,
              //   decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(8),
              //     color: context.colorScheme.primary,
              //   ),
              //   child: Column(
              //     mainAxisAlignment: MainAxisAlignment.center,
              //     children: [
              //       Icon(Icons.camera),
              //       4.vGap,
              //       Text(
              //         'Scan the Receipt',
              //         style: context.titleLg.copyWith(color: Colors.white),
              //       ),
              //     ],
              //   ),
              // )
            ],
          ),
        ),
      ),
    );
  }
}

class ChocoTile extends StatelessWidget {
  const ChocoTile({
    super.key,
    required this.title,
    required this.subtitle,
    this.icon,
  });

  final String title;
  final String subtitle;
  final Icon? icon;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: icon,
      title: Text(
        title,
        style: context.titleLg,
      ),
      subtitle: Text(subtitle),
    );
  }
}
