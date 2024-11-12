import 'package:flutter/material.dart';
import 'package:uas_kopisop/pages/details.dart';
import '/widget/widget_support.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool coffee = false, tea = false, bread = false, dessert = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(top: 50, left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Skibidi Coffee",
                  style: AppWidget.boldTextFeildStyle(),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 20),
                  padding: const EdgeInsets.all(3),
                  decoration: const BoxDecoration(color: Colors.black),
                  child: const Icon(
                    Icons.shopping_cart,
                    color: Colors.white,
                  ),
                )
              ],
            ),
            const SizedBox(height: 30),
            Text("Delightful Coffee!", style: AppWidget.HeaderTextFeildStyle()),
            Text("Discover for Coffee and More!",
                style: AppWidget.LightTextFeildStyle()),
            const SizedBox(height: 20),
            Container(
                margin: const EdgeInsets.only(right: 20), child: showItem()),
            const SizedBox(
              height: 30,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Details()));
                    },
                    child: Container(
                      margin: const EdgeInsets.all(5),
                      child: Material(
                        elevation: 5,
                        borderRadius: BorderRadius.circular(15),
                        child: Container(
                          padding: const EdgeInsets.all(15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset("images/depresso.jpg",
                                  height: 150, width: 150, fit: BoxFit.cover),
                              Text("Espresso",
                                  style: AppWidget.semiBoldTextFeildStyle()),
                              const SizedBox(height: 5),
                              Text("Rasa Pekat + Kuat",
                                  style: AppWidget.LightTextFeildStyle()),
                              const SizedBox(height: 5),
                              Text("Rp.20.000",
                                  style: AppWidget.semiBoldTextFeildStyle())
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 15),
                  Container(
                    margin: const EdgeInsets.all(4),
                    child: Material(
                      elevation: 5,
                      borderRadius: BorderRadius.circular(15),
                      child: Container(
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset("images/mokalate.jpg",
                                height: 150, width: 150, fit: BoxFit.cover),
                            Text("Mocha Latte",
                                style: AppWidget.semiBoldTextFeildStyle()),
                            const SizedBox(height: 5),
                            Text("Kopi + Cokelat",
                                style: AppWidget.LightTextFeildStyle()),
                            const SizedBox(height: 5),
                            Text("Rp.25.000",
                                style: AppWidget.semiBoldTextFeildStyle())
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Container(
              margin: EdgeInsets.only(right: 20),
              child: Material(
                elevation: 5,
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  padding: EdgeInsets.all(5),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        "images/coltbru.jpg",
                        height: 120,
                        width: 120,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(width: 20),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Text(
                                "Cold Brew Coffee",
                                style: AppWidget.semiBoldTextFeildStyle(),
                              ),
                            ),
                            SizedBox(height: 5),
                            Container(
                              child: Text(
                                "Kopi segar diseduh dingin",
                                style: AppWidget.LightTextFeildStyle(),
                              ),
                            ),
                            SizedBox(height: 5),
                            Container(
                              child: Text(
                                "Rp.20.000",
                                style: AppWidget.semiBoldTextFeildStyle(),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget showItem() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            coffee = true;
            tea = false;
            bread = false;
            dessert = false;
            setState(() {});
          },
          child: Material(
            elevation: 5,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(
                  color: coffee ? Colors.black : Colors.white,
                  borderRadius: BorderRadius.circular(10)),
              padding: const EdgeInsets.all(8),
              child: Image.asset(
                "images/kopiikon.png",
                height: 50,
                width: 50,
                fit: BoxFit.cover,
                color: coffee ? Colors.white : Colors.black,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            coffee = false;
            tea = true;
            bread = false;
            dessert = false;
            setState(() {});
          },
          child: Material(
            elevation: 5,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(
                  color: tea ? Colors.black : Colors.white,
                  borderRadius: BorderRadius.circular(10)),
              padding: const EdgeInsets.all(8),
              child: Image.asset(
                "images/tea.png",
                height: 50,
                width: 50,
                fit: BoxFit.cover,
                color: tea ? Colors.white : Colors.black,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            coffee = false;
            tea = false;
            bread = true;
            dessert = false;
            setState(() {});
          },
          child: Material(
            elevation: 5,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(
                  color: bread ? Colors.black : Colors.white,
                  borderRadius: BorderRadius.circular(10)),
              padding: const EdgeInsets.all(8),
              child: Image.asset(
                "images/bret.png",
                height: 50,
                width: 50,
                fit: BoxFit.cover,
                color: bread ? Colors.white : Colors.black,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            coffee = false;
            tea = false;
            bread = false;
            dessert = true;
            setState(() {});
          },
          child: Material(
            elevation: 5,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(
                  color: dessert ? Colors.black : Colors.white,
                  borderRadius: BorderRadius.circular(10)),
              padding: const EdgeInsets.all(8),
              child: Image.asset(
                "images/dessert.png",
                height: 50,
                width: 50,
                fit: BoxFit.cover,
                color: dessert ? Colors.white : Colors.black,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
