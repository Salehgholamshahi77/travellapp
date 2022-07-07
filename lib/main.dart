import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/Models/TravelModel.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _MainPagesState();
}

class _MainPagesState extends State<MainPage> {
  int _selectedIndex = 0;
  double imagesize = 65;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(children: [
            Container(
              color: Color.fromARGB(255, 247, 246, 244),
              width: double.infinity,
              height: size.height / 1.8,
              child: Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: size.height / 2.1,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(55),
                            bottomRight: Radius.circular(55)),
                        image: DecorationImage(
                            image: AssetImage(travelist[_selectedIndex].image),
                            fit: BoxFit.cover)),
                  ),
                  //head iconn
                  Positioned(
                    right: 0,
                    top: 0,
                    left: 0,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(16, 20, 16, 0),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color.fromARGB(70, 238, 225, 225)),
                              child: Icon(CupertinoIcons.heart),
                            ),
                            Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color.fromARGB(70, 238, 225, 225)),
                              child: Icon(CupertinoIcons.arrow_left),
                            ),
                          ]),
                    ),
                  ),
                  Positioned(
                    
                    right: 0,
                    top: 80,
                    child: SizedBox(
                      width: 85,
                      height: double.maxFinite,
                      child: ListView.builder(
                        itemCount: travelist.length,
                        itemBuilder: (context, index) {
                          return ImageItem(index);
                        },
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 80,
                    left: 39,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Text(travelist[_selectedIndex].name,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),),
                      Row(
                        children: [
                          Icon(CupertinoIcons.placemark,color: Colors.white,),
                          Text(travelist[_selectedIndex].location,style: TextStyle(color: Colors.white,fontWeight: FontWeight.normal,fontSize: 19),)
                        ],
                      )
                    ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: double.infinity,
              child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: BorderSide(color: Color.fromARGB(60, 0, 0, 0),
                    width: 1)
                  ),
                  child: Container(
                    width: 100,
                    height: 100,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("Destance"),
                        Text(travelist[_selectedIndex].distanse + " km",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17,color: Colors.blue),)
                      ],
                    ),
                  ),
                ),
                Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: BorderSide(color: Color.fromARGB(60, 0, 0, 0),
                    width: 1)
                  ),
                  child: Container(
                    width: 100,
                    height: 100,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("Temp"),
                        Text(travelist[_selectedIndex].temp + "\u00B0 C",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17,color: Colors.blue))
                      ],
                    ),
                  ),
                ),
                Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: BorderSide(color: Color.fromARGB(60, 0, 0, 0),
                    width: 1)
                  ),
                  child: Container(
                    width: 100,
                    height: 100,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("Rating"),
                        Text(travelist[_selectedIndex].raiting,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17,color: Colors.blue))
                      ],
                    ),
                  ),
                ),
        
                 
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(24,16 ,24 ,8 ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Text("Description"),
                ExpandableText(
                  travelist[_selectedIndex].discription,
                 expandText: 'read more',
                 collapseText: 'coollaps',
                 ),
                 SizedBox(height: 16,),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                    Text("totalprice"),
                    Text(travelist[_selectedIndex].price + " \$",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),)
                      ],
                    ),
                       Container(
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color.fromARGB(255, 12, 12, 12)),
                              child: Icon(CupertinoIcons.arrow_left,color: Colors.white,),
                            ),

                  ],
                 )
              ],),
            )
        
              ],),
            )
          ]),
        ),
      ),
    );
  }

  Widget ImageItem(int index) {
    return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              _selectedIndex = index;
                            });
                          },
                          child: AnimatedContainer(
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.white, width: 2),
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image:
                                        AssetImage(travelist[index].image))),
                            width: _selectedIndex == index
                                ? imagesize + 15
                                : imagesize,
                            height: _selectedIndex == index
                                ? imagesize + 15
                                : imagesize,
                            duration: const Duration(milliseconds: 500),
                          ),
                        ),
                      ),
                    ],
                  );
  }
}
