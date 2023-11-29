import 'package:dianminimotor/widget/iconfavorit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import '../widget/whomepage.dart';
import '../widget/buttonselected.dart';

class DetailProduk extends StatefulWidget {
  const DetailProduk({super.key});

  @override
  State<DetailProduk> createState() => _DetailProdukState();
}

class _DetailProdukState extends State<DetailProduk> {
  int _selectedButtonIndex = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF181818),
      appBar: AppBar(
        backgroundColor: Color(0xFF121212),
        title: Text(
          'Nama Produk',
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
                    Icons.shopping_cart_rounded,
                    color: Colors.white,
                    size: 24,
                  ),
                ),
                IconButton(
                  iconSize: 40,
                  onPressed: () {},
                  icon: Icon(
                    Icons.dehaze_rounded,
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
              ClipRRect(
                borderRadius: BorderRadius.circular(0),
                child: Image.asset(
                  'assets/images/atv.jpeg',
                  width: double.infinity,
                  height: 350,
                  fit: BoxFit.cover,
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(25, 20, 20, 15),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Motor ATV Anak',
                          style: GoogleFonts.readexPro(
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          'Motor Listrik',
                          style: GoogleFonts.readexPro(
                            fontSize: 15,
                            color: Color(0xBDFFFFFF),
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 15, 0),
                    child: IconFavorit(),
                  ),
                ],
              ),
              Align(
                alignment: AlignmentDirectional(-1.00, -1.00),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(25, 0, 10, 10),
                  child: Text(
                    'Rp. 4.499.000',
                    style: GoogleFonts.readexPro(
                      color: Color(0xFFCE9018),
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-1.00, -1.00),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(25, 15, 20, 0),
                  child: Text(
                    'Warna',
                    style: GoogleFonts.readexPro(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(25, 10, 0, 15),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    buildElevatedButton(
                        _selectedButtonIndex, 0, 'Putih', _onButtonPressed),
                    SizedBox(width: 15),
                    buildElevatedButton(
                        _selectedButtonIndex, 1, 'Merah', _onButtonPressed),
                    SizedBox(width: 15),
                    buildElevatedButton(
                        _selectedButtonIndex, 2, 'Biru', _onButtonPressed),
                    SizedBox(width: 15),
                    buildElevatedButton(
                        _selectedButtonIndex, 3, 'Hitam', _onButtonPressed),
                  ],
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-1.00, -1.00),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(25, 15, 20, 0),
                  child: Text(
                    'Deskripsi',
                    style: GoogleFonts.readexPro(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-1.00, -1.00),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(25, 10, 20, 0),
                  child: Text(
                    'Desain off-road yang dirancang khusus untuk anak-anak. Dilengkapi dengan sistem keamanan termasuk kecepatan terkontrol dan rem responsif.  Menggunakan aki listrik yang dapat di-charge untuk penggunaan yang lebih praktis dan ramah lingkungan.',
                    style: GoogleFonts.readexPro(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 100,
              )
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
