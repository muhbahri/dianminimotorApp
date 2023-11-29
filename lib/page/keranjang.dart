import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Keranjang extends StatefulWidget {
  const Keranjang({super.key});

  @override
  State<Keranjang> createState() => _KeranjangState();
}

class _KeranjangState extends State<Keranjang> {
  int _counter = 0;
  bool _isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF181818),
      appBar: AppBar(
        backgroundColor: Color(0xFF121212),
        title: Text(
          'Keranjang Belanja',
          style: GoogleFonts.readexPro(fontSize: 22, color: Colors.white),
        ),
        actions: [],
        elevation: 4,
      ),
      body: SafeArea(
          child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(15, 15, 15, 0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    'assets/images/atv.jpeg',
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                    width: 260,
                    height: 100,
                    decoration: BoxDecoration(),
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Align(
                                    alignment:
                                        AlignmentDirectional(-1.00, -1.00),
                                    child: Text(
                                      'Motor ATV Anak',
                                      style: GoogleFonts.readexPro(
                                          fontSize: 18,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                  Align(
                                    alignment:
                                        AlignmentDirectional(-1.00, -1.00),
                                    child: Text(
                                      'Motor Listrik',
                                      style: GoogleFonts.readexPro(
                                          fontSize: 12,
                                          color: Color(0xBDFFFFFF),
                                          fontWeight: FontWeight.w300),
                                    ),
                                  )
                                ],
                              ),
                              Theme(
                                data: ThemeData(
                                    checkboxTheme: CheckboxThemeData(
                                      visualDensity: VisualDensity.compact,
                                      materialTapTargetSize:
                                          MaterialTapTargetSize.shrinkWrap,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(4),
                                      ),
                                    ),
                                    unselectedWidgetColor: Color(0xBDFFFFFF)),
                                child: Checkbox(
                                  value: _isChecked,
                                  activeColor: Color(0xFFCE9018),
                                  checkColor: Colors.white,
                                  onChanged: (value) {
                                    setState(() {
                                      _isChecked = value ?? false;
                                    });
                                  },
                                ),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                'Rp. 4.499.000',
                                style: GoogleFonts.readexPro(
                                  fontSize: 18,
                                  color: Color(0xFFCE9018),
                                ),
                              ),
                              Container(
                                  width: 60,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    color: Color(0x00FFFFFF),
                                    borderRadius: BorderRadius.circular(8),
                                    shape: BoxShape.rectangle,
                                    border: Border.all(
                                      color: Color(0x00E0E3E7),
                                      width: 1,
                                    ),
                                  ),
                                  child: Row(
                                    children: [
                                      IconButton(
                                        icon: Icon(
                                          Icons.remove,
                                          color: _counter > 0
                                              ? Colors
                                                  .blue // Ganti dengan warna yang sesuai
                                              : Colors
                                                  .grey, // Ganti dengan warna yang sesuai
                                          size: 14,
                                        ),
                                        onPressed: () {
                                          if (_counter > 0) {
                                            setState(() {
                                              _counter--;
                                            });
                                          }
                                        },
                                      ),
                                      Text(
                                        _counter.toString(),
                                        style: TextStyle(
                                          fontFamily: 'Outfit',
                                          color: Color(0xFFCE9018),
                                          fontSize: 14,
                                        ),
                                      ),
                                      IconButton(
                                        icon: Icon(
                                          Icons.add,
                                          color: Colors
                                              .blue, // Ganti dengan warna yang sesuai
                                          size: 16,
                                        ),
                                        onPressed: () {
                                          setState(() {
                                            _counter++;
                                          });
                                        },
                                      ),
                                    ],
                                  )),
                            ],
                          )
                        ],
                      ),
                    )),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
                )
              ],
            ),
          )
        ],
      )),
    );
  }
}
