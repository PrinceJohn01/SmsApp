import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';

class SignUpScreenTopImage extends StatelessWidget {
  const SignUpScreenTopImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Row(
          children: [
            const Spacer(),
            Expanded(
              flex: 8,
              child: Image.asset('assets/images/agogo.png',),
            ),
            const Spacer(),
          ],
        ),
        const Text(
          "Signup to AgoGo",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
         const SizedBox(height: defaultPadding * 2),

               const SizedBox(height: defaultPadding * 2),
      ],
    );
  }
}
