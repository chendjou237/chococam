import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class VendorActivityScreen extends StatelessWidget {
const VendorActivityScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Vendor Activity'),
      ),
      body: Container(),
    );
  }
}