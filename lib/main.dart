import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AmazonApp(),
    );
  }
}

class AmazonApp extends StatefulWidget {
  @override
  _AmazonAppState createState() => _AmazonAppState();
}

class _AmazonAppState extends State<AmazonApp> {

  List<String> ImgUrl = [
    "https://in.jbl.com/on/demandware.static/-/Sites-masterCatalog_Harman/default/dw4a6e76c7/C150SI-black1-hero-1605x1605px.png",
    "https://purepng.com/public/uploads/large/samsung-galaxy-s10-prism-front-6bx.png",
    "https://www.mypinnacleview.com/wp-content/uploads/2017/07/macbook-pro-png.png",
    "https://static.bhphoto.com/images/images2500x2500/1574693242_1297189.jpg",
    "https://images-na.ssl-images-amazon.com/images/I/61fTX5TjAEL._UX569_.jpg",
    "https://images-eu.ssl-images-amazon.com/images/G/31/img17/PC/sprocket/Tile-2-1._SS200_.jpg",
    "https://images-eu.ssl-images-amazon.com/images/I/51JKnkxCl7L._AC_SX184_.jpg",
    "https://images-na.ssl-images-amazon.com/images/I/710tUwxHq7L._UL1500_.jpg",
    "https://images-na.ssl-images-amazon.com/images/I/61LQQSc9fZL._UL1440_.jpg",

  ];
  Widget Items(String name,String category,String imgUrl, String price)
  {
    return InkWell(
      onTap: (){},
        child: Container(
        width: 180.0,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadiusDirectional.circular(8.0)
        ),
        child: Column(
          children: [
            Image(
                image: NetworkImage(imgUrl),
                width: 170.0,
                height: 160.0,
                alignment: Alignment.center,
            ),
            Text(
              name,
              style: TextStyle(fontSize: 22.0),
            ),
            Text(
              category,
              style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.grey,
              ),
            ),Text(
              '💲 $price',
              style: TextStyle(fontSize: 22.0,
                color: Color(0xFFFF9900)
              ),
            ),
          ],
        ),
    ),
      );
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF10161D),
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.white,
              size: 27.0,
            ),
            onPressed: (){},
          ),
          title: Text("AMAZON",
          style: TextStyle(
            color: Color(0xFFFF9900),
            fontSize: 20,
            fontStyle: FontStyle.italic,
          ),
          ),
          backgroundColor: Color(0xFF222e3D),
          centerTitle: true,
          actions: [
            // ignore: deprecated_member_use
            FlatButton(
                onPressed: (){},
                child: Icon(Icons.shopping_cart,color: Colors.white,size: 27,),
            )
          ],
        ),
        body: SingleChildScrollView(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 38,vertical: 20.0),
                      child: TextField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(20.0),
                            focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(color: Colors.transparent)
                          ),
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.black
                          ),
                          hintText: "Search...",
                          fillColor: Colors.white,
                          filled: true
                        ),
                      ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text("New Items",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 28.0
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 250.0,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Items("JBL headphones", 'Audio', ImgUrl[0], "63.3"),
                        Items("SumSung",'smartphone', ImgUrl[1], "633.3"),
                        Items("MackBook pro", 'Tech', ImgUrl[2], "1200.56"),
                        Items("Blue yeti","Audio",ImgUrl[3],'1263'),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text("Recomended",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 28.0
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 250.0,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Items("Jacket", 'Fashion', ImgUrl[4], "63.3"),
                        Items("IMac Pro",'Tech', ImgUrl[5], "633.3"),
                        Items("Books", 'Books', ImgUrl[6], "12.56"),
                        Items("SunGlasses","Fashion",ImgUrl[7],'6'),
                        Items("Watch","Fashion",ImgUrl[8],'600.9'),
                      ],
                    ),
                  ),
                ],
              ),
            )
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color(0xFF10161d),
          selectedItemColor: Color(0xFFFF9900),
          unselectedItemColor: Colors.white,
          items: [
            BottomNavigationBarItem(
                icon:Icon(Icons.home),
                // ignore: deprecated_member_use
                title:Text("Home")
            ),
            BottomNavigationBarItem(
                icon:Icon(Icons.favorite),
                // ignore: deprecated_member_use
                title:Text("Favorite")
            ),
            BottomNavigationBarItem(
                icon:Icon(Icons.person),
                // ignore: deprecated_member_use
                title:Text("User")
            ),
          ],
        ),
      ),
    );
  }
}

