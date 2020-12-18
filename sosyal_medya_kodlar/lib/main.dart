import 'package:flutter/material.dart';
import 'package:sosyal_medya/gonderikarti.dart';
import 'package:sosyal_medya/profilsayfasi.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Projem",
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: AnaSayfa(),
    );
  }
}

class AnaSayfa extends StatefulWidget {
  @override
  _AnaSayfaState createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.grey,
            size: 32,
          ),
          onPressed: () {},
        ),
        title: Text(
          "Türk Chat",
          style: TextStyle(
            fontSize: 20,
            color: Colors.grey,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(
              Icons.notifications,
              color: Colors.purple,
              size: 32,
            ),
            onPressed: () {
              showModalBottomSheet(
                  context: context,
                  builder: (BuildContext context) {
                    return Column(
                      children: [
                        duyuru("Kamil seni takip etti.", "3 dk önce"),
                        duyuru("Seda fotografına yorum yaptı.", "1 gün önce"),
                        duyuru("Mustafa fotografını beğendi.", "2 gün önce"),
                      ],
                    );
                  });
            },
          ),
        ],
      ),
      body: ListView(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[100],
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  offset: Offset(5.0, 0.0),
                  blurRadius: 5.0,
                ),
              ],
            ),
            height: 100.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                profilKartiOlustur(
                  "Ömer",
                  "https://cdn.pixabay.com/photo/2014/09/25/22/14/profile-461076_960_720.jpg",
                  "Ömer Poyraz",
                  "https://cdn.pixabay.com/photo/2014/09/25/22/14/profile-461076_960_720.jpg",
                ),
                profilKartiOlustur(
                  "Selda",
                  "https://cdn.pixabay.com/photo/2017/04/06/19/34/girl-2209147_960_720.jpg",
                  "Selda Bağcan",
                  "https://cdn.pixabay.com/photo/2017/04/06/19/34/girl-2209147_960_720.jpg",
                ),
                profilKartiOlustur(
                  "Berna",
                  "https://cdn.pixabay.com/photo/2018/08/23/22/29/girl-3626901_960_720.jpg",
                  "Berna Işık",
                  "https://cdn.pixabay.com/photo/2018/08/23/22/29/girl-3626901_960_720.jpg",
                ),
                profilKartiOlustur(
                  "Yang",
                  "https://cdn.pixabay.com/photo/2020/11/24/15/04/woman-5772863_960_720.jpg",
                  "Yang Yong",
                  "https://cdn.pixabay.com/photo/2020/11/24/15/04/woman-5772863_960_720.jpg",
                ),
                profilKartiOlustur(
                  "Avni",
                  "https://cdn.pixabay.com/photo/2017/10/22/17/54/wolf-2878633_960_720.jpg",
                  "Avni Özerk",
                  "https://cdn.pixabay.com/photo/2017/10/22/17/54/wolf-2878633_960_720.jpg",
                ),
                profilKartiOlustur(
                  "Aleyna",
                  "https://cdn.pixabay.com/photo/2018/02/20/20/52/people-3168830_960_720.jpg",
                  "Aleyna Çıdamlı",
                  "https://cdn.pixabay.com/photo/2018/02/20/20/52/people-3168830_960_720.jpg",
                ),
              ],
            ),
          ),
          SizedBox(height: 10.0),
          GonderiKarti(
            profilResimLinki:
                "https://cdn.pixabay.com/photo/2014/09/25/22/14/profile-461076_960_720.jpg",
            aciklama: "Merhaba ben yeni katıldım.",
            gecenSure: "15 dk önce",
            isimSoyad: "Açelya Çiğdem",
            gonderiResimLinki:
                "https://cdn.pixabay.com/photo/2014/09/25/22/14/profile-461076_960_720.jpg",
          ),
          GonderiKarti(
            profilResimLinki:
                "https://cdn.pixabay.com/photo/2014/09/25/22/14/profile-461076_960_720.jpg",
            aciklama: "Merhaba ben yeni katıldım.",
            gecenSure: "15 dk önce",
            isimSoyad: "Açelya Çiğdem",
            gonderiResimLinki:
                "https://cdn.pixabay.com/photo/2014/09/25/22/14/profile-461076_960_720.jpg",
          ),
          GonderiKarti(
            profilResimLinki:
                "https://cdn.pixabay.com/photo/2014/09/25/22/14/profile-461076_960_720.jpg",
            aciklama: "Merhaba ben yeni katıldım.",
            gecenSure: "15 dk önce",
            isimSoyad: "Açelya Çiğdem",
            gonderiResimLinki:
                "https://cdn.pixabay.com/photo/2014/09/25/22/14/profile-461076_960_720.jpg",
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.purple[300],
        child: Icon(
          Icons.add_a_photo,
          color: Colors.white,
        ),
      ),
    );
  }

  Padding duyuru(String mesaj, String gecenSure) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            mesaj,
            style: TextStyle(fontSize: 15),
          ),
          Text(gecenSure),
        ],
      ),
    );
  }

  Widget profilKartiOlustur(String kullaniciAdi, String resimLinki,
      String isimSoyad, String kapakResimLinki) {
    return Material(
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (BuildContext context) => ProfilSayfasi(
                profilResimLinki: resimLinki,
                kullaniciAdi: kullaniciAdi,
                isimSoyad: isimSoyad,
                kapakResimLinki: kapakResimLinki,
              ),
            ),
          );
        },
        child: Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 5),
          child: Column(
            children: [
              Stack(
                alignment: AlignmentDirectional.topEnd,
                children: [
                  Container(
                    width: 70.0,
                    height: 70.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(width: 2.0, color: Colors.grey),
                      borderRadius: BorderRadius.circular(35.0),
                      image: DecorationImage(
                        image: NetworkImage(resimLinki),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(25.0),
                      border: Border.all(width: 2.0, color: Colors.white),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 4.0),
              Text(
                kullaniciAdi,
                style: TextStyle(fontSize: 15, color: Colors.black),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
