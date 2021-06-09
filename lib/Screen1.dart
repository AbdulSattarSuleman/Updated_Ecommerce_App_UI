import 'package:flutter/material.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({key}) : super(key: key);

  @override
  _ScreenOneState createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  // var item1 =
  //     new Items("Iphone 12", "bike1.jpg", "234 goo", "123", "\$90", "10");
  var item1 =
      new Items("Iphone 12", "bike1.jpg", "234 goo", "123", "\$90", "10");
  var item2 = new Items("Note 20 Ultra", "iphone.jpg", " 5.0 (23 Reviews)",
      "20 pieces", '\$90', "1");
  var item3 = new Items("Macbook Air", "macbook-pro.jpg", " 5.0 (23 Reviews)",
      "20 pieces", '\$90', "1");
  var item4 = new Items("Macbook Pro", "macbook.jpg", " 5.0 (23 Reviews)",
      "20 pieces", '\$90', "1");
  var item5 = new Items("Gaming PC", "gaming-pc.jpg", " 5.0 (23 Reviews)",
      "20 pieces", '\$90', "1");
  var item6 = new Items("Keyboard", "keyboard.jpg", " 5.0 (23 Reviews)",
      "20 pieces", '\$90', "1");
  var item7 = new Items("Mercedes", "Mercedes.jpg", " 5.0 (23 Reviews)",
      "20 pieces", '\$90', "1");

  @override
  Widget build(BuildContext context) {
    // return MaterialApp(
    //   debugShowCheckedModeBanner: false,
    //   home:
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Ecom App UI",
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.w500,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: IconButton(
              icon: Icon(
                Icons.notifications_active,
                size: 24,
                color: Colors.black,
              ),
              onPressed: () {},
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            productOne(item1),
            SizedBox(
              height: 10,
            ),
            productOne(item2),
            SizedBox(
              height: 10,
            ),
            productOne(item3),
            SizedBox(
              height: 10,
            ),
            productOne(item4),
            SizedBox(
              height: 10,
            ),
            productOne(item5),
            SizedBox(
              height: 10,
            ),
            productOne(item6),
            SizedBox(
              height: 10,
            ),
            productOne(item7),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}

Widget productOne(var itemProduct) {
  return Padding(
    padding: const EdgeInsets.only(left: 10.0, right: 10),
    child: Container(
      width: double.infinity,
      height: 120,
      decoration: BoxDecoration(
          // border: Border(
          //   left: BorderSide(color: Colors.black26, width: 2.0),
          //   bottom: BorderSide(color: Colors.black38, width: 1),
          // ),
          borderRadius: BorderRadius.circular(7),
          border: Border.all(color: Colors.grey)),
      child: Row(
        children: [
          Container(
            height: 130,
            width: 130,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                itemProduct.image,
                // height: 130,
                // width: 130,
                fit: BoxFit.fill,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 5,
                ),
                Text(
                  itemProduct.title,
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 19,
                      letterSpacing: -1),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 15,
                    ),
                    Text(itemProduct.desc),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      itemProduct.stock,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      itemProduct.price,
                      style: TextStyle(
                          color: Colors.purple,
                          fontWeight: FontWeight.w700,
                          fontSize: 16),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text('Quanity: ${itemProduct.quantity}')
              ],
            ),
          )
        ],
      ),
    ),
  );
}

class Items {
  // field
  var title;
  var image;
  var desc;
  var price;
  var stock;
  var quantity;

  Items(
    var title,
    var image,
    var desc,
    var price,
    var stock,
    var quantity,
  ) {
    this.title = title;
    this.image = image;
    this.desc = desc;
    this.price = price;
    this.stock = stock;
    this.quantity = quantity;
  }
}
