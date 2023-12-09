import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class TextInputField extends StatelessWidget {
  const TextInputField({
    super.key,
    required this.hintText,
    this.suffix,
    this.obscureText = false,
    this.controller,
  });

  final String hintText;
  final Widget? suffix;
  final bool obscureText;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360,
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: const Color.fromARGB(255, 230, 228, 228),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 30.0, top: 3),
        child: TextFormField(
          controller: controller,
          obscureText: obscureText,
          cursorColor: HexColor('#808080'),
          style: GoogleFonts.inter(
            color: Colors.black,
            fontSize: 15,
            fontWeight: FontWeight.w700,
          ),
          decoration: InputDecoration(
            suffixIcon: suffix,
            hintText: hintText,
            border: InputBorder.none,
            hintStyle: GoogleFonts.inter(
              fontSize: 15,
              fontWeight: FontWeight.w700,
              color: HexColor('#808080'),
            ),
          ),
        ),
      ),
    );
  }
}

class CustomDropDownButton extends StatefulWidget {
  const CustomDropDownButton({super.key, this.onChange});

  final Function(String value)? onChange;

  @override
  State<CustomDropDownButton> createState() => _CustomDropDownButtonState();
}

class _CustomDropDownButtonState extends State<CustomDropDownButton> {
  final List<String> items = [
    'India',
    'USA',
    'England',
    'Australia',
  ];

  String? selectedValue;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: DropdownButtonHideUnderline(
        child: DropdownButton2<String>(
          iconStyleData: const IconStyleData(
            icon: Icon(
              Icons.keyboard_arrow_down_sharp,
              size: 35,
              color: Color.fromARGB(255, 160, 159, 159),
            ),
          ),
          isExpanded: true,
          hint: Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Text(
              'Country',
              style: GoogleFonts.inter(
                fontSize: 15,
                fontWeight: FontWeight.w700,
                color: HexColor('#808080'),
              ),
            ),
          ),
          items: items
              .map((String item) => DropdownMenuItem<String>(
                    value: item,
                    child: Text(
                      item,
                      style: GoogleFonts.inter(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                    ),
                  ))
              .toList(),
          value: selectedValue,
          onChanged: (String? value) {
            widget.onChange!(value!);
            setState(() {
              selectedValue = value;
            });
          },
          buttonStyleData: ButtonStyleData(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            width: 360,
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(
                color: const Color.fromARGB(255, 230, 228, 228),
              ),
            ),
          ),
          menuItemStyleData: const MenuItemStyleData(
            height: 40,
          ),
        ),
      ),
    );
  }
}
