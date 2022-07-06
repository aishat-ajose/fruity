import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruity/apiservice.dart';
import 'package:fruity/model.dart';
import 'package:fruity/fruit_db.dart';

class FruitDetails extends StatefulWidget {
  FruitDetails({Key? key}) : super(key: key);

  @override
  State<FruitDetails> createState() => _FruitDetailsState();
}

class _FruitDetailsState extends State<FruitDetails> {
  late List<FruitModel>? _fruitmodel = <FruitModel>[];

  @override
  void initState() {
    super.initState();
    _getData();
  }

  void _getData() async {
    _fruitmodel = (await ApiService.fetchfruits())!;
    Future.delayed(const Duration(seconds: 1)).then((value) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            child: fruitContainer(),
          ),
          Positioned(
              left: 100,
              right: 100,
              top: 550,
              bottom: 40,
              child: Container(
                height: 200,
                width: 200,
                padding: const EdgeInsets.fromLTRB(0, 30, 0, 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  //    backgroundBlendMode: ,
                ),
                child: Card(
                  elevation: 8,
                  color: Colors.white,
                ),
              )),
        ],
      ),
    );
  }

  Widget fruitContainer() {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: SvgPicture.asset('assets/Apple_Red.svg'),
    );
  }
}
