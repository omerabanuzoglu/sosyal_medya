import 'package:flutter/material.dart';

class GonderiKarti extends StatelessWidget {
  final String profilResimLinki;
  final String isimSoyad;
  final String gecenSure;
  final String gonderiResimLinki;
  final String aciklama;

  GonderiKarti(
      {this.profilResimLinki,
      this.isimSoyad,
      this.gecenSure,
      this.gonderiResimLinki,
      this.aciklama});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Material(
        borderRadius: BorderRadius.circular(12.0),
        elevation: 2.0,
        child: Container(
          padding: EdgeInsets.all(15.0),
          width: double.infinity,
          height: 430.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.0),
            color: Colors.white,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.indigo,
                          image: DecorationImage(
                            image: NetworkImage(profilResimLinki),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 7.0,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            isimSoyad,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                              color: Colors.black,
                            ),
                          ),
                          Text(gecenSure),
                        ],
                      ),
                    ],
                  ),
                  IconButton(
                    alignment: Alignment.topRight,
                    icon: Icon(Icons.more_vert),
                    onPressed: () {},
                  ),
                ],
              ),
              SizedBox(height: 10.0),
              Text(
                aciklama,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 10),
              Image.network(
                gonderiResimLinki,
                fit: BoxFit.cover,
                width: double.infinity,
                height: 250,
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  iconluButon(
                      icon: Icons.favorite, yazi: "Beğen", fonksiyonum: () {}),
                  iconluButon(
                      icon: Icons.comment, yazi: "Yorum", fonksiyonum: () {}),
                  iconluButon(
                      icon: Icons.share, yazi: "Paylaş", fonksiyonum: () {}),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

// ignore: camel_case_types
class iconluButon extends StatelessWidget {
  final IconData icon;
  final String yazi;
  final fonksiyonum;

  iconluButon({Key key, this.icon, this.yazi, this.fonksiyonum});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: fonksiyonum,
        child: Container(
          padding: EdgeInsets.all(10),
          child: Row(
            children: [
              Icon(
                icon,
                size: 30,
              ),
              SizedBox(width: 5),
              Text(
                yazi,
                style: TextStyle(fontSize: 17),
              )
            ],
          ),
        ),
      ),
    );
  }
}
