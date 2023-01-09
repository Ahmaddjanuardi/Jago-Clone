import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jago_bank/views/kantong.dart';
import 'package:jago_bank/views/kontak.dart';
import 'package:jago_bank/views/kartu.dart';
import 'package:jago_bank/views/lainnya_page.dart';

import 'package:jago_bank/views/search.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int pageIndex = 0;

  final pages = [
    const Page1(),
    const Page2(),
    const Page3(),
    const Page4(),
    const Page5(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[pageIndex],
      bottomNavigationBar: buildMyNavBar(context),
    );
  }

  Container buildMyNavBar(BuildContext context) {
    return Container(
      height: 70,
      decoration: BoxDecoration(
        color: Colors.white,
        // borderRadius: const BorderRadius.only(
        //   topLeft: Radius.circular(20),
        //   topRight: Radius.circular(20),
        // ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            child: Column(
              children: [
                IconButton(
                  enableFeedback: false,
                  onPressed: () {
                    setState(() {
                      pageIndex = 0;
                    });
                  },
                  icon: pageIndex == 0
                      ? const FaIcon(
                          FontAwesomeIcons.house,
                          color: Colors.amber,
                          size: 35,
                        )
                      : const FaIcon(
                          FontAwesomeIcons.house,
                          color: Colors.grey,
                          size: 35,
                        ),
                ),
                Text("Beranda")
              ],
            ),
          ),
          SizedBox(
            child: Column(
              children: [
                IconButton(
                    enableFeedback: false,
                    onPressed: () {
                      setState(() {
                        pageIndex = 1;
                      });
                    },
                    icon: pageIndex == 1
                        ? const FaIcon(
                            FontAwesomeIcons.wallet,
                            color: Colors.amber,
                            size: 35,
                          )
                        : const FaIcon(
                            FontAwesomeIcons.wallet,
                            color: Colors.grey,
                            size: 35,
                          )),
                Text("Kantong")
              ],
            ),
          ),
          SizedBox(
            child: Column(
              children: [
                IconButton(
                    enableFeedback: false,
                    onPressed: () {
                      setState(() {
                        pageIndex = 2;
                      });
                    },
                    icon: pageIndex == 2
                        ? const FaIcon(
                            FontAwesomeIcons.addressBook,
                            color: Colors.amber,
                            size: 35,
                          )
                        : const FaIcon(
                            FontAwesomeIcons.addressBook,
                            color: Colors.grey,
                            size: 35,
                          )),
                Text("Kontak")
              ],
            ),
          ),
          SizedBox(
            child: Column(
              children: [
                IconButton(
                    enableFeedback: false,
                    onPressed: () {
                      setState(() {
                        pageIndex = 3;
                      });
                    },
                    icon: pageIndex == 3
                        ? const FaIcon(
                            FontAwesomeIcons.creditCard,
                            color: Colors.amber,
                            size: 35,
                          )
                        : const FaIcon(
                            FontAwesomeIcons.creditCard,
                            color: Colors.grey,
                            size: 35,
                          )),
                Text("Kartu")
              ],
            ),
          ),
          SizedBox(
            child: Column(
              children: [
                IconButton(
                    enableFeedback: false,
                    onPressed: () {
                      setState(() {
                        pageIndex = 4;
                      });
                    },
                    icon: pageIndex == 4
                        ? const FaIcon(
                            FontAwesomeIcons.ellipsis,
                            color: Colors.amber,
                            size: 35,
                          )
                        : const FaIcon(
                            FontAwesomeIcons.ellipsis,
                            color: Colors.grey,
                            size: 35,
                          )),
                Text("Lainnya")
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              stops: [0, 0.15],
              colors: [Colors.amber, Colors.white],
            ),
          ),
          child: Column(
            children: [
              // ============================
              //          APP BAR
              // ============================
              Container(
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(),
                child: SafeArea(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Selamat pagi, AHMAD DJANUARDI KUSTARI.",
                        style: TextStyle(
                          color: Colors.grey.shade600,
                          fontSize: 14,
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            "assets/images/R.png",
                            width: 100,
                          ),
                          Row(
                            children: const [
                              Icon(Icons.account_circle_outlined),
                              SizedBox(
                                width: 10.0,
                              ),
                              Icon(Icons.notifications_none),
                            ],
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const SearchBar(),
                    ],
                  ),
                ),
              ),

              // ============================
              //            BODY
              // ============================
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Rencanakan',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              "Tutup",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.black,
                                decoration: TextDecoration.underline,
                                decorationColor: Colors.amber,
                              ),
                            ))
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey.shade200,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.network(
                            "https://cdn-icons-png.flaticon.com/512/6285/6285757.png",
                            width: 60,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Sering lupa bayar tagihan?',
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                              TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Buat Rencana Pembayaran",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                      color: Colors.black,
                                      decoration: TextDecoration.underline,
                                      decorationColor: Colors.amber,
                                    ),
                                  ))
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 30),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Shortcut',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              "Edit",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.black,
                                decoration: TextDecoration.underline,
                                decorationColor: Colors.amber,
                              ),
                            ))
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: 100,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width:
                                    MediaQuery.of(context).size.width / 2 - 18,
                                child: Card(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.network(
                                        "https://cdn-icons-png.flaticon.com/512/2953/2953423.png",
                                        width: 40,
                                      ),
                                      Text("Kanton Utama"),
                                      Text("Rp7.698")
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                width:
                                    MediaQuery.of(context).size.width / 2 - 18,
                                child: Card(
                                    child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.network(
                                      "https://cdn-icons-png.flaticon.com/512/9291/9291135.png",
                                      width: 40,
                                    ),
                                    Text("Kirim & Bayar")
                                  ],
                                )),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 100,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width:
                                    MediaQuery.of(context).size.width / 2 - 18,
                                child: Card(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.network(
                                        "https://cdn-icons-png.flaticon.com/512/7988/7988598.png",
                                        width: 40,
                                      ),
                                      Text("Tagih Uang")
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                width:
                                    MediaQuery.of(context).size.width / 2 - 18,
                                child: Card(
                                    child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.network(
                                      "https://cdn-icons-png.flaticon.com/512/2704/2704332.png",
                                      width: 40,
                                    ),
                                    Text("Saldo Saya"),
                                    Text("Rp200.000")
                                  ],
                                )),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 100,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width:
                                    MediaQuery.of(context).size.width / 2 - 18,
                                child: Card(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.network(
                                        "https://cdn-icons-png.flaticon.com/512/1611/1611236.png",
                                        width: 40,
                                      ),
                                      Text("Bayar Tagihan"),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                width:
                                    MediaQuery.of(context).size.width / 2 - 18,
                                child: Card(
                                    child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.network(
                                      "https://cdn-icons-png.flaticon.com/512/3131/3131357.png",
                                      width: 40,
                                    ),
                                    Text("JagoRameRame")
                                  ],
                                )),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 100,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width:
                                    MediaQuery.of(context).size.width / 2 - 18,
                                child: Card(
                                  color: Colors.amber.shade100,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.network(
                                        "https://cdn-icons-png.flaticon.com/512/4677/4677490.png",
                                        width: 40,
                                      ),
                                      Text("Tamabah Shortcut"),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
