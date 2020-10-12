import 'package:flutter/material.dart';
import 'package:plantshop/plantpage.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  Widget plantCaer(
      {String name, String price, String imglink, bool small = false}) {
    TextStyle style = TextStyle(
      fontSize: small ? 15 : 18,
    );
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            color: Color.fromRGBO(227, 230, 251, 1),
            borderRadius: BorderRadius.circular(20)),
        width: small ? 130 : 170,
        child: Stack(
          children: [
            Image.asset(
              imglink,
              height: small ? 140 : 200,
              width: 170,
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      name,
                      style: style,
                    ),
                    Text(
                      price,
                      style: style,
                    )
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: Icon(
                      Icons.favorite_border,
                      size: 18,
                      color: Colors.red,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Eve's Garden",
            style: TextStyle(color: Colors.green),
          ),
          leading: Icon(
            Icons.menu,
            color: Colors.grey,
            size: 30,
          ),
          elevation: 0,
          backgroundColor: Colors.white,
          actions: [
            FlatButton(
              onPressed: () {},
              child: Icon(
                Icons.notifications_none,
                size: 30,
                color: Colors.grey,
              ),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: ListView(
            children: [
              Card(
                color: Color.fromRGBO(237, 247, 251, 1),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                elevation: 3,
                child: ListTile(
                  leading: Icon(Icons.search),
                  title: Align(
                    alignment: Alignment.centerLeft,
                    child: TextFormField(
                      style: TextStyle(fontSize: 18),
                      decoration: InputDecoration.collapsed(
                        hintText: "Search your Plant",
                        hintStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                  trailing: Icon(Icons.mic),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Row(
                  children: [
                    Text(
                      'Recommendation',
                      style: TextStyle(fontSize: 18, color: Colors.black87),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        'Best Seller',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black38,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 250,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PlantPage(
                              imglink: "assets/plant.png",
                              name: 'Crassula',
                              price: '50.000',
                            ),
                          ),
                        );
                      },
                      child: plantCaer(
                        imglink: "assets/plant.png",
                        name: 'Crassula',
                        price: '50.000',
                      ),
                    ),
                    plantCaer(
                      imglink: "assets/plant.png",
                      name: 'Ariocarpus',
                      price: '40.000',
                    ),
                  ],
                ),
              ),
              Container(
                height: 60,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Text(
                        'Synthesis',
                        style: TextStyle(fontSize: 18, color: Colors.black87),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(
                          'Organic',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black38,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(
                          'Outdoor',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black38,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(
                          'Indoor',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black38,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    plantCaer(
                      imglink: "assets/plant.png",
                      name: 'Pepromia',
                      price: '30.000',
                      small: true,
                    ),
                    plantCaer(
                      imglink: "assets/plant.png",
                      name: 'Asplenium',
                      price: '44.000',
                      small: true,
                    ),
                    plantCaer(
                      imglink: "assets/plant.png",
                      name: 'Neupholepi',
                      price: '43.000',
                      small: true,
                    ),
                    plantCaer(
                      imglink: "assets/plant.png",
                      name: 'Ariocarpus',
                      price: '10.000',
                      small: true,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: Colors.black,
                blurRadius: 5,
              ),
            ],
          ),
          child: BottomNavigationBar(
            unselectedItemColor: Colors.grey,
            selectedItemColor: Color.fromRGBO(81, 184, 159, 1),
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                  label: 'Home',
                  icon: Icon(
                    Icons.home,
                  )),
              BottomNavigationBarItem(
                label: 'Chat',
                icon: Icon(Icons.chat),
              ),
              BottomNavigationBarItem(
                label: 'Wishlist',
                icon: Icon(
                  Icons.favorite_border,
                ),
              ),
              BottomNavigationBarItem(
                label: 'Basket',
                icon: Icon(
                  Icons.shopping_bag_outlined,
                ),
              ),
              BottomNavigationBarItem(
                label: 'Account',
                icon: Icon(
                  Icons.account_circle_outlined,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
