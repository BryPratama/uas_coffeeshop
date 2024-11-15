import 'package:flutter/material.dart';
import 'package:uas_kopisop/widget/widget_support.dart';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  int a = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(top: 50, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child:
                    const Icon(Icons.arrow_back_outlined, color: Colors.black)),
            Image.asset("images/depresso.jpg",
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2.5,
                fit: BoxFit.fill),
            const SizedBox(height: 15),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Espresso Coffee",
                      style: AppWidget.semiBoldTextFeildStyle(),
                    ),
                    Text(
                      "Coffee",
                      style: AppWidget.boldTextFeildStyle(),
                    ),
                  ],
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    if (a > 1) {
                      --a;
                    }
                    setState(() {});
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10)),
                    child: const Icon(
                      Icons.remove,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                Text(
                  a.toString(),
                  style: AppWidget.semiBoldTextFeildStyle(),
                ),
                const SizedBox(width: 20),
                GestureDetector(
                  onTap: () {
                    ++a;
                    setState(() {});
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10)),
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Espresso adalah kopi pekat dengan cita rasa intens, dibuat dengan mengekstrak biji kopi halus menggunakan tekanan tinggi. Nikmat dinikmati langsung atau sebagai dasar berbagai minuman kopi.",
              style: AppWidget.LightTextFeildStyle(),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 100),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Total Harga",
                        style: AppWidget.semiBoldTextFeildStyle(),
                      ),
                      Text(
                        "Rp.20.000",
                        style: AppWidget.HeaderTextFeildStyle(),
                      ),
                    ],
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 2,
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Text(
                          "Add To Cart",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: 'Poppins'),
                        ),
                        const SizedBox(width: 30),
                        Container(
                            padding: const EdgeInsets.all(3),
                            decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(10)),
                            child: const Icon(
                              Icons.shopping_cart_outlined,
                              color: Colors.white,
                            )),
                        const SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
