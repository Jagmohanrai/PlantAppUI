import 'package:flutter/material.dart';

class PlantPage extends StatefulWidget {
  final name;
  final price;
  final imglink;

  const PlantPage({Key key, this.name, this.price, this.imglink})
      : super(key: key);
  @override
  _PlantPageState createState() => _PlantPageState();
}

class _PlantPageState extends State<PlantPage> {
  Color color = const Color.fromRGBO(81, 184, 159, 1);
  Widget iconspack({String quantity, String duration, IconData icon}) {
    return Column(
      children: [
        Icon(
          icon,
          size: 28,
          color: Color.fromRGBO(81, 184, 159, 1),
        ),
        Text(
          duration,
        ),
        Text(
          quantity,
          style: TextStyle(color: Colors.black45),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Color.fromRGBO(227, 230, 251, 1),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
            height: 300,
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Image.asset(widget.imglink),
                ),
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.navigate_before,
                      size: 35,
                      color: Colors.grey,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment(0.12, 0.85),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(3),
                      child: Icon(
                        Icons.favorite_border,
                        size: 22,
                        color: Colors.red,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.name,
                  style: TextStyle(
                    fontSize: 22,
                    color: Color.fromRGBO(81, 184, 159, 1),
                  ),
                ),
                Text(
                  "Rs ${widget.price}",
                  style: TextStyle(
                    fontSize: 22,
                    color: Color.fromRGBO(81, 184, 159, 1),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              "Information",
              style: TextStyle(color: Colors.black54, fontSize: 18),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
            child: Text(
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make it work.",
              style: TextStyle(fontSize: 16, color: Colors.black45),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                iconspack(
                    icon: Icons.ac_unit, duration: '1', quantity: 'month'),
                iconspack(
                    icon: Icons.cloud_outlined,
                    duration: '3',
                    quantity: 'hours'),
                iconspack(
                    icon: Icons.outdoor_grill_sharp,
                    duration: '2',
                    quantity: 'days'),
                iconspack(
                    icon: Icons.accessible_forward_rounded,
                    duration: '15',
                    quantity: 'cm'),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Quantity",
                  style: TextStyle(color: Colors.black87, fontSize: 20),
                ),
                Container(
                  height: 40,
                  width: 120,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 24,
                        width: 24,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color.fromRGBO(81, 184, 159, 1)),
                        child: Icon(
                          Icons.horizontal_rule,
                          size: 18,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        '2',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black87,
                        ),
                      ),
                      Container(
                        height: 24,
                        width: 24,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color.fromRGBO(81, 184, 159, 1)),
                        child: Icon(
                          Icons.add,
                          size: 20,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color.fromRGBO(81, 184, 159, 1),
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black45,
            blurRadius: 15,
          ),
        ], color: Colors.white),
        height: 80,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Total Price :',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Color.fromRGBO(81, 184, 159, 1),
                    ),
                  ),
                  Text(
                    'Rs 80.000',
                    style: TextStyle(
                      fontSize: 23,
                      color: Color.fromRGBO(81, 184, 159, 1),
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
              Container(
                height: 50,
                width: 180,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Add to Basket',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      Icon(
                        Icons.shopping_bag_outlined,
                        color: Colors.white,
                        size: 24,
                      )
                    ],
                  ),
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Color.fromRGBO(81, 184, 159, 1)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
