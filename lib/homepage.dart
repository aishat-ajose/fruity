import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomePageScreen extends StatelessWidget {
  HomePageScreen({ Key? key }) : super(key: key);

  final Color fruittyGreyColor = Colors.grey.shade100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        // Maybe add a logo instead
        title: const Text(
          'Fruitty',
          style: TextStyle(fontSize:25.0, fontStyle: FontStyle.italic, color: Colors.black)
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              'Explore the Variety of Fruits',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize:23.0),
            ),
          ),

          search(),

          const SizedBox(height:20.0),

          Expanded(
            child: allFruits(),
          )          
        ],
      ),
    );
  }

  Widget search(){
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical:10.0),
    height: 50.0,
    width: double.infinity,
    margin: const EdgeInsets.symmetric( vertical: 20, horizontal: 30),
    decoration: BoxDecoration(
      color: fruittyGreyColor,
      borderRadius: BorderRadius.circular(20.0)
    ),

    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        Text('Search Here'),
        Icon(Icons.mic)
      ],
    ),
    
  );
}

  Widget allFruits(){
    return  SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical:20.0),
      width: double.infinity,
      decoration: BoxDecoration(
        color: fruittyGreyColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(50.0),
          topRight: Radius.circular(50.0)
        )
      ),

      child:  Wrap(
        children: [
          fruitContainer('Apple',),
          fruitContainer('Apple'),
          fruitContainer('Apple'),
          fruitContainer('Apple'),
          fruitContainer('Apple'),
          fruitContainer('Apple'),
          fruitContainer('Apple'),
          fruitContainer('Apple'),
          fruitContainer('Apple'),
          fruitContainer('Apple'),
          fruitContainer('Apple'),
          fruitContainer('Apple'),
        ],
      )
      )
    );
  }


  Widget fruitContainer(String name){
    return Padding(
      padding:  const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(3),
            width: 90,
            height:90,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
              border: Border.all(color: Colors.red, width: 1.5)
            ),
          
            child: Container(

              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.orange.shade100,
              ),

              // child: SvgPicture.asset('assets/fruit_svg/orange.svg'),
            ),
          ),
          const SizedBox(height: 10.0,),
          Text(
            name
          )
        ],
      ),
    );
  }
}


