import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Rubik'),
      home: const HomePage(),
    ));

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late PageController _pageController;

  List<String> titles = ["CAMERA", "CHAIR", "LAMP", "BEAUTYFUL GIRL"];

  String description =
      "Lorem ipsum dolor sit amet consectetur adipisicing elit." +
          "Non corporis quas voluptatum illum ipsa odit corrupti quibusdam " +
          "vel molestiae nostrum, voluptates veritatis animi. Nisi asperiores " +
          "delectus, tenetur quia ut eligendi!";

  @override
  void initState() {
    onScroll() => {};

    _pageController = PageController(initialPage: 0)..addListener(onScroll);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: <Widget>[
          pageItemView(
              page: 1,
              image: 'assets/images/camera.jpeg',
              title: titles[0],
              description: description),
          pageItemView(
              page: 2,
              image: 'assets/images/chair.jpeg',
              title: titles[1],
              description: description),
          pageItemView(
              page: 3,
              image: 'assets/images/lamp.jpeg',
              title: titles[2],
              description: description),
          pageItemView(
              page: 4,
              image: 'assets/images/girl.jpeg',
              title: titles[3],
              description: description)
        ],
      ),
    );
  }

  Widget pageItemView({image, page, title, description}) {
    int totalPage = 4;

    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
      ),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(begin: Alignment.bottomRight, stops: const [
            0.3,
            0.9,
          ], colors: [
            Colors.black.withOpacity(.9),
            Colors.black.withOpacity(.2)
          ]),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              const SizedBox(
                height: 40.0,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: SizedBox(
                  width: 80.0,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.8),
                          blurRadius: 5.0,
                          spreadRadius: 2.0,
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: <Widget>[
                        Text(
                          page.toString(),
                          style: const TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '/$totalPage',
                          style: const TextStyle(
                              color: Colors.black, fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        title.toUpperCase(),
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 20.0),
                      Row(
                        children: <Widget>[
                          Container(
                            margin: const EdgeInsets.only(right: 5.0),
                            child: const Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 15,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(right: 5.0),
                            child: const Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 15,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(right: 5.0),
                            child: const Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 15,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(right: 5.0),
                            child: const Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 15,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(right: 10.0),
                            child: const Icon(
                              Icons.star,
                              color: Colors.grey,
                              size: 15,
                            ),
                          ),
                          const Text(
                            "4.0",
                            style: TextStyle(color: Colors.white70),
                          )
                        ],
                      ),
                      const SizedBox(height: 20.0),
                      Padding(
                        padding: const EdgeInsets.only(right: 50.0),
                        child: Text(
                          description.toUpperCase(),
                          style: const TextStyle(
                            color: Colors.grey,
                            height: 2,
                            fontSize: 15,
                          ),
                        ),
                      ),
                      const SizedBox(height: 20.0),
                      Text(
                        "read more".toUpperCase(),
                        style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
