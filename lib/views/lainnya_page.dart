import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jago_bank/views/home.dart';

class Page5 extends StatelessWidget {
  const Page5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            backgroundColor: Colors.white,
            expandedHeight: 100,
            flexibleSpace: FlexibleSpaceBar(
              titlePadding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Lainnya",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  Icon(Icons.settings)
                ],
              ),
              background: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  stops: [0, 0.80],
                  colors: [Colors.amber, Colors.white],
                )),
              ),
            ),
          ),
          SliverList(delegate:
              SliverChildBuilderDelegate((BuildContext context, int index) {
            if (index == 0) {
              return Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: SafeArea(
                    child: Column(
                  children: [
                    SizedBox(
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 40.0,
                            foregroundImage:
                                AssetImage("assets/images/avatar2.jpg"),
                            foregroundColor: Colors.transparent,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Ahmad Djanuardi",
                                    style: TextStyle(fontSize: 30),
                                  ),
                                  Icon(Icons.arrow_right_sharp),
                                ],
                              ),
                              Text("ahmaddjanuardi@gmail.com"),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      decoration: BoxDecoration(
                          border:
                              Border.all(color: Colors.grey.shade200, width: 1),
                          borderRadius: BorderRadius.circular(12)),
                      child: SafeArea(
                          child: Column(
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                "assets/images/account-level-icon-jagoan.png",
                                width: 60,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                child: Row(
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Level kamu bulan Januari",
                                          style: TextStyle(
                                              color: Colors.grey.shade300),
                                        ),
                                        Text(
                                          "Jagoan",
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    ),
                                    Icon(Icons.arrow_right_sharp),
                                  ],
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Sisa kouta gratis"),
                                  ],
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Container(
                                  height: 50,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Container(
                                        child: Row(
                                          children: [
                                            CircleAvatar(
                                              backgroundColor: Colors.purple,
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Text("3"),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text("transfer "),
                                                Text("& top-up"),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      VerticalDivider(
                                        thickness: 1.5,
                                      ),
                                      Container(
                                        child: Row(
                                          children: [
                                            CircleAvatar(
                                              backgroundColor: Colors.purple,
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Text("0"),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text("tarik tunai"),
                                                Text("di ATM")
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      )),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      decoration: BoxDecoration(
                          border:
                              Border.all(color: Colors.grey.shade200, width: 1),
                          borderRadius: BorderRadius.circular(12)),
                      child: Column(
                        children: [
                          SizedBox(
                            child: ListTile(
                              leading: CircleAvatar(
                                backgroundColor: Colors.grey[200],
                              ),
                              title: const Text("Verifikasi e-mail kamu"),
                              subtitle: const Text(
                                  "Tingkatkan keamanan akun dengan verifikasi almat e-mails"),
                            ),
                          ),
                          SizedBox(
                            child: ListTile(
                              leading: CircleAvatar(
                                backgroundColor: Colors.grey[200],
                              ),
                              title: const Text("Buat JagoID kamu"),
                              subtitle: const Text(
                                  "Sebagai pengganti nomor Kantong Utama"),
                            ),
                          ),
                          SizedBox(
                            child: ListTile(
                              leading: CircleAvatar(
                                backgroundColor: Colors.grey[200],
                              ),
                              title: const Text("Masukkan data NPWP"),
                              subtitle: const Text(
                                  "Untuk keperluan pajak dan regulasi"),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        ListTile(
                          leading: SvgPicture.asset(
                              "assets/images/spend-analysis.svg"),
                          title: Text("Analisi Pengeluaran"),
                        ),
                        ListTile(
                          leading: Image.network(
                            "https://cdn-icons-png.flaticon.com/512/3075/3075908.png",
                            width: 30,
                          ),
                          title: Text("Rencanakan"),
                        ),
                        ListTile(
                          leading: Image.network(
                            "https://cdn-icons-png.flaticon.com/512/9291/9291135.png",
                            width: 40,
                          ),
                          title: Text("Kirim & Bayar"),
                        ),
                        ListTile(
                          leading:
                              SvgPicture.asset("assets/images/tagih uang.svg"),
                          title: Text("Tagih Uang"),
                        ),
                        ListTile(
                          leading: Image.network(
                            "https://cdn-icons-png.flaticon.com/512/3649/3649189.png",
                            width: 40,
                          ),
                          title: Text("Tanya Jago"),
                        ),
                        ListTile(
                          leading: Image.network(
                            "https://cdn-icons-png.flaticon.com/512/4403/4403284.png",
                            width: 40,
                          ),
                          title: Text("FAQ"),
                        ),
                        ListTile(
                          leading: Image.network(
                            "https://cdn-icons-png.flaticon.com/512/1348/1348448.png",
                            width: 35,
                          ),
                          title: Text("Akhiri Sesi"),
                        ),
                      ],
                    ),
                  ],
                )),
              );
            }
          }))
        ],
      ),
    );
  }
}
//         child: Container(
//           padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 22),
//           decoration: const BoxDecoration(
//             gradient: LinearGradient(
//               begin: Alignment.topRight,
//               end: Alignment.bottomLeft,
//               stops: [0, 0.14],
//               colors: [Colors.amber, Colors.white],
//             ),
//           ),
//           child: Container(
//             child: SafeArea(
//                 child: Column(
//               children: [
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Text(
//                       "Lainnya",
//                       style:
//                           TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
//                     ),
//                     Icon(Icons.settings)
//                   ],
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.symmetric(vertical: 20),
//                   child: SizedBox(
//                     child: Row(
//                       children: [
//                         CircleAvatar(
//                           radius: 40.0,
//                           foregroundImage:
//                               AssetImage("assets/images/avatar2.jpg"),
//                           foregroundColor: Colors.transparent,
//                         ),
//                         SizedBox(
//                           width: 20,
//                         ),
//                         Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Row(
//                               children: [
//                                 Text(
//                                   "Ahmad Djanuardi",
//                                   style: TextStyle(fontSize: 30),
//                                 ),
//                                 Icon(Icons.arrow_right_sharp),
//                               ],
//                             ),
//                             Text("ahmaddjanuardi@gmail.com"),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//                 Container(
//                   padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
//                   decoration: BoxDecoration(
//                       border: Border.all(color: Colors.grey.shade200, width: 1),
//                       borderRadius: BorderRadius.circular(12)),
//                   child: SafeArea(
//                       child: Column(
//                     children: [
//                       Row(
//                         children: [
//                           Image.asset(
//                             "assets/images/account-level-icon-jagoan.png",
//                             width: 60,
//                           ),
//                           SizedBox(
//                             width: 10,
//                           ),
//                           Container(
//                             child: Row(
//                               children: [
//                                 Column(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     Text(
//                                       "Level kamu bulan Januari",
//                                       style: TextStyle(
//                                           color: Colors.grey.shade300),
//                                     ),
//                                     Text(
//                                       "Jagoan",
//                                       style: TextStyle(
//                                           fontSize: 20,
//                                           fontWeight: FontWeight.bold),
//                                     )
//                                   ],
//                                 ),
//                                 Icon(Icons.arrow_right_sharp),
//                               ],
//                             ),
//                           )
//                         ],
//                       ),
//                       SizedBox(
//                         height: 20,
//                       ),
//                       Container(
//                         child: Column(
//                           children: [
//                             Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                               children: [
//                                 Text("Sisa kouta gratis"),
//                               ],
//                             ),
//                             SizedBox(
//                               height: 15,
//                             ),
//                             Container(
//                               height: 50,
//                               child: Row(
//                                 mainAxisAlignment:
//                                     MainAxisAlignment.spaceAround,
//                                 children: [
//                                   Container(
//                                     child: Row(
//                                       children: [
//                                         CircleAvatar(
//                                           backgroundColor: Colors.purple,
//                                         ),
//                                         SizedBox(
//                                           width: 10,
//                                         ),
//                                         Text("3"),
//                                         SizedBox(
//                                           width: 10,
//                                         ),
//                                         Column(
//                                           mainAxisAlignment:
//                                               MainAxisAlignment.center,
//                                           children: [
//                                             Text("transfer "),
//                                             Text("& top-up"),
//                                           ],
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                   VerticalDivider(
//                                     thickness: 1.5,
//                                   ),
//                                   Container(
//                                     child: Row(
//                                       children: [
//                                         CircleAvatar(
//                                           backgroundColor: Colors.purple,
//                                         ),
//                                         SizedBox(
//                                           width: 10,
//                                         ),
//                                         Text("0"),
//                                         SizedBox(
//                                           width: 10,
//                                         ),
//                                         Column(
//                                           mainAxisAlignment:
//                                               MainAxisAlignment.center,
//                                           children: [
//                                             Text("tarik tunai"),
//                                             Text("di ATM")
//                                           ],
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ],
//                         ),
//                       )
//                     ],
//                   )),
//                 ),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 Container(
//                   padding: EdgeInsets.symmetric(vertical: 10),
//                   decoration: BoxDecoration(
//                       border: Border.all(color: Colors.grey.shade200, width: 1),
//                       borderRadius: BorderRadius.circular(12)),
//                   child: Column(
//                     children: [
//                       SizedBox(
//                         child: ListTile(
//                           leading: CircleAvatar(
//                             backgroundColor: Colors.grey[200],
//                           ),
//                           title: const Text("Verifikasi e-mail kamu"),
//                           subtitle: const Text(
//                               "Tingkatkan keamanan akun dengan verifikasi almat e-mails"),
//                         ),
//                       ),
//                       SizedBox(
//                         child: ListTile(
//                           leading: CircleAvatar(
//                             backgroundColor: Colors.grey[200],
//                           ),
//                           title: const Text("Buat JagoID kamu"),
//                           subtitle: const Text(
//                               "Sebagai pengganti nomor Kantong Utama"),
//                         ),
//                       ),
//                       SizedBox(
//                         child: ListTile(
//                           leading: CircleAvatar(
//                             backgroundColor: Colors.grey[200],
//                           ),
//                           title: const Text("Masukkan data NPWP"),
//                           subtitle:
//                               const Text("Untuk keperluan pajak dan regulasi"),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 Column(
//                   children: [
//                     ListTile(
//                       leading:
//                           SvgPicture.asset("assets/images/spend-analysis.svg"),
//                       title: Text("Analisi Pengeluaran"),
//                     ),
//                     ListTile(
//                       leading: Image.network(
//                         "https://cdn-icons-png.flaticon.com/512/3075/3075908.png",
//                         width: 30,
//                       ),
//                       title: Text("Rencanakan"),
//                     ),
//                     ListTile(
//                       leading: Image.network(
//                         "https://cdn-icons-png.flaticon.com/512/9291/9291135.png",
//                         width: 40,
//                       ),
//                       title: Text("Kirim & Bayar"),
//                     ),
//                     ListTile(
//                       leading: SvgPicture.asset("assets/images/tagih uang.svg"),
//                       title: Text("Tagih Uang"),
//                     ),
//                     ListTile(
//                       leading: Image.network(
//                         "https://cdn-icons-png.flaticon.com/512/3649/3649189.png",
//                         width: 40,
//                       ),
//                       title: Text("Tanya Jago"),
//                     ),
//                     ListTile(
//                       leading: Image.network(
//                         "https://cdn-icons-png.flaticon.com/512/4403/4403284.png",
//                         width: 40,
//                       ),
//                       title: Text("FAQ"),
//                     ),
//                     ListTile(
//                       leading: Image.network(
//                         "https://cdn-icons-png.flaticon.com/512/1348/1348448.png",
//                         width: 35,
//                       ),
//                       title: Text("Akhiri Sesi"),
//                     ),
//                   ],
//                 ),
//               ],
//             )),
//           ),
//         ),
//       ),
//     );
//   }
// }
