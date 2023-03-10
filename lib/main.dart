import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    )
  );
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
  Widget image_carousel = new Container(
    height: 200.0,
    child: new Carousel(
      boxFit: BoxFit.cover,
      images: [
        AssetImage('images/c1.jpg'),
        AssetImage('images/m1.jpeg'),
        AssetImage('images/w3.jpeg'),
        AssetImage('images/w4.jpeg'),
        AssetImage('images/m2.jpg '),
      ],
      autoplay: false,
      animationCurve: Curves.fastOutSlowIn,
      animationDuration: Duration(microseconds: 1000),
    ),
  );
  

    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.red,
        title: Text('FashionApp'),
        actions: [
          new IconButton(onPressed: () {}, icon: Icon(Icons.search, color: Colors.white)),
          new IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart, color: Colors.white))
        ],
      ),
      drawer: new Drawer(
        child: new ListView(
          children: [
            // header
            new UserAccountsDrawerHeader(
              accountName: Text("Muhammet Azadow"), 
              accountEmail: Text("azadowmuhammet20@gmail.com"),
              currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(Icons.person, color: Colors.white,),
                ),
                ),
                decoration: new BoxDecoration(
                  color: Colors.red
                ),
                ),

               InkWell( 
                onTap: () {},
                child: ListTile(
                  title: Text("Home Page"),
                  leading: Icon(Icons.home),
                )
               ),

                              InkWell( 
                onTap: () {},
                child: ListTile(
                  title: Text("My account"),
                  leading: Icon(Icons.person),
                )
               ),

                              InkWell( 
                onTap: () {},
                child: ListTile(
                  title: Text("My orders"),
                  leading: Icon(Icons.shopping_basket),
                )
               ),

                              InkWell( 
                onTap: () {},
                child: ListTile(
                  title: Text("Categories"),
                  leading: Icon(Icons.dashboard),
                )
               ),

                              InkWell( 
                onTap: () {},
                child: ListTile(
                  title: Text("Favourites"),
                  leading: Icon(Icons.favorite),
                )
               ),

               Divider(),

                              InkWell( 
                onTap: () {},
                child: ListTile(
                  title: Text("Settings"),
                  leading: Icon(Icons.settings, color: Colors.blue ,),
                )
               ),


                              InkWell( 
                onTap: () {},
                child: ListTile(
                  title: Text("About"),
                  leading: Icon(Icons.help, color: Colors.green,),
                )
               )

          ],
        ),
      ),

      body: new ListView(
        children: [
          image_carousel
        ],
      ),
    );
  }
}