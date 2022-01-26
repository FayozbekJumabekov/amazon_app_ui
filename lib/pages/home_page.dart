import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  static final String id = "home_page";

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
          backgroundColor: Color.fromRGBO(12, 129, 151, 1),
          elevation: 0,
          title: Image(
            fit: BoxFit.cover,
            width: 100,
            image: AssetImage("assets/images/amazon_logo.png"),
          ),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.mic)),
            IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart)),
          ],
          bottom: PreferredSize(
            preferredSize: Size(250, 80),
            child: Container(
              margin: EdgeInsets.only(left: 15, right: 15, bottom: 20),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(5)),
              child: TextField(
                cursorColor: Colors.black,
                decoration: InputDecoration(
                    hintText: "What are you looking for?",
                    hintStyle: TextStyle(color: Colors.black.withOpacity(0.5)),
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.blue,
                    ),
                    suffixIcon: Icon(
                      Icons.camera_alt,
                      color: Colors.blue,
                    ),
                    contentPadding: EdgeInsets.all(15),
                    border: InputBorder.none),
              ),
            ),
          )),
      drawer: Drawer(),
      body: ScrollConfiguration(
        behavior: ScrollBehavior(),
        child: GlowingOverscrollIndicator(
          axisDirection: AxisDirection.down,
          color: Color.fromRGBO(12, 129, 151, 1),
          child: SingleChildScrollView(
            child: Column(
              children: [
                /// # Location text
                Container(
                  padding: EdgeInsets.all(10),
                  width: double.infinity,
                  color: Colors.blueGrey.shade400,
                  child: Row(
                    children: [
                      Icon(
                        Icons.location_pin,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Deliver to Korea, Republic of",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),

                /// # Car image
                Container(
                  height: (MediaQuery.of(context).orientation ==
                      Orientation.portrait)
                      ? MediaQuery.of(context).size.height * 0.15
                      : MediaQuery.of(context).size.width * 0.2,
                  padding: EdgeInsets.only(right: 20),
                  color: Colors.white,
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [

                      Container(
                        height: 150,
                        width: MediaQuery.of(context).size.width / 2,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.horizontal(
                                right: Radius.circular(100)),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("assets/images/image_1.jpeg"),
                            )),
                      ),
                      Text(
                        "We ship 45million \n products",
                        style: TextStyle(
                            fontSize: 15, color: Colors.black.withOpacity(0.8)),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),

                /// # Sign in Button
                Container(
                  padding: EdgeInsets.all(20),
                  color: Colors.white,
                  height: (MediaQuery.of(context).orientation ==
                      Orientation.portrait)
                      ? MediaQuery.of(context).size.height * 0.2
                      : MediaQuery.of(context).size.width * 0.2,
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        "Sign in for the best experience",
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          "Sign In",
                          style: TextStyle(color: Colors.black, fontSize: 16),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          fixedSize: Size(250, 50),
                        ),
                      ),
                      Text(
                        "Create an account",
                        style: TextStyle(color: Colors.blue, fontSize: 16),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),

                /// #Deal of the day
                Container(
                  padding: EdgeInsets.all(20),
                  height: (MediaQuery.of(context).orientation ==
                      Orientation.portrait)
                      ? MediaQuery.of(context).size.height * 0.4
                      : MediaQuery.of(context).size.width * 0.6,
                  color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        "Deal of the Day",
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                      Image(

                        height: (MediaQuery.of(context).orientation ==
                            Orientation.portrait)
                            ? MediaQuery.of(context).size.height * 0.25
                            : MediaQuery.of(context).size.width * 0.4, fit: BoxFit.cover,
                        image: AssetImage("assets/images/item_7.jpeg"),
                      ),
                      Text(
                        "Up to 31% off APC UPS Battery Back \n\$10.99-\$79.9",
                        style: TextStyle(color: Colors.black.withOpacity(0.6)),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),

                /// Best Sellers
                Container(
                  //  height: MediaQuery.of(context).size.height * 0.52,
                  color: Colors.white,
                  padding: EdgeInsets.only(left: 20, right: 20, top: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        "Best sellers in Electronics",
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      GridView.builder(
                        padding: EdgeInsets.only(bottom: 20),
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: 4,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            mainAxisSpacing: 10,
                            crossAxisSpacing: 10,
                            childAspectRatio: 0.9,
                            crossAxisCount: 2),
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                        "assets/images/item_${index + 1}.jpeg"))),
                          );
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),

                Container(
                  height: MediaQuery.of(context).size.height * 0.63,
                  color: Colors.white,
                  padding: EdgeInsets.only(left: 20, right: 20, top: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        "Top products in Camera",
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                      SizedBox(
                        height: 20,
                      ),

                      Container(
                        height: MediaQuery.of(context).size.height * 0.55,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Image(
                              height: MediaQuery.of(context).size.height * 0.3,
                              fit: BoxFit.cover,
                              image: AssetImage("assets/images/item_7.jpeg"),
                            ),
                            SizedBox(height: 10,),
                            Expanded(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Expanded(
                                    child: Image(
                                      fit: BoxFit.cover,
                                      image: AssetImage("assets/images/item_2.jpeg"),
                                    ),
                                  ),
                                  SizedBox(width: 10,),

                                  Expanded(
                                    child: Image(
                                      fit: BoxFit.cover,
                                      image: AssetImage("assets/images/item_3.jpeg"),
                                    ),
                                  )
                                ],

                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
