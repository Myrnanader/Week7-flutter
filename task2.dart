import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int i = 1; // Default value for counter

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: CircleAvatar(
              backgroundColor: const Color.fromARGB(255, 1, 1, 1),
              radius: 22,
              child: CircleAvatar(
                backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                child: IconButton(
                  icon: Icon(Icons.arrow_back),
                  iconSize: 25,
                  onPressed: () {},
                ),
              ),
            ),
            /*Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.black, width: 1.5),
              ),
              child: Center(
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.arrow_back, size: 18, color: Colors.black),
                  padding: EdgeInsets.zero,
                ),
              ),
            ),*/
          ),
          centerTitle: true,
          title: const Text("Details"),
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.favorite),
              color: const Color.fromARGB(255, 141, 38, 31),
              iconSize: 40,
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset("images/chair.webp", width: 400, height: 300),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Chair",
                    style: TextStyle(
                      fontSize: 30,
                      color: const Color.fromARGB(255, 91, 90, 90),
                    ),
                  ),
                  const Text(
                    "\$212",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Text(
                "Minimalist Style with pillow",
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              Text(
                "Loren ipsum dolor sit amet, consectetur adipiscing elit, sed eiusnod tenpor incidunt ut labore et dolore magna aliqua.Ut enin ad ninin venian, quis nostrun exercitation ulloan corporis suscipit laboriosan, nisi ut aliquid ex ea connodi consequatur",
                style: TextStyle(
                  fontSize: 16,
                  color: const Color.fromARGB(255, 25, 25, 25),
                ),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 8),
              
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      for (var color in [
                        const Color.fromARGB(255, 20, 91, 149),
                        const Color.fromARGB(255, 165, 44, 35),
                        const Color.fromARGB(255, 56, 131, 59),
                        const Color.fromARGB(255, 202, 187, 48),
                      ])
                        Container(
                          decoration: BoxDecoration(
                            color: color,
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.white, width: 2),
                          ),
                          width: 45,
                          height: 45,
                          // margin: const EdgeInsets.symmetric(horizontal: 1),
                        ),
                    ],
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        border: Border.all(width: 1),
                      ),
                      //padding: EdgeInsets.symmetric(horizontal: 5, vertical: 0),
                      margin: EdgeInsets.only(left: 0),
                      height: 50,

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            onPressed: () {
                              setState(() {
                                i++;
                              });
                            },
                            icon: Icon(Icons.add, size: 25),

                            // padding: EdgeInsets.zero,
                          ),
                          Text(
                            "$i",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              if (i >= 1) {
                                setState(() {
                                  i--;
                                });
                              }
                            },
                            icon: Icon(Icons.remove, size: 25),
                            padding: EdgeInsets.zero,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      border: Border.all(),
                      boxShadow: [
                        BoxShadow(
                          color: const Color.fromARGB(255, 215, 213, 213),
                          spreadRadius: 2,
                          blurRadius: 5,
                        ),
                      ],
                    ),
                    child: IconButton(
                      onPressed: () {},
                      iconSize: 30,
                      icon: const Icon(
                        Icons.favorite_border,
                        color: Color.fromARGB(255, 121, 24, 17),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 40,
                          vertical: 15,
                        ),
                      ),
                      onPressed: () {},
                      child: const Text(
                        "Add to cart",
                        style: TextStyle(fontSize: 25, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
