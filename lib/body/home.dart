import 'package:flutter/material.dart';
// import 'package:caterer_study/body/profil.dart';
import 'package:flutter/cupertino.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class Pesanan {
  final String img;
  final String matkul;
  final String dosen;
  final String jam;
  final int qty;

  Pesanan({this.img, this.matkul, this.jam, this.dosen, this.qty});
}

class Tanggal {
  final String tanggal;

  Tanggal({this.tanggal});
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  final List<Pesanan> pesanan = [
    Pesanan(
        img:
            'https://lh3.googleusercontent.com/a-/AAuE7mDo9X8K6ERYHNB0hZn2JWxgMQk1mOdkmbiEudjP=s50',
        matkul: 'Algoritma Pemrograman',
        dosen: 'Zainudin Zuhri S.Kom., M.Kom.',
        jam: '07:00 - 09.00',
        qty: 101),
    Pesanan(
        img:
            'https://lh3.googleusercontent.com/a-/AAuE7mDo9X8K6ERYHNB0hZn2JWxgMQk1mOdkmbiEudjP=s50',
        matkul: 'Pemrograman Java',
        jam: '10.30 - 12.00',
        dosen: 'Chanifah S.Kom., M.Kom',
        qty: 292),
  ];

  final List<Tanggal> tanggal = [Tanggal(tanggal: 'Senin, 23 Jan 2020')];

  TabController controller;

  @override
  void initState() {
    controller = new TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        automaticallyImplyLeading: false,
        title: TextField(
            decoration: InputDecoration(
                hintText: "Search Schedule",
                border: InputBorder.none,
                hintStyle: TextStyle(color: Colors.white))),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search, color: Colors.white),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.notifications, color: Colors.white),
            onPressed: () {},
          )
        ],
      ),
      body: Container(
          color: Colors.grey[200],
          // margin: EdgeInsets.only(top: 15),
          padding: EdgeInsets.only(top: 15),
          child: ListView.builder(
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    showModalBottomSheet(
                        context: context,
                      // elevation: 10.0,
                        // isScrollControlled: true,
                        // isDismissible: true,
                        builder: (BuildContext bc) {
                          return Column(
                            children: <Widget>[
                              Container(
                                // height: 900,
                                // width: 500,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10),
                                  ),
                                  // color: Colors.red,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Center(
                                      child: Container(
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            color: Colors.grey),
                                        height: 3,
                                        width: 45,
                                        // padding: EdgeInsets.all(20),
                                        margin: EdgeInsets.only(
                                            bottom: 30, top: 20),
                                      ),
                                    ),
                                    Container(
                                      margin:
                                          EdgeInsets.only(left: 20, right: 20),
                                      child: Row(
                                        children: <Widget>[
                                          Image.network(
                                            pesanan[index].img,
                                            width: 80,
                                            height: 80,
                                            fit: BoxFit.cover,
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Container(
                                                margin:
                                                    EdgeInsets.only(left: 8.0),
                                                child: Text(
                                                  pesanan[index].dosen,
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.only(
                                                    bottom: 15.0, left: 8.0),
                                                child: Row(
                                                  children: <Widget>[
                                                    Text(
                                                      pesanan[index].matkul,
                                                    ),
                                                    Text(" | "),
                                                    Text(pesanan[index].jam)
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                          Expanded(child: SizedBox()),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          color: Colors.grey[300]),
                                      height: 1,
                                      width: 500,
                                      margin:
                                          EdgeInsets.only(bottom: 20, top: 20),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 5.0),
                                      child: Container(
                                        margin: EdgeInsets.only(
                                            left: 20, right: 20),
                                        child: Text(
                                          "HUB: Ninja Van",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 5.0, bottom: 5.0),
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 5.0),
                                        child: Container(
                                          // height: 50,
                                          width: 500,
                                          margin: EdgeInsets.only(
                                              left: 20, right: 20),
                                          padding: EdgeInsets.all(10),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            color: Colors.orange[50],
                                          ),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(2.0),
                                                child: Text(
                                                  "Diambil oleh Ninja Van",
                                                  style: TextStyle(
                                                      color: Colors.black38),
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(2.0),
                                                child: Text(
                                                  "Harus siap diambil pukul 09.00",
                                                  style: TextStyle(
                                                      color: Colors.black38),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 20, top: 5),
                                      child: Column(
                                        children: <Widget>[
                                          Text(
                                            "30 diberi label AA001-BB001-QV001",
                                            style: TextStyle(
                                                color: Colors.black54),
                                          ),
                                          Text(
                                            "21 diberi label AA001-BB001-QV002",
                                            style: TextStyle(
                                                color: Colors.black54),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          color: Colors.grey[300]),
                                      height: 1,
                                      width: 500,
                                      // padding: EdgeInsets.all(20),
                                      margin:
                                          EdgeInsets.only(bottom: 20, top: 20),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 5.0),
                                      child: Container(
                                        margin: EdgeInsets.only(
                                            left: 20, right: 20),
                                        child: Text(
                                          "HUB: Ninja Van",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 5.0, bottom: 5.0),
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 5.0),
                                        child: Container(
                                          // height: 50,
                                          width: 500,
                                          margin: EdgeInsets.only(
                                              left: 20, right: 20),
                                          padding: EdgeInsets.all(10),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            color: Colors.orange[50],
                                          ),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(2.0),
                                                child: Text(
                                                  "Diambil oleh Ninja Van",
                                                  style: TextStyle(
                                                      color: Colors.black38),
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(2.0),
                                                child: Text(
                                                  "Harus siap diambil pukul 09.00",
                                                  style: TextStyle(
                                                      color: Colors.black38),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 500,
                                      padding: EdgeInsets.all(20),
                                      margin: EdgeInsets.only(
                                          top: 5,
                                          left: 20,
                                          right: 20,
                                          bottom: 10),
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.grey[300], width: 1),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(5)),
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 8.0),
                                            child: Text(
                                              "HUB PQ001",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 15.0),
                                            child: Text(
                                              "30 diberi label AA001-BB001-PQ001",
                                              style: TextStyle(
                                                  color: Colors.grey[700]),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 8.0),
                                            child: Text(
                                              "Kulina Hub RW001 . 08112233445",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          Text(
                                            "Gedung Kulina Lt. 3, Jl. Tulodong Atas No.28, RT.6/RW.3, Senayan, Kec. Kby. Baru, Kota Jakarta Selatan, Daerah Khusus Ibukota Jakarta 12190",
                                            style: TextStyle(
                                                color: Colors.grey[700]),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          );
                        });
                  },
                  child: Card(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            "Senin, 23 Jan 2020",
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Row(
                          children: <Widget>[
                            Image.network(
                              pesanan[index].img,
                              width: 80,
                              height: 80,
                              fit: BoxFit.cover,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(left: 8.0),
                                  child: Text(
                                    pesanan[index].dosen,
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Container(
                                  margin:
                                      EdgeInsets.only(bottom: 15.0, left: 8.0),
                                  child: Row(
                                    children: <Widget>[
                                      Text(
                                        pesanan[index].matkul,
                                      ),
                                      Text(" | "),
                                      Text(pesanan[index].jam)
                                    ],
                                  ),
                                ),
                                // Container(
                                //   margin: EdgeInsets.only(left: 8.0),
                                //   child: Text(
                                //     "Pengiriman",
                                //     style: TextStyle(
                                //         fontWeight: FontWeight.bold,
                                //         color: Colors.red),
                                //   ),
                                // ),
                              ],
                            ),
                            Expanded(child: SizedBox()),
                            // Container(
                            //   decoration: BoxDecoration(
                            //     borderRadius: BorderRadius.circular(30),
                            //     color: Colors.green,
                            //   ),
                            //   child: Align(
                            //     alignment: Alignment.topRight,
                            //     child: Text(
                            //       pesanan[index].qty.toString(),
                            //       style: TextStyle(color: Colors.white),
                            //     ),
                            //   ),
                            //   padding: EdgeInsets.all(5),
                            //   margin: EdgeInsets.all(10),
                            // ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
              itemCount: pesanan.length)),
    );
  }
}
