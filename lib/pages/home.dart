import 'package:flutter/material.dart';
import 'package:uas_kopisop/pages/details.dart';
import '/widget/widget_support.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              Text(
                "Skibidi Coffee",
                style: AppWidget.boldTextFeildStyle(),
              ),
              const SizedBox(height: 5),
              Text(
                "Delightful Coffee!",
                style: AppWidget.HeaderTextFeildStyle(),
              ),
              Text(
                "Discover for Coffee and More!",
                style: AppWidget.LightTextFeildStyle(),
              ),
              const SizedBox(height: 20),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    _buildMenuItem(
                      context,
                      imagePath: "images/depresso.jpg",
                      title: "Espresso",
                      description: "Kopi dengan rasa kuat dan pekat",
                      price: "Rp.20.000",
                    ),
                    const SizedBox(width: 15),
                    _buildMenuItem(
                      context,
                      imagePath: "images/mokalate.jpg",
                      title: "Mocha Latte",
                      description: "Kopi, cokelat, dan susu lembut",
                      price: "Rp.25.000",
                    ),
                    const SizedBox(width: 15),
                    _buildMenuItem(
                      context,
                      imagePath: "images/murica.jpg",
                      title: "Americano",
                      description: "Kopi hitam tanpa susu",
                      price: "Rp.20.000",
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              _buildListItem(
                context,
                imagePath: "images/tehtarik.jpg",
                title: "Teh Tarik",
                description: "Teh susu manis dengan foam",
                price: "Rp.15.000",
              ),
              const SizedBox(height: 20),
              _buildListItem(
                context,
                imagePath: "images/toast.jpg",
                title: "Bulgogi Toast",
                description: "Roti renyah dengan daging bulgogi",
                price: "Rp.35.000",
              ),
              const SizedBox(height: 20),
              _buildListItem(
                context,
                imagePath: "images/choco.jpg",
                title: "Choco Lava Cake",
                description: "Kue cokelat dengan filling cokelat",
                price: "Rp.50.000",
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMenuItem(BuildContext context,
      {required String imagePath,
      required String title,
      required String description,
      required String price}) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Details(
              title: title,
              imagePath: imagePath,
              description: description,
              price: price,
            ),
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.all(5),
        child: Material(
          elevation: 5,
          borderRadius: BorderRadius.circular(15),
          child: Container(
            width: 200,
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  imagePath,
                  height: 150,
                  width: 200,
                  fit: BoxFit.cover,
                ),
                const SizedBox(height: 10),
                Text(
                  title,
                  style: AppWidget.semiBoldTextFeildStyle(),
                ),
                const SizedBox(height: 5),
                Text(
                  description,
                  style: AppWidget.LightTextFeildStyle(),
                ),
                const SizedBox(height: 5),
                Text(
                  price,
                  style: AppWidget.semiBoldTextFeildStyle(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildListItem(BuildContext context,
      {required String imagePath,
      required String title,
      required String description,
      required String price}) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Details(
              title: title,
              imagePath: imagePath,
              description: description,
              price: price,
            ),
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.only(right: 20),
        child: Material(
          elevation: 5,
          borderRadius: BorderRadius.circular(20),
          child: Container(
            padding: const EdgeInsets.all(10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  imagePath,
                  height: 120,
                  width: 120,
                  fit: BoxFit.cover,
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: AppWidget.semiBoldTextFeildStyle(),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        description,
                        style: AppWidget.LightTextFeildStyle(),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        price,
                        style: AppWidget.semiBoldTextFeildStyle(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
