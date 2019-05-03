import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

final String assetLunch = 'assets/lunch.svg';
final Widget svgLunch = new SvgPicture.asset(
    assetLunch,
);
final String assetDinner = 'assets/dinner.svg';
final Widget svgDinner = new SvgPicture.asset(
  assetDinner,
);
final String assetEvent = 'assets/event.svg';
final Widget svgEvent = new SvgPicture.asset(
  assetEvent,
);

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kulina App',
      home: Scaffold(
       body: Container(
         child: ListView(
           children: <Widget>[
             BalanceProfile(),
             Category(),
             TextFeaturedProduct(),
             FeaturedProduct(),
             Promo(),
             TextJenisMakanan(),
             JenisMakanan(),
             TextNewProduct(),
             NewProduct(),
             TextHarga(),
             Harga()
           ],
         ),
       ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
          type: BottomNavigationBarType.fixed,
          items:[
            BottomNavigationBarItem(
              icon: new Icon(Icons.home),
              title: new Text('Home'),
            ),
            BottomNavigationBarItem(
              icon: new Icon(Icons.shopping_basket),
              title: new Text('Pesanan'),
            ),
            BottomNavigationBarItem(
              icon: new Icon(Icons.account_balance_wallet),
              title: new Text('Dompet'),
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.card_giftcard),
                title: Text('Referal')
            )
          ]
        ),
      )
    );
  }
}

class BalanceProfile extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(
          left: 13,
          right: 13,
          top: 40,
          bottom: 10,
        ),
        height: 75,
        child: Card(
          elevation: 1.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Hi, Murtiono Widi', style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                  ),),
                  Text('Saldo Rp. 72.000'),
                ],
              ),
              Container(
                width: 50,
                height: 50,
                decoration: new BoxDecoration(
                    shape: BoxShape.circle,
                    image: new DecorationImage(
                        fit: BoxFit.fill,
                        image: new AssetImage('assets/profile.JPG')
                    )
                ),
              ),
            ],
          )
        ),
    );
  }
}

class Category extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    // TODO: implement build
      return Container(
          margin: const EdgeInsets.only(
            left: 13,
            right: 13,
            top: 10,
            bottom: 10,
          ),
        height: 120,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
          Container(
            width: 110,
            height: 110,
            child: Card(
              elevation: 3.0,
              child: Column(
                children: <Widget>[
                  Container(
                    width: 85,
                    height: 85,
                    child: svgLunch,
                  ),
                  Text('Lunch', style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),),
                ],
              ),
            ),
          ),
            Container(
              width: 110,
              height: 110,
              child: Card(
                elevation: 3.0,
                child: Column(
                  children: <Widget>[
                    Container(
                      width: 85,
                      height: 85,
                      child: svgDinner,
                    ),
                    Text('Dinner', style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),),
                  ],
                ),
              ),
            ),
            Container(
              width: 110,
              height: 110,
              child: Card(
                elevation: 3.0,
                child: Column(
                  children: <Widget>[
                    Container(
                      width: 85,
                      height: 85,
                      child: svgEvent,
                    ),
                    Text('Event', style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),),
                  ],
                ),
              ),
            ),
          ],
        )
      );
  }
}

class TextFeaturedProduct extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: const EdgeInsets.only(
        left: 13,
        top: 25,
        bottom: 5,
      ),
      child: Text(
        'Featured Product',
        style: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class FeaturedProduct extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        margin: const EdgeInsets.only(
        left: 5,
        top: 10,
        bottom: 20),
        height: 300,

      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(
              left: 5,
              right: 5
            ),
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)
              ),
              elevation: 3.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Image.asset('assets/bento-s.jpg', fit: BoxFit.fill, width: 182, height: 240,),
                      Positioned(
                        top: 10,
                        left: 5,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('Weight Loss Lunch', style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                            ),),
                            Text('Rp 100.000/hari', style: TextStyle(
                                color: Colors.white
                            ))
                          ],
                        ),
                      )
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                      left: 5
                    ),
                    child: Row(
                      children: <Widget>[
                        Image.asset('assets/leafwel.png',height: 50,)
                      ],
                    ),
                  )
                ],
              ),
            )
          ),
          Container(
              margin: EdgeInsets.only(
                  left: 5,
                  right: 5
              ),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)
                ),
                elevation: 3.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Stack(
                      children: <Widget>[
                        Image.asset('assets/fanda_bento.jpeg', fit: BoxFit.fill, width: 182, height: 240,),
                        Positioned(
                          top: 10,
                          left: 5,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text('Bento Ekonomis', style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white
                              ),),
                              Text('Rp 40.500/hari', style: TextStyle(
                                  color: Colors.white
                              ))
                            ],
                          ),
                        )
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                          left: 5
                      ),
                      child: Row(
                        children: <Widget>[
                          Image.asset('assets/leafwel.png',height: 50,)
                        ],
                      ),
                    )
                  ],
                ),
              )
          ),
          Container(
              margin: EdgeInsets.only(
                  left: 5,
                  right: 5
              ),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)
                ),
                elevation: 3.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Stack(
                      children: <Widget>[
                        Image.asset('assets/naturale-lunch.jpg', fit: BoxFit.fill, width: 182, height: 240,),
                        Positioned(
                          top: 10,
                          left: 5,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text('Naturale - Lunch', style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white
                              ),),
                              Text('Rp 30.000/hari', style: TextStyle(
                                  color: Colors.white
                              ))
                            ],
                          ),
                        )
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                          left: 5
                      ),
                      child: Row(
                        children: <Widget>[
                          Image.asset('assets/merchant3.jpg',height: 50,)
                        ],
                      ),
                    )
                  ],
                ),
              )
          ),
        ],
      ),
    );
  }
}

class Promo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: const EdgeInsets.only(
          left: 5,
          top: 20,
          bottom: 20),
      height: 208,

      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
              margin: EdgeInsets.only(
                  left: 5,
                  right: 5
              ),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)
                ),
                elevation: 3.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Image.asset('assets/banner1.jpg', fit: BoxFit.fill, width: 370, height: 200,),
                  ],
                ),
              )
          ),
          Container(
              margin: EdgeInsets.only(
                  left: 5,
                  right: 5
              ),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)
                ),
                elevation: 3.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Image.asset('assets/banner2.jpg', fit: BoxFit.fill, width: 370, height: 200,),
                  ],
                ),
              )
          ),
          Container(
              margin: EdgeInsets.only(
                  left: 5,
                  right: 5
              ),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)
                ),
                elevation: 3.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Image.asset('assets/banner3.jpg', fit: BoxFit.fill, width: 370, height: 200,),
                  ],
                ),
              )
          ),

        ],
      ),
    );
  }
}

class TextJenisMakanan extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: const EdgeInsets.only(
        left: 13,
        top: 20,
        bottom: 8,
      ),
      child: Text(
        'Jenis Makanan',
        style: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

}

class JenisMakanan extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        margin: const EdgeInsets.only(
        left: 13,
        right: 13,
        top: 8,
        bottom: 15,
    ),
      child: Column(
        children: <Widget>[
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  width: 110,
                  height: 110,
                  child: Card(
                    elevation: 3.0,
                    child: Image.asset('assets/Indonesian.png'),
                  ),
                ),
                Container(
                  width: 110,
                  height: 110,
                  child: Card(
                    elevation: 3.0,
                    child: Image.asset('assets/Western.png'),
                  ),
                ),
                Container(
                  width: 110,
                  height: 110,
                  child: Card(
                    elevation: 3.0,
                    child: Image.asset('assets/Japanese.png'),
                  ),
                ),
              ]
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  width: 110,
                  height: 110,
                  child: Card(
                    elevation: 3.0,
                    child: Image.asset('assets/Chinese.png'),
                  ),
                ),
                Container(
                  width: 110,
                  height: 110,
                  child: Card(
                    elevation: 3.0,
                    child: Image.asset('assets/Healthy.png'),
                  ),
                ),
                Container(
                  width: 110,
                  height: 110,
                  child: Card(
                    elevation: 3.0,
                    child: Image.asset('assets/Others.png'),
                  ),
                ),
              ]
          ),
        ],
      ),
    );
  }

}

class TextNewProduct extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: const EdgeInsets.only(
        left: 13,
        top: 20,
        bottom: 8,
      ),
      child: Text(
        'New Product',
        style: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

}

class NewProduct extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: const EdgeInsets.only(
          left: 5,
          top: 10,
          bottom: 20),
      height: 300,

      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
              margin: EdgeInsets.only(
                  left: 5,
                  right: 5
              ),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)
                ),
                elevation: 3.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Stack(
                      children: <Widget>[
                        Image.asset('assets/bento-s.jpg', fit: BoxFit.fill, width: 182, height: 240,),
                        Positioned(
                          top: 10,
                          left: 5,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text('Weight Loss Lunch', style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),),
                              Text('Rp 100.000/hari', style: TextStyle(
                                  color: Colors.white
                              ))
                            ],
                          ),
                        )
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                          left: 5
                      ),
                      child: Row(
                        children: <Widget>[
                          Image.asset('assets/leafwel.png',height: 50,)
                        ],
                      ),
                    )
                  ],
                ),
              )
          ),
          Container(
              margin: EdgeInsets.only(
                  left: 5,
                  right: 5
              ),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)
                ),
                elevation: 3.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Stack(
                      children: <Widget>[
                        Image.asset('assets/fanda_bento.jpeg', fit: BoxFit.fill, width: 182, height: 240,),
                        Positioned(
                          top: 10,
                          left: 5,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text('Bento Ekonomis', style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white
                              ),),
                              Text('Rp 40.500/hari', style: TextStyle(
                                  color: Colors.white
                              ))
                            ],
                          ),
                        )
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                          left: 5
                      ),
                      child: Row(
                        children: <Widget>[
                          Image.asset('assets/leafwel.png',height: 50,)
                        ],
                      ),
                    )
                  ],
                ),
              )
          ),
          Container(
              margin: EdgeInsets.only(
                  left: 5,
                  right: 5
              ),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)
                ),
                elevation: 3.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Stack(
                      children: <Widget>[
                        Image.asset('assets/naturale-lunch.jpg', fit: BoxFit.fill, width: 182, height: 240,),
                        Positioned(
                          top: 10,
                          left: 5,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text('Naturale - Lunch', style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white
                              ),),
                              Text('Rp 30.000/hari', style: TextStyle(
                                  color: Colors.white
                              ))
                            ],
                          ),
                        )
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                          left: 5
                      ),
                      child: Row(
                        children: <Widget>[
                          Image.asset('assets/merchant3.jpg',height: 50,)
                        ],
                      ),
                    )
                  ],
                ),
              )
          ),
        ],
      ),
    );
  }
}

class TextHarga extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: const EdgeInsets.only(
        left: 13,
        top: 20,
        bottom: 8,
      ),
      child: Text(
        'Harga',
        style: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

}

class Harga extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: const EdgeInsets.only(
        left: 13,
        right: 13,
        top: 10,
        bottom: 10,
      ),
      child: Column(
        children: <Widget>[
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
              Container(
                width: 190,
                height: 125,
                child: Card(
                  elevation: 3.0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(
                        top: 20,
                        left: 20
                      ),
                      child: Text('Budget', style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 20,
                        top: 5
                      ),
                      child: Text('Kurang dari 25rb', style: TextStyle(
                      ),),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 20,
                      ),
                      child: Image.asset('assets/coin1.png', width: 50, height: 50,),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                width: 190,
                height: 125,
                child: Card(
                  elevation: 3.0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(
                            top: 20,
                            left: 20
                        ),
                        child: Text('Value', style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                        ),),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: 20,
                            top: 5
                        ),
                        child: Text('Dari 25rb - 34rb', style: TextStyle(
                        ),),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 20,
                        ),
                        child: Image.asset('assets/coin2.png', width: 50, height: 50,),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    width: 190,
                    height: 125,
                    child: Card(
                      elevation: 3.0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(
                                top: 20,
                                left: 20
                            ),
                            child: Text('Casual', style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                            ),),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                left: 20,
                                top: 5
                            ),
                            child: Text('Dari 35rb - 49rb', style: TextStyle(
                            ),),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 20,
                            ),
                            child: Image.asset('assets/coin3.png', width: 50, height: 50,),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 190,
                    height: 125,
                    child: Card(
                      elevation: 3.0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(
                                top: 20,
                                left: 20
                            ),
                            child: Text('Premium', style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                            ),),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                left: 20,
                                top: 5
                            ),
                            child: Text('Lebih dari 50rb', style: TextStyle(
                            ),),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 20,
                            ),
                            child: Image.asset('assets/coin4.png', width: 50, height: 50,),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
        ],
      ),
    );
  }
}