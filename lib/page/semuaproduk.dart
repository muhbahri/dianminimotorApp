// semua_produk.dart

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widget/produkcard.dart';
import '../widget/buttonselected.dart';

class SemuaProduk extends StatefulWidget {
  const SemuaProduk({Key? key}) : super(key: key);

  @override
  State<SemuaProduk> createState() => _SemuaProdukState();
}

class _SemuaProdukState extends State<SemuaProduk> {
  int _selectedButtonIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF181818),
      appBar: AppBar(
        backgroundColor: Color(0xFF121212),
        title: Text(
          'Semua Produk',
          style: GoogleFonts.outfit(color: Colors.white, fontSize: 22),
        ),
        actions: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  iconSize: 40,
                  onPressed: () {},
                  icon: Icon(
                    Icons.search_rounded,
                    color: Colors.white,
                    size: 24,
                  ),
                ),
                IconButton(
                  iconSize: 40,
                  onPressed: () {},
                  icon: Icon(
                    Icons.shopping_cart_rounded,
                    color: Colors.white,
                    size: 24,
                  ),
                ),
              ],
            ),
          ),
        ],
        elevation: 2,
      ),
      body: SafeArea(
        top: true,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 0, 15, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 320,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Color(0x00FFFFFF),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              buildElevatedButton(_selectedButtonIndex, 0,
                                  'Motor Listrik', _onButtonPressed),
                              SizedBox(width: 10),
                              buildElevatedButton(_selectedButtonIndex, 1,
                                  'Mobil Listrik', _onButtonPressed),
                              SizedBox(width: 10),
                              buildElevatedButton(_selectedButtonIndex, 2,
                                  'Sepeda Listrik', _onButtonPressed),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Text(
                      'Filter',
                      style: GoogleFonts.readexPro(
                          color: Colors.white, fontSize: 16),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                child: ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 2,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ProductCard(),
                            ProductCard(),
                          ],
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _onButtonPressed(int index) {
    setState(() {
      if (_selectedButtonIndex == index) {
        _selectedButtonIndex = -1;
      } else {
        _selectedButtonIndex = index;
      }
    });
  }
}
