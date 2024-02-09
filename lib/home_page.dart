import 'package:flutter/material.dart';
import 'package:flutter_asignment/model/product.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Product> lstProduct = [
    Product(name: "Studio 11", imagePath: 'assets/Studio 11.png'),
    Product(name: "Beauty", imagePath: 'assets/beauty.png'),
    Product(name: "Ratnadeep", imagePath: 'assets/Ratnadeep.png'),
    Product(name: "Nykaa", imagePath: 'assets/Nykaa.png'),
    Product(name: "Fruit", imagePath: 'assets/fruit.png'),
    Product(name: "Biscuit", imagePath: 'assets/biscuit.png'),
    Product(name: "Tata", imagePath: 'assets/Tata.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: AppBar(
            leading: BackButton(
              color: Colors.white,
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Container(
                  width: 60,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(13),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.add_outlined,
                        color: Colors.yellow,
                      ),
                      Text(
                        '266',
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ),
              )
            ],
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(100),
              child: AppBar(
                backgroundColor: Color.fromARGB(255, 60, 149, 216),
                title: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(
                        color: Colors.white, // Choose your border color here
                        width: 1.0, // Adjust the border width as needed
                      ),
                    ),
                    child: const TextField(
                      decoration: InputDecoration(
                        hintText: 'Search',
                        border: InputBorder.none,
                        icon: Icon(Icons.search),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            backgroundColor: Color.fromARGB(255, 60, 149, 216),
            title: Text(
              "Upload Bills",
              style: TextStyle(color: Colors.white),
            )),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Container(
              height: 80,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: lstProduct.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          CircleAvatar(
                            backgroundImage:
                                AssetImage(lstProduct[index].imagePath),
                          ),
                          Text(lstProduct[index].name)
                        ],
                      ),
                    );
                  }),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              width: double.infinity,
              height: 40,
              // Makes the container full width
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.center,
                  end: Alignment.bottomRight,
                  colors: [
                    Colors.blueGrey,
                    Colors.lightBlue
                  ], // Dark to light gradient colors
                ),
                borderRadius:
                    BorderRadius.circular(10), // Adjust the radius as needed
              ),
              child: Center(
                child: Text(
                  "Latest Details",
                  style: TextStyle(
                    color: Colors.white, // Text color
                    fontSize: 18, // Adjust font size as needed
                    fontWeight: FontWeight.bold, // Adjust font weight as needed
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: ListView.builder(
                itemCount: lstProduct.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    leading: Image.asset(
                      lstProduct[index].imagePath,
                      width: 100,
                      height: 100,
                    ),
                    title: Text(lstProduct[index].name),
                    subtitle: const Row(
                      children: [
                        Icon(
                          Icons.add_outlined,
                          color: Colors.yellow,
                        ),
                        Text('124'),
                      ],
                    ),
                    trailing: Container(
                      height: 25,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4.0),
                        border: Border.all(
                          color: Colors.grey,
                          width: 1.0,
                        ),
                      ),
                      constraints: BoxConstraints(
                          maxWidth: 200.0), // Adjust width as needed
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(4.0),
                        child: Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Text(
                            'Limit:35',
                          ),
                        ),
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
