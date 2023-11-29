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
      backgroundColor: Color(0xFF191919),
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
            padding: EdgeInsetsDirectional.fromSTEB(15, 15, 0, 0),
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
                    width: 280,
                    height: 110,
                    // decoration: BoxDecoration(color: Colors.red),
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
                          Container(
                            width: 280,
                            height: 40,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    IconButton(
                                      splashColor: Colors.transparent,
                                      icon: Icon(
                                        Icons.remove,
                                        color: _counter > 0
                                            ? Color(0xFFCE9018)
                                            : Colors.grey,
                                        size: 20,
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
                                        color: Colors.white,
                                        fontSize: 16,
                                      ),
                                    ),
                                    IconButton(
                                      icon: Icon(
                                        Icons.add,
                                        color: Color(0xFFCE9018),
                                        size: 20,
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          _counter++;
                                        });
                                      },
                                    ),
                                  ],
                                ),
                                Text(
                                  'Rp. 4.499.000',
                                  style: GoogleFonts.readexPro(
                                    fontSize: 18,
                                    color: Color(0xFFCE9018),
                                  ),
                                ),
                              ],
                            ),
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
