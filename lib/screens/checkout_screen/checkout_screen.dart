import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutterchallenge3/widgets/app_button/app_button.dart';
import 'package:flutterchallenge3/widgets/arc_shape/arc_shape.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
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
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SafeArea(
                  bottom: false,
                  child: SizedBox(
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Row(
                            children: const [
                              Icon(
                                Icons.arrow_back_ios_rounded,
                                color: Colors.white,
                                size: 18,
                              ),
                              SizedBox(
                                width: 3,
                              ),
                              Text('Back',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 16))
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                SizedBox(
                  child: Row(
                    children: const [
                      Text('Checkout',
                          style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 26,
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              spreadRadius: 2,
                              blurRadius: 4)
                        ]),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 16,
                              ),
                              const Text('DELIVERY ADDRESS'),
                              const SizedBox(
                                height: 16,
                              ),
                              Container(
                                padding: const EdgeInsets.all(8),
                                height: 60,
                                decoration: BoxDecoration(
                                    color: Colors.grey[50],
                                    border:
                                        Border.all(color: Colors.red.shade400),
                                    borderRadius: BorderRadius.circular(5)),
                                child: Row(children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text('ADDRESS #1',
                                          style: TextStyle(
                                              color: Colors.red[400])),
                                      const Text('4904 Goldner Ranch')
                                    ],
                                  ),
                                  const Spacer(),
                                  Icon(
                                    Icons.check_circle_sharp,
                                    color: Colors.red[400],
                                  )
                                ]),
                              ),
                              const SizedBox(
                                height: 26,
                              ),
                              const Text('PAYMENT METHOD'),
                              const SizedBox(
                                height: 16,
                              ),
                              Container(
                                padding: const EdgeInsets.all(8),
                                height: 60,
                                decoration: BoxDecoration(
                                    color: Colors.grey[50],
                                    border:
                                        Border.all(color: Colors.grey.shade100),
                                    borderRadius: BorderRadius.circular(5)),
                                child: Row(children: [
                                  SizedBox(
                                    width: 32,
                                    child: SvgPicture.asset(
                                      'assets/visa.svg',
                                      width: 32,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 8,
                                  ),
                                  const Text('**** **** **** 5967',
                                      style: TextStyle(fontSize: 16))
                                ]),
                              ),
                              const SizedBox(
                                height: 16,
                              ),
                              Container(
                                padding: const EdgeInsets.all(8),
                                height: 60,
                                decoration: BoxDecoration(
                                    color: Colors.grey[50],
                                    border:
                                        Border.all(color: Colors.red.shade400),
                                    borderRadius: BorderRadius.circular(5)),
                                child: Row(
                                    // mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        width: 32,
                                        child: SvgPicture.asset(
                                          'assets/paypal.svg',
                                          width: 28,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 8,
                                      ),
                                      const Text('wilson.casper@bernice.info',
                                          style: TextStyle(fontSize: 16)),
                                      const Spacer(),
                                      Icon(
                                        Icons.check_circle_sharp,
                                        color: Colors.red[400],
                                      )
                                    ]),
                              ),
                              const SizedBox(
                                height: 16,
                              ),
                              Container(
                                padding: const EdgeInsets.all(8),
                                height: 60,
                                decoration: BoxDecoration(
                                    color: Colors.grey[50],
                                    border:
                                        Border.all(color: Colors.grey.shade100),
                                    borderRadius: BorderRadius.circular(5)),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        width: 32,
                                        child: SvgPicture.asset(
                                          'assets/mastercard.svg',
                                          width: 32,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 8,
                                      ),
                                      const Text('**** **** **** 3461',
                                          style: TextStyle(fontSize: 16))
                                    ]),
                              ),
                              const Spacer(),
                              AppButton(title: 'Payment', onTap: () {}),
                              const SizedBox(
                                height: 16,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 26),
                  height: 100,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(
                          height: 16,
                        ),
                        Icon(
                          Icons.fingerprint_rounded,
                          size: 48,
                          color: Colors.black.withOpacity(0.2),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        const Text('Pay with Touch ID',
                            style: TextStyle(fontWeight: FontWeight.w600)),
                      ]),
                ),
              ],
            ),
          ),
        )
      ],
    ));
  }
}
