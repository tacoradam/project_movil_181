import 'package:flutter/material.dart';
import 'package:movil181/app/ui/common/atoms/atoms_common.dart';
import 'package:movil181/app/ui/common/molecules/molecules_common.dart';

class OrganismsCommon extends StatelessWidget {
  const OrganismsCommon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }

  Widget bodyRegister() {
    return SingleChildScrollView(
      //controller: controller,
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 60),
      child: Column(
        children: <Widget>[
          MoleculesCommon().headerRegister(),
          SizedBox(height: 50),
          MoleculesCommon().form(),
        ],
      ),
    );
  }

  Widget categories() {
    return Container(
      child: Column(),
    );
  }

  Widget categoriesSlider(BuildContext context, String title, int opt) {
    if (opt == 1) {
      return Container(
          width: double.infinity,
          height: 210,
          //color: Colors.blueAccent,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: AtomsCommon().textTitle(title)),
              Expanded(
                child: ListaImgCategories(),
              ),
            ],
          ));
    } else if (opt == 2) {
      return Container(
          width: double.infinity,
          height: 210,
          //color: Colors.blueAccent,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: AtomsCommon().textTitle(title)),
              Expanded(
                child: ListaImagenesServicios(),
              ),
            ],
          ));
    } else {
      return AtomsCommon().textTitle('No existe');
    }
  }
}
