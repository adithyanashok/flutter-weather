import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

Future<dynamic> SearchMenu(BuildContext context, Size size) {
  return showDialog(
    context: context,
    builder: (context) {
      return Padding(
        padding: const EdgeInsets.only(top: 30.0),
        child: SimpleDialog(
          contentPadding: const EdgeInsets.all(10),
          backgroundColor: Colors.white,
          surfaceTintColor: Colors.white,
          alignment: Alignment.topCenter,
          children: [
            Container(
              width: size.width * 0.9,
              height: 360,
              decoration: const BoxDecoration(),
              child: Column(
                children: [
                  Card(
                    child: Container(
                      width: 330,
                      height: 57,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintStyle: GoogleFonts.overpass(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                          ),
                          hintText: "Search here",
                          border: InputBorder.none,
                          prefixIcon: Icon(
                            Icons.arrow_back,
                            color: HexColor('#444E72'),
                          ),
                          suffixIcon: Icon(
                            Icons.keyboard_voice_rounded,
                            color: HexColor('#444E72'),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SearchSuggestions(
                    cityName: 'Banglore',
                    values: '34\u00B0 / 23\u00B0',
                  ),
                  const SearchSuggestions(
                    cityName: 'Chennai',
                    values: '34\u00B0 / 23\u00B0',
                  ),
                  const SearchSuggestions(
                    cityName: 'Delhi',
                    values: '34\u00B0 / 23\u00B0',
                  ),
                  const SearchSuggestions(
                    cityName: 'Gurgaon',
                    values: '34\u00B0 / 23\u00B0',
                  ),
                  const SearchSuggestions(
                    cityName: 'Hyderbad',
                    values: '34\u00B0 / 23\u00B0',
                  ),
                  const SearchSuggestions(
                    cityName: 'Mumbai',
                    values: '34\u00B0 / 23\u00B0',
                  ),
                  const SearchSuggestions(
                    cityName: 'Pune',
                    values: '34\u00B0 / 23\u00B0',
                  ),
                ],
              ),
            )
          ],
        ),
      );
    },
  );
}

class SearchSuggestions extends StatelessWidget {
  const SearchSuggestions({
    super.key,
    required this.cityName,
    required this.values,
  });

  final String cityName;
  final String values;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const Icon(
                Icons.location_on_outlined,
                color: Colors.grey,
              ),
              const SizedBox(width: 10),
              Text(
                cityName,
                style: GoogleFonts.overpass(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: HexColor('#444E72'),
                ),
              ),
            ],
          ),
          Text(
            values,
            style: GoogleFonts.overpass(
              fontSize: 13,
              fontWeight: FontWeight.bold,
              color: HexColor('#444E72'),
            ),
          ),
        ],
      ),
    );
  }
}
