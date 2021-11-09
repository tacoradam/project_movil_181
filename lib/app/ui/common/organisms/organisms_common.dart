import 'package:flutter/material.dart';
import 'package:movil181/app/ui/common/molecules/molecules_common.dart';

class OrganismsCommon extends StatelessWidget {
  const OrganismsCommon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
  Widget bodyRegister(){
    return SingleChildScrollView(
      //controller: controller,
      padding: EdgeInsets.symmetric(horizontal: 30,vertical: 60),
      child: Column(
        children: <Widget>[
          MoleculesCommon().headerRegister(),
          SizedBox(height: 50),
          MoleculesCommon().form(),
        ],  
      ),
    );
  }
}

