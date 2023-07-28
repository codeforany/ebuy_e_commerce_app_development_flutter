import 'package:flutter/material.dart';

import '../common/color_extension.dart';

class AccountRow extends StatelessWidget {
  final String title;
  final String icon;
  final VoidCallback onPressed;

  const AccountRow(
      {super.key,
      required this.title,
      required this.icon,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 40,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                Image.asset(
                    icon,
                    width: 20,
                    height: 20,
                    color:  TColor.primary,
                  ),

                const  SizedBox(width: 15,),

                Expanded(
                  child: Text(
                    title,
                    style: TextStyle(color: TColor.primaryText, fontSize: 16),
                  ),
                ),
                Image.asset(
                    "assets/img/right.png",
                    width: 15,
                    height: 15,
                    color:  TColor.secondaryText,
                  )
                  
              ],
            ),
          ),
          const Divider(
            color: Colors.black12,
            height: 1,
          )
        ],
      ),
    );
  }
}
