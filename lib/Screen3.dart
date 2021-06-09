import 'package:flutter/material.dart';

class ScreenThree extends StatefulWidget {
  @override
  _ScreenThreeState createState() => _ScreenThreeState();
}

class _ScreenThreeState extends State<ScreenThree> {
  var item1 =
      new Items("Iphone 12", "5.0 (23 Reviews)", "download.jpg", "\$10");
  var item2 =
      new Items("Note 20 Ultra", "5.0 (23 Reviews)", "iphone.jpg", "\$10");
  var item3 =
      new Items("Macbook Air", "5.0 (23 Reviews)", "macbook-pro.jpg", "\$10");
  var item4 =
      new Items("Macbook pro", "5.0 (23 Reviews)", "macbook.jpg", "\$10");
  var item5 =
      new Items("Iphone 12", "5.0 (23 Reviews)", "download.jpg", "\$10");
  var item6 =
      new Items("Gaming PC", "5.0 (23 Reviews)", "gaming-pc.jpg", "\$10");
  var item7 =
      new Items("Backlit Keyboard", "5.0 (23 Reviews)", "keyboard.jpg", "\$10");
  var item8 = new Items("Mercedes", "5.0 (23 Reviews)", "Mercedes.jpg", "\$10");
  @override
  Widget build(BuildContext context) {
    // MaterialApp(
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10),
              child: Container(
                width: 400,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xc0c0c0)),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    hintText: "Username",
                    suffixIcon: Icon(Icons.search),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 21.0, top: 15),
              child: Text("History"),
            ),
            SizedBox(height: 20),
            myCustomListTile(item1),
            myCustomListTile(item2),
            myCustomListTile(item3),
            myCustomListTile(item4),
            myCustomListTile(item5),
            myCustomListTile(item6),
            myCustomListTile(item7),
            myCustomListTile(item8),
          ],
        ),
      ),
    );
  }
}

Widget myCustomListTile(var itemProduct) {
  return ListTile(
    leading: CircleAvatar(
      radius: 36,
      backgroundImage: AssetImage(itemProduct.image),
    ),
    title: Text(
      itemProduct.title,
      style: TextStyle(
          color: Colors.black, fontSize: 15, fontWeight: FontWeight.w700),
    ),
    subtitle: Row(
      children: [
        Icon(
          Icons.star,
          size: 14,
          color: Colors.yellow,
        ),
        SizedBox(
          width: 6,
        ),
        Text(itemProduct.subtitle),
      ],
    ),
    trailing: Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Text(
        itemProduct.price,
        style: TextStyle(color: Colors.black),
      ),
    ),
  );
}

class Items {
  var title;
  var subtitle;
  var image;
  var price;

  Items(var title, var subtitle, var image, var price) {
    this.title = title;
    this.subtitle = subtitle;
    this.image = image;
    this.price = price;
  }
}
