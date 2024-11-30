import 'package:flutter/material.dart';
import 'wallet.dart';

class Order extends StatefulWidget {
  const Order({super.key});

  static List<Map<String, dynamic>> orders = [];

  @override
  State<Order> createState() => _OrderState();
}

class _OrderState extends State<Order> {
  void _confirmOrder() {
    int totalHarga = Order.orders.fold(
      0,
      (sum, order) => sum + (order['totalPrice'] as int? ?? 0),
    );

    if (Wallet.walletBalance >= totalHarga) {
      setState(() {
        Wallet.walletBalance -= totalHarga;
        Order.orders.clear();
      });

      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text("Pesanan Berhasil"),
          content: const Text("Pesanan akan segera diantar ke meja Anda."),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text("OK"),
            ),
          ],
        ),
      );
    } else {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text("Saldo Tidak Cukup"),
          content: const Text("Harap isi saldo terlebih dahulu."),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text("OK"),
            ),
          ],
        ),
      );
    }
  }

  void _deleteOrder(int index) {
    setState(() {
      Order.orders.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Order Summary"),
        backgroundColor: Colors.orange,
      ),
      body: Order.orders.isEmpty
          ? const Center(
              child: Text("Belum ada pesanan.", style: TextStyle(fontSize: 18)),
            )
          : Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: Order.orders.length,
                    itemBuilder: (context, index) {
                      final order = Order.orders[index];
                      return Card(
                        margin: const EdgeInsets.symmetric(vertical: 10),
                        child: ListTile(
                          title: Text(order["name"],
                              style: const TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold)),
                          subtitle: Text("Jumlah: ${order["quantity"]}"),
                          trailing: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                "Rp.${order["totalPrice"]}",
                                style: const TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              IconButton(
                                onPressed: () => _deleteOrder(index),
                                icon:
                                    const Icon(Icons.delete, color: Colors.red),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                ElevatedButton(
                  onPressed: _confirmOrder,
                  child: const Text("Pesan"),
                ),
              ],
            ),
    );
  }
}
