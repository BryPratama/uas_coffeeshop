import 'package:flutter/material.dart';

class Wallet extends StatefulWidget {
  const Wallet({super.key});

  @override
  State<Wallet> createState() => _WalletState();
}

class _WalletState extends State<Wallet> {
  int jumlahTerpilih = 0;
  int saldoSaatIni = 0;

  void showSuccessDialog() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Container(
            padding: EdgeInsets.all(20),
            height: 200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.check_circle,
                  color: Colors.green,
                  size: 60,
                ),
                SizedBox(height: 10),
                Text(
                  "Saldo Berhasil Ditambahkan!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );

    Future.delayed(Duration(seconds: 2), () {
      if (Navigator.canPop(context)) {
        Navigator.of(context).pop();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 60),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Material(
              elevation: 2,
              child: Container(
                padding: EdgeInsets.only(bottom: 10),
                child: Center(
                  child: Text(
                    "Wallet",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            SizedBox(height: 30),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 226, 226, 226)),
              child: Row(
                children: [
                  Image.asset(
                    "images/wallet.png",
                    height: 60,
                    width: 60,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(width: 40),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Saldo Anda",
                          style: TextStyle(fontSize: 16, color: Colors.grey)),
                      SizedBox(height: 5),
                      Text(
                        "Rp. $saldoSaatIni",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "Isi Saldo",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      jumlahTerpilih = 20000;
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: jumlahTerpilih == 20000
                              ? Colors.blue
                              : const Color.fromARGB(255, 209, 209, 209)),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Text(
                      "Rp 20000",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      jumlahTerpilih = 50000;
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: jumlahTerpilih == 50000
                              ? Colors.blue
                              : const Color.fromARGB(255, 209, 209, 209)),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Text(
                      "Rp 50000",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      jumlahTerpilih = 80000;
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: jumlahTerpilih == 80000
                              ? Colors.blue
                              : const Color.fromARGB(255, 209, 209, 209)),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Text(
                      "Rp 80000",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      jumlahTerpilih = 100000;
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: jumlahTerpilih == 100000
                              ? Colors.blue
                              : const Color.fromARGB(255, 209, 209, 209)),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Text(
                      "Rp 100000",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 50),
            GestureDetector(
              onTap: () {
                setState(() {
                  saldoSaatIni += jumlahTerpilih;
                });
                showSuccessDialog();
              },
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                padding: EdgeInsets.symmetric(vertical: 12),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Center(
                  child: Text(
                    "Tambah Saldo",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
