import 'package:flutter/material.dart';

void main() {
  runApp(Tes());
}

class Tes extends StatefulWidget {
  @override
  State<Tes> createState() => _TesState();
}

class _TesState extends State<Tes> {
  TextEditingController sotoController = TextEditingController();
  TextEditingController rawonController = TextEditingController();

  int total = 0;

  void hitungTotal() {
    int soto = int.tryParse(sotoController.text) ?? 0;
    int rawon = int.tryParse(rawonController.text) ?? 0;

    setState(() {
      total = (soto * 10000) + (rawon * 15000);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFFF7F5ED),
        appBar: AppBar(
          title: Text("Menu Makanan"),
          centerTitle: true,
          backgroundColor: Color(0xFF718B70),
          foregroundColor: Colors.white,
        ),
        body: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              // SOTO
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Soto",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF4F6950),
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Rp 10.000",
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFF718B70),
                        ),
                      ),
                    ],
                  ),
                  Image.asset(
                    "assets/soto.jpg",
                    width: 120,
                    height: 90,
                    fit: BoxFit.cover,
                  ),
                ],
              ),

              SizedBox(height: 10),

              Row(
                children: [
                  Text(
                    "Porsi ×",
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: TextField(
                      controller: sotoController,
                      keyboardType: TextInputType.number,
                      onChanged: (value) {
                        hitungTotal();
                      },
                      decoration: InputDecoration(
                        hintText: "Masukkan porsi",
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 30),

              // RAWON
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Rawon",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF4F6950),
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Rp 15.000",
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFF718B70),
                        ),
                      ),
                    ],
                  ),
                  Image.asset(
                    "assets/rawon.jpg",
                    width: 120,
                    height: 90,
                    fit: BoxFit.cover,
                  ),
                ],
              ),

              SizedBox(height: 10),

              Row(
                children: [
                  Text(
                    "Porsi ×",
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: TextField(
                      controller: rawonController,
                      keyboardType: TextInputType.number,
                      onChanged: (value) {
                        hitungTotal();
                      },
                      decoration: InputDecoration(
                        hintText: "Masukkan porsi",
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 30),

              // TOTAL
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Color(0xFFDDE7D5),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  "Total: Rp $total",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF4F6950),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
