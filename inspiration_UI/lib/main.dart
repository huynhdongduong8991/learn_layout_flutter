import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(
  const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
  )
);

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(244, 243, 243, 1),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.menu, color: Colors.black87),
          onPressed: () => {},
        ),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(bottom: Radius.circular(30.0)),
              ),
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Text("Find Your", style: TextStyle(color: Colors.black87, fontSize: 25),),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text("Inspiration", style: TextStyle(color: Colors.black87, fontSize: 40),),
                  const SizedBox(height: 20,),
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(244, 243, 243, 1),
                      borderRadius: BorderRadius.circular(15.0)
                    ),
                    child: const TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.search),
                        hintText: "Search you're looking for",
                        hintStyle: TextStyle(color: Colors.grey, fontSize: 15),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20,),
                ],
              ),
            ),
            const SizedBox(height: 20,),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Text("Promo Today", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                  const SizedBox(height: 20,),
                  Container(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        promoCard("images/one.jpeg"),
                        promoCard("images/two.jpeg"),
                        promoCard("images/three.jpeg"),
                        promoCard("images/four.webp"),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20,),
                  bestImagesContainer("images/two.jpeg"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget promoCard(String imagePath) {
  return AspectRatio(
    aspectRatio: 2.62 / 3,
    child: Container(
      margin: const EdgeInsets.only(right: 15.0),
      decoration: BoxDecoration(
        color: const Color.fromRGBO(165, 214, 167, 1),
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(imagePath)
        )
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            stops: const [0.1, 0.9],
            colors: [
              Colors.black.withOpacity(.8),
              Colors.black.withOpacity(.1),
            ]
          )
        ),
      ),
    ),
  );
}

Container bestImagesContainer(String imagePath) {
  return Container(
    width: double.infinity,
    height: 200,
    decoration: BoxDecoration(
      color: Colors.black,
      borderRadius: BorderRadius.circular(20),
      image: DecorationImage(
        fit: BoxFit.cover,
        image: AssetImage(imagePath)
      )
    ),
    child: const Padding(
      padding: EdgeInsets.all(15.0),
      child: Align(
        alignment: Alignment.bottomLeft,
        child: Text("Best images", style: TextStyle(fontSize: 25, color: Colors.white),),
      )
    )  
  );
}
