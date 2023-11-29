import 'package:dianminimotor/page/produk.dart';
import 'package:dianminimotor/widget/iconfavorit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductCard extends StatefulWidget {
  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return DetailProduk();
            },
          ),
        );
      },
      child: Card(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        color: Color(0xFF181818),
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Stack(
              alignment: AlignmentDirectional(1, -1),
              children: [
                Image.asset(
                  'assets/images/atv.jpeg',
                  width: 180,
                  height: 210,
                  fit: BoxFit.cover,
                ),
                Align(
                  alignment: AlignmentDirectional(1, -1),
                  child: IconFavorit(),
                )
              ],
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
              child: Text(
                'Motor ATV Anak',
                style: GoogleFonts.readexPro(color: Colors.white),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 10),
              child: Text(
                'Rp. 4.499.000',
                style: GoogleFonts.readexPro(color: Color(0xFFCE9018)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
