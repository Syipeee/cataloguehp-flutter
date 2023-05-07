import 'package:flutter/material.dart';
import 'phone_detail.dart';

class SamsungPage extends StatefulWidget {
  @override
  State<SamsungPage> createState() => _SamsungPageState();
}

class _SamsungPageState extends State<SamsungPage> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFCFAF8),
      body: ListView(
        children: <Widget>[
          SizedBox(height: 15.0),
          Container(
              padding: EdgeInsets.only(right: 15.0),
              width: MediaQuery.of(context).size.width - 30.0,
              height: MediaQuery.of(context).size.height - 50.0,
              child: GridView.count(
                crossAxisCount: 2,
                primary: false,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 15.0,
                childAspectRatio: 0.8,
                children: <Widget>[
                  _buildCard('Samsung S22 Ultra', '\Rp14.590.000', 'assets/samsungs22.jpeg',
                      'Samsung Galaxy S22 Ultra RAM 12GB ROM 512GB merupakan HP dengan layar 6.8" dan tingkat densitas piksel sebesar 500ppi. Ia dilengkapi dengan kamera belakang 12 + 108 + 10 + 10MP dan kamera depan 40MP. Memiliki berat sebesar 228g, HP ini hadir dengan kapasitas baterai 5000mAh. Di dukung dengan Procesor Qualcomm Snapdragon 8 Gen 1, Octa-core (1x3.00 GHz Cortex-X2 & 3x2.50 GHz Cortex-A710 & 4x1.80 GHz Cortex-A510)',
                      context),
                  _buildCard('Samsung S23 Ultra', '\Rp25.999.000', 'assets/samsungs23.jpg', 'Samsung S23 Ultra RAM 12GB ROM 1TB merupakan HP dengan layar 6.8" dan tingkat densitas piksel sebesar 500ppi. Ia dilengkapi dengan kamera belakang 200 + 10 + 10 + 12MP dan kamera depan 12MP. Memiliki berat sebesar 234g, HP ini hadir dengan kapasitas baterai 5000mAh. Di dukung dengan Procesor Qualcomm SM8550-AC Snapdragon 8 Gen 2, Octa-core (1x3.36 GHz Cortex-X3 & 2x2.8 GHz Cortex-A715 & 2x2.8 GHz Cortex-A710 & 3x2.0 GHz Cortex-A510)', 
                      context),
                ],
              )),
          SizedBox(height: 15.0)
        ],
      ),
    );
  }

  Widget _buildCard(String name, String price, String imgPath, String detail, context) {
  return Padding(
    padding: EdgeInsets.only(top: 5.0, bottom: 5.0, left: 5.0, right: 5.0),
    child: InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => PhoneDetail(
            assetPath: imgPath,
            phoneprice: price,
            phonename: name,
            phonedetail: detail,
          ),
        ));
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 3.0,
              blurRadius: 5.0,
            ),
          ],
          color: Colors.white,
        ),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        isFavorite = !isFavorite;
                        
                      });

                      print(isFavorite);
                    },
                    child: isFavorite 
                        ? Icon(Icons.favorite, color: Color(0xFFEF7532))
                        : Icon(Icons.favorite_border, color: Color(0xFFEF7532))
                  ),
                ],
              ),
            ),
            SizedBox(height: 30.0),
            Hero(
              tag: imgPath,
              child: Container(
                height: 75.0,
                width: 75.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(imgPath),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
            SizedBox(height: 7.0),
            Text(
              price,
              style: TextStyle(
                color: Color(0xFFCC8053),
                fontFamily: 'Varela',
                fontSize: 14.0,
              ),
            ),
            Text(
              name,
              style: TextStyle(
                color: Color(0xFF575E67),
                fontFamily: 'Varela',
                fontSize: 14.0,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}



}

