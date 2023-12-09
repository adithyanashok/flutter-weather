import 'package:flutter/material.dart';
import 'package:forecast_app/view/widgets/logout.dart';
import 'package:forecast_app/view/widgets/search.dart';
import 'package:forecast_app/view/widgets/text.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        SearchMenu(context, size);
      },
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Location details
            const Row(
              children: [
                Icon(
                  Icons.location_on_outlined,
                  color: Colors.white,
                ),
                SizedBox(width: 15),
                InterText(
                  text: 'Semarang',
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                Icon(
                  Icons.keyboard_arrow_down_rounded,
                  color: Colors.white,
                ),
              ],
            ),
            // Logout button
            IconButton(
              onPressed: () {
                LogoutPopup(context, size);
              },
              icon: const Icon(
                Icons.power_settings_new_sharp,
                color: Colors.red,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
