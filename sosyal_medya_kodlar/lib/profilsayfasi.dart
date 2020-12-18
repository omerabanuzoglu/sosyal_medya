import 'package:flutter/material.dart';
import 'package:sosyal_medya/gonderikarti.dart';

class ProfilSayfasi extends StatelessWidget {
  final String isimSoyad;
  final String kullaniciAdi;
  final String kapakResimLinki;
  final String profilResimLinki;

  const ProfilSayfasi(
      {Key key,
      this.isimSoyad,
      this.kullaniciAdi,
      this.kapakResimLinki,
      this.profilResimLinki})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                height: 230,
              ),
              Container(
                height: 180,
                decoration: BoxDecoration(
                  color: Colors.green,
                  image: DecorationImage(
                    image: NetworkImage(kapakResimLinki),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                left: 20,
                bottom: 0.0,
                child: Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    color: Colors.lightBlue,
                    borderRadius: BorderRadius.circular(60.0),
                    border: Border.all(width: 2.0, color: Colors.white),
                    image: DecorationImage(
                        image: NetworkImage(profilResimLinki),
                        fit: BoxFit.cover),
                  ),
                ),
              ),
              Positioned(
                bottom: 0.0,
                left: 150.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      isimSoyad,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
                    ),
                    Text(
                      kullaniciAdi,
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    )
                  ],
                ),
              ),
              Positioned(
                right: 10,
                bottom: 55,
                child: Container(
                  width: 100,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: Colors.grey[200],
                    border: Border.all(width: 2.0, color: Colors.white),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.add_circle,
                        size: 18,
                      ),
                      SizedBox(width: 2),
                      Text(
                        "Takip Et",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              IconButton(
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  })
            ],
          ),
          SizedBox(height: 20),
          Container(
            height: 75,
            color: Colors.grey.withOpacity(0.1),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                sayac("Takipçi", "20K"),
                sayac("Takip", "500"),
                sayac("Paylaşım", "75"),
              ],
            ),
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
    );
  }

  Column sayac(String baslik, String sayi) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          sayi,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        SizedBox(height: 3),
        Text(
          baslik,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: Colors.grey[600],
          ),
        ),
      ],
    );
  }
}
