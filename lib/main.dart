import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(BottomNavDemo());
}

class BottomNavDemo extends StatefulWidget {
  @override
  _BottomNavDemoState createState() => new _BottomNavDemoState();
}

class _BottomNavDemoState extends State<BottomNavDemo> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'my title',
      home: new Scaffold(
        bottomNavigationBar: new BottomNavigationBar(
          type: BottomNavigationBarType.fixed,

          items: <BottomNavigationBarItem>[
            new BottomNavigationBarItem(
                label: 'Home',
                icon: new Icon(Icons.home)),
            new BottomNavigationBarItem(
                label: 'Following',
                icon: new Icon(Icons.terrain)),
            new BottomNavigationBarItem(
                label: 'Search',
                icon: new Icon(Icons.search_rounded)),
            new BottomNavigationBarItem(
                label: 'Messaging',
                icon: new Icon(Icons.messenger_outline_rounded)),
            new BottomNavigationBarItem(
                label: 'Profile',
                icon: new Icon(Icons.person_outline_rounded)),
          ],
        ),
        body: Column(
           mainAxisSize: MainAxisSize.max,
          children: [

            Container(
              padding: EdgeInsets.symmetric(vertical: 40,horizontal: 13),
              child:Column(
              children: [
                Container(child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Column(children: [
                    Text("Top Stories",style:TextStyle(fontWeight: FontWeight.w900,fontSize: 30)),
                    Text("Mondy.Juine 8",style:TextStyle(fontSize: 20,color:Color. fromRGBO(0, 0, 0, 0.3) ))
                  ],),Stack(
                      children: [
                        CircleAvatar(
                          backgroundColor: Color(0xff00A3FF),
                          backgroundImage: AssetImage("images/girl.png"),
                          radius: 25.0,
                        ),
                        Positioned(
                            right: 0,
                            top: 0,
                            child: Container(
                                padding: EdgeInsets.all(7.5),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 2,
                                        color: Colors.white
                                    ),
                                    borderRadius: BorderRadius.circular(90.0),
                                    color: Colors.red
                                )
                            )
                        )
                      ]
                  )],
                ),),
   ],
            ) ,),
            Column(
              children: [
                Container(
                    width: double.infinity,
              //    padding:EdgeInsets.symmetric(horizontal: ),
                  child: Column(

                    children: [
                      Container( height: 200,width: double.infinity,child: Image.asset("images/imara.jpg" ,)),
                      Container(
                        padding:EdgeInsets.all(8),
                        child:Text("Addiction When Gambling Becomes A Problem",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 25),)
                        ,),
                      ListTile(
                        title: Text("Brent Robertson",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14)),
                        subtitle: Text("35m ago "),
                          leading :CircleAvatar(
                            backgroundImage: AssetImage('images/girl.png'),
                          )

                      ),
                      Container(
                        padding:EdgeInsets.all(8),
                        child:Text("Make your global message delivery faster and more reliable. Top rated customer service. Keep customers accounts safe through the customer journey with user authentication. 7 Billion Devices Reached. 24/7 Support. 60+ Offices"),)
,Container(
                          padding:EdgeInsets.all(8),
                child: Row(children: [ Icon(
                  Icons.favorite,
                  color: Colors.pink,
                  size: 24.0,
                  semanticLabel: 'Text to announce in accessibility modes',
                ),SizedBox(width: 5,),Text("1125"),SizedBox(width: 20,),Icon(
                  Icons.message_outlined,
                  color: Colors.black,
                  size: 24.0,
                  semanticLabel: 'Text to announce in accessibility modes',
                ),SizedBox(width: 5,),Text("1125")],)
                      ),

                      Container(
                        color: Colors.red,
                        padding: EdgeInsets.symmetric(horizontal: 25,vertical:10 ),
                        child: Text(" Explorez maintenant, Nouvelles sources, La meilleure recherche",style: TextStyle(fontSize: 20,color: Colors.white),),)

                    ],


                  ),


                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

