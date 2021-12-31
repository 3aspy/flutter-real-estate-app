import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:real_estate/theme.dart';

class MainPage extends StatelessWidget{
   @override
  Widget build(BuildContext context) {
 
    Widget Header(){
     return Container(
       margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
       child: Column(
         children: [
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Container(
                 width: 40,
                 height: 40,
                 decoration: BoxDecoration(
                   color: secondColor,
                   borderRadius: BorderRadius.circular(8),
                 ),
                 child: Icon(Icons.category, color: textColor,),
               ),
             Container(
               child: Row(
                 children: [
                   Icon(Icons.location_pin, color: orangeColor,),
                   SizedBox(width: 5,),
                   Text('California, ', style: titleTextStyle.copyWith(
                     fontSize: 12,
                     fontWeight: FontWeight.w600
                   ),),
                   Text('US', style: textTextStyle.copyWith(
                     fontSize: 12,
                     fontWeight: FontWeight.w400
                   ),)
                 ],
               ),
             ),
             Container(
               width: 40,
               height: 40,
               decoration: BoxDecoration(
                 color: secondColor,
                 borderRadius: BorderRadius.circular(8),
               ),
               child: Icon(Icons.notifications_active, color: textColor,),
             )
             ],
           ),
          
         ],
       ),
     );
     
     }

    Widget Search(){
       return Container(
        margin: EdgeInsets.only(left: 24),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  width: 265,
                  height: 40,
                  margin: EdgeInsets.only(left: 20, top: 20),
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  decoration: BoxDecoration(
                    color: secondColor,
                    borderRadius: BorderRadius.circular(12)
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.search, color: textColor,), 
                      SizedBox(width: 10,),
                      Expanded(
                        child: TextFormField(
                          style: textTextStyle,
                          decoration: InputDecoration.collapsed(
                            hintText: 'Search Classic Style', 
                            hintStyle: textTextStyle.copyWith(
                              fontWeight: FontWeight.w400,
                              fontSize: 12
                            )),
                        ),
                      ),
                      Icon(Icons.mic_none, color: orangeColor,)
                    ],
                  ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20, left: 10),
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: titleColor,
                  borderRadius: BorderRadius.circular(12)
                ),
                child: Icon(Icons.filter_list_alt, color: primaryColor, size: 18,),
              )
              ]
              )
              ]
              )
              );
    }    
    Widget Card(){
      return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Column(
          children: [
            Row(
              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.pushNamed(context, '/detail-page');
                  },
                  child: Container(
                    margin: EdgeInsets.only(top: 20, left: 20),
                    width: 230,
                    height: 270,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      image: DecorationImage(
                        image: AssetImage('assets/House-Pic.png')
                      )
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: 10, bottom: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('American Classic', style: primaryTextStyle.copyWith(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold
                                  ),),
                                  Text('Highway District 201', style: subtitleTextStyle.copyWith(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400
                                  ),)
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 10, bottom: 10),
                              width: 24,
                              height: 24,
                              decoration: BoxDecoration(
                                color: primaryColor.withOpacity(0.5),
                                borderRadius: BorderRadius.circular(6)
                              ),
                              child: Icon(Icons.favorite, color: redColor, size: 16,),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20, left: 20),
                  width: 230,
                  height: 270,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    image: DecorationImage(
                      image: AssetImage('assets/House-Pic2.png')
                    )
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.only(left: 10, bottom: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Modernistic House', style: primaryTextStyle.copyWith(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold
                                ),),
                                Text('Br Bridgeway 301', style: subtitleTextStyle.copyWith(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400
                                ),)
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 10, bottom: 10),
                            width: 24,
                            height: 24,
                            decoration: BoxDecoration(
                              color: primaryColor.withOpacity(0.5),
                              borderRadius: BorderRadius.circular(6)
                            ),
                            child: Icon(Icons.favorite, color: redColor, size: 16,),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      );
    }
    
    Widget Popular(){
      return Container(
        margin: EdgeInsets.only(left: 20, top: 20, right: 20),
        child: Column(
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Popular', style: titleTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.w600
                  ),),
                  Text('See More', style: subtitleTextStyle.copyWith(
                    fontSize: 12,
                    fontWeight: FontWeight.w600
                  ),)
                ],
              ),
            ),
            SizedBox(height: 15,),
            Container(
              width: 310,
              height: 80,
              decoration: BoxDecoration(
                color: secondColor,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 62,
                    height: 62,
                    margin: EdgeInsets.only(left: 15, top: 10, right: 10, bottom: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      image: DecorationImage(
                        image: AssetImage('assets/House-Pic3.png')
                      )
                    ),
                  ),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Minimalist House', style: titleTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w600
                        ),),
                        Text('Calif District 101', style: subtitleTextStyle.copyWith(
                          fontSize: 10,
                          fontWeight: FontWeight.w400
                        ),)
                      ],
                    ),
                  ),
                  Container(
                    width: 24,
                    height: 24,
                    margin: EdgeInsets.only(left: 60, top: 10, right: 10),
                    decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(6)
                    ),
                    child: Icon(Icons.favorite, color: subtitleColor, size: 16,),
                  )
                ],
              ),
            ),
            SizedBox(height: 15,),
            Container(
              width: 310,
              height: 80,
              decoration: BoxDecoration(
                color: secondColor,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 62,
                    height: 62,
                    margin: EdgeInsets.only(left: 15, top: 10, right: 10, bottom: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      image: DecorationImage(
                        image: AssetImage('assets/House-Pic4.png')
                      )
                    ),
                  ),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Futuristic House', style: titleTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w600
                        ),),
                        Text('Pile Broadway 920', style: subtitleTextStyle.copyWith(
                          fontSize: 10,
                          fontWeight: FontWeight.w400
                        ),)
                      ],
                    ),
                  ),
                  Container(
                    width: 24,
                    height: 24,
                    margin: EdgeInsets.only(left: 60, top: 10, right: 10),
                    decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(6)
                    ),
                    child: Icon(Icons.favorite, color: subtitleColor, size: 16,),
                  )
                ],
              ),
            )
          ],
        ),
      );
    }
    
    
    return Scaffold(
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(top: 26),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: true,
          unselectedItemColor: subtitleColor,
          selectedItemColor: titleColor,
          currentIndex: 0,
          iconSize: 22,
          elevation: 0,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.message), label: 'Chat'),
            BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Favorite'),
            BottomNavigationBarItem(icon: Icon(Icons.account_circle_rounded), label: 'Profile'),
          ],
        ),
      ),
      backgroundColor: primaryColor,
      body: SafeArea(child: ListView(
        children: [
          Header(),
          Search(),
          Card(),
          Popular()
        ],
      )),
    );
  }
}