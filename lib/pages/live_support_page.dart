import 'package:abedok_live_support/pages/whatsapp_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'email_page.dart';
import 'hotline_page.dart';
import 'messenger_page.dart';
class LiveSupportPage extends StatelessWidget {
  const LiveSupportPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Container(
          height: 40,
          width: 40,
          margin: const EdgeInsets.only(left: 20, top: 10, bottom: 10),
          child: Card(
            elevation: 2,
            color: Colors.white,
            child: InkWell(
              onTap: (){},
              child: Container(
                margin: const EdgeInsets.only(left: 5),
                child: const Icon(
                  Icons.arrow_back_ios,
                  size: 15.0,
                  color: const Color(0xffbe047d),
                ),
              ),
            ),
          ),
        ),
        centerTitle: true,
        title: Text(
          "Live Support",
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: const Color(0xffbe047d),
            fontSize: 17,
            fontFamily: "Poppins SemiBold",
          ),
        ),
        actions: [
          Card(
            margin: EdgeInsets.only(right: 20, top: 10, bottom: 10),
            elevation: 0,
            child: InkWell(
              onTap: () {},
              child: Container(
                child: Image.asset(
                  'images/img.png',
                  width: 40,
                  height: 40,
                ),
              ),
            ),
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.only(top: 200, left: 38, right: 38),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 45,
          mainAxisSpacing: 45,
          children: [
            InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => MessengerPage()));
              },
              child: Container(
                height: 130,
                width: 160,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius:1.0,
                      )
                    ],
                    border: Border.all(
                      color: Colors.grey.shade300,
                    ),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      child:
                      Icon(FontAwesomeIcons.facebookMessenger, color: Colors.white, size: 25),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [
                          Color(hexColor('#E90D65')),
                          Color(hexColor('#AC0087')),
                        ]),
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    SizedBox(
                      height: 05,
                    ),
                    Text('Messenger')
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: (){
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => WhatsappPage()));
              },
              child: Container(
                width: 130,
                height: 160,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius:1.0,
                      )
                    ],
                    border: Border.all(
                      color: Colors.grey.shade300,
                    ),
                    color: Colors.white, borderRadius: BorderRadius.circular(8)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      child: Icon(FontAwesomeIcons.whatsapp, color: Colors.white, size: 25,),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [
                          Color(hexColor('#E90D65')),
                          Color(hexColor('#AC0087')),
                        ]),
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    SizedBox(
                      height: 05,
                    ),
                    Text('WhatsApp')
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: (){
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => HotlinePage()));
              },
              child: Container(
                height: 130,
                width: 160,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius:1.0,
                      )
                    ],
                    border: Border.all(
                      color: Colors.grey.shade300,
                    ),
                    color: Colors.white, borderRadius: BorderRadius.circular(8)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      child: Icon(FontAwesomeIcons.phone, color: Colors.white,),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [
                          Color(hexColor('#E90D65')),
                          Color(hexColor('#AC0087')),
                        ]),
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    SizedBox(
                      height: 05,
                    ),
                    Text('Hotline')
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: (){
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => EmailPage()));
              },
              child: Container(
                height: 130,
                width: 160,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius:1.0,
                      )
                    ],
                    border: Border.all(
                      color: Colors.grey.shade300,
                    ),
                    color: Colors.white, borderRadius: BorderRadius.circular(8)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      child: Icon(Icons.mail, color: Colors.white, size: 30,),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [
                          Color(hexColor('#E90D65')),
                          Color(hexColor('#AC0087')),
                        ]),
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    SizedBox(
                      height: 05,
                    ),
                    Text('Email')
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  int hexColor(String color) {
    String newColor = '0xff' + color;
    newColor = newColor.replaceAll('#', '');
    int finalColor = int.parse(newColor);
    return finalColor;
  }
}
