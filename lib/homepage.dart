import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Image.asset('lib/logo.png',),
      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20.0,),

          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child:  Text(
              'Explore the variety of Fruits',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: Colors.black
              ),
            ),
          ),

          search(),

          const SizedBox(height: 20.0,),

          Expanded(
            child: allFruitContainer()
          )
        ],
      ),

    );
  }

  Widget search(){
    return Container(
      margin: const EdgeInsets.all(20.0),
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      height: 50.0,
      width: double.infinity,

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        color: Colors.grey.shade200
      ),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text(
            'Search here'
          ),

          Icon(Icons.mic)
        ],
      ),
    );
  }


  Widget allFruitContainer(){

    List<String> fruits = ['Apple', 'Strawberry', 'Orange', 'Banana', 'Cherry', 'Mango', 'Apple', 'Strawberry', 'Orange', 'Banana', 'Cherry', 'Mango', 'Apple', 'Strawberry', 'Orange', 'Banana', 'Cherry', 'Mango'];
    
    return Container(
    
      width: double.infinity,

      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(50.0),
          topRight: Radius.circular(50.0)
        ),
        color: Colors.grey.shade200
      ),

      child: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        scrollDirection: Axis.vertical,
        child: Wrap(
          children: fruits.map((fruit) => fruitContainer(fruit)).toList().cast<Widget>()
        ),
      ),
    );
  }

  Widget fruitContainer(String fruit){
    return Container(
      margin: const EdgeInsets.all(13.0),
      child: Column(
        children: [
          Container(
            height: 90.0,
            width:  90.0,
            padding: const EdgeInsets.all(5.0),

            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
              border: Border.all(color: Colors.green, width: 0.7),
            ),

            child:  Container(
              decoration:  BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.yellow.shade100
              ),

              child:SvgPicture.asset('')
            ),
          ),
        
          const SizedBox(height: 10.0,),

          Text(
            fruit,
            style: const TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 16
            ),
          )
        ],
      ),
    );
  }

}
