import 'package:flutter/material.dart';
import 'package:flutterchallenge3/screens/checkout_screen/checkout_screen.dart';
import 'package:flutterchallenge3/widgets/app_button/app_button.dart';
import 'package:flutterchallenge3/widgets/arc_shape/arc_shape.dart';
import 'dart:ui';

class OrderScreen extends StatelessWidget {
  const OrderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double screenHeight = window.physicalSize.height;
    return Scaffold(
      body: Stack(children: [
        const Align(
          alignment: Alignment.topCenter,
          child: ArcShape(),
        ),
        Positioned(
          left: 0,
          right: 0,
          top: 0,
          bottom: 0,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                SafeArea(
                  bottom: false,
                  child: SizedBox(
                    child: Row(
                      children: const [
                        Text('Order',
                            style: TextStyle(
                                fontSize: 32,
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                        Spacer(),
                        Text('Close',
                            style: TextStyle(color: Colors.white, fontSize: 16))
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 26,
                ),
                Container(
                  height: 200,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            spreadRadius: 2,
                            blurRadius: 4)
                      ]),
                  child: Column(children: [
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 35,
                            child: Row(
                              children: const [
                                Text('Subtotal',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16)),
                                Spacer(),
                                Text('\$49.50',
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.grey))
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 35,
                            child: Row(
                              children: const [
                                Text('Tax & Fees',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16)),
                                Spacer(),
                                Text('\$2.75',
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.grey))
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 35,
                            child: Row(
                              children: const [
                                Text('Delivery',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16)),
                                Spacer(),
                                Text('Free',
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.grey))
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Divider(
                      thickness: 1,
                      height: 1,
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Row(
                          children: const [
                            Text('Total',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 22)),
                            Spacer(),
                            Text('\$52.25',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 22))
                          ],
                        ),
                      ),
                    ),
                  ]),
                ),
                const SizedBox(
                  height: 16,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            spreadRadius: 2,
                            blurRadius: 4)
                      ]),
                  child: Container(
                    constraints: BoxConstraints(
                      maxHeight:
                          (size.height * (screenHeight <= 1334 ? 0.4 : 0.5)) -
                              26,
                    ),
                    child: SingleChildScrollView(
                      child: Column(children: const [
                        OrderItem(),
                        Padding(
                          padding: EdgeInsets.only(left: 16),
                          child: Divider(
                            thickness: 1,
                            height: 1,
                          ),
                        ),
                        OrderItem(),
                        Padding(
                          padding: EdgeInsets.only(left: 16),
                          child: Divider(
                            thickness: 1,
                            height: 1,
                          ),
                        ),
                        OrderItem(),
                        Padding(
                          padding: EdgeInsets.only(left: 16),
                          child: Divider(
                            thickness: 1,
                            height: 1,
                          ),
                        ),
                        OrderItem(),
                      ]),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 26),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        AppButton(
                          title: 'Checkout',
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const CheckoutScreen()));
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}

class OrderItem extends StatelessWidget {
  const OrderItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Row(children: [
        Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(5),
              image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage('https://picsum.photos/120'))),
        ),
        const SizedBox(
          width: 16,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Crispy Chicken San',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                )),
            const Text('2x tuna, 3x vegetables, 1x noodle',
                style: TextStyle(color: Colors.grey)),
            const SizedBox(
              height: 6,
            ),
            Text('\$29.50',
                style: TextStyle(
                  color: Colors.red[600],
                  fontWeight: FontWeight.bold,
                ))
          ],
        )
      ]),
    );
  }
}
