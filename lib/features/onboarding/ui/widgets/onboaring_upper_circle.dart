import 'package:flutter/material.dart';

import '../../../../core/theming/app_colors.dart';

class OnboaringUpperCircle extends StatelessWidget {
  String text;

  OnboaringUpperCircle({required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.4,
      decoration: const BoxDecoration(
          color: AppColors.myOrange,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(100),
              bottomRight: Radius.circular(100))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/car.png'),
              const SizedBox(
                width: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: const Text.rich(
                  TextSpan(children: [
                    TextSpan(
                        text: 'SPEED',
                        style: TextStyle(color: Colors.grey, fontSize: 20)),
                    TextSpan(
                        text: 'SHIPPING',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 20))
                  ]),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          Text(
            text,
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30),
          )
        ],
      ),
    );
  }
}
