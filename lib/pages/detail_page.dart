import 'package:flutter/material.dart';
import 'package:real_estate/theme.dart';


class DetailPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    Widget Header(){
      return Container(
        margin: EdgeInsets.only(top: 20, left: 20, right: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
              child: Container(
                width: 32,
                height: 32,
                decoration: BoxDecoration(
                  color: secondColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Icon(Icons.chevron_left, color: textColor,),
              ),
            ),
            Text('Details', style: titleTextStyle.copyWith(
              fontWeight: FontWeight.w700,
              fontSize: 24
            ),),
            Container(
              width: 32,
              height: 32,
              decoration: BoxDecoration(
                color: secondColor,
                borderRadius: BorderRadius.circular(12),
              ),child: Icon(Icons.more_horiz, color: textColor,),
            )
          ],
        ),
      );
    }
    
    Widget Image(){
      return Container(
        margin: EdgeInsets.only(top: 20),
        width: 315,
        height: 328,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          image: DecorationImage(
            image: AssetImage('assets/House-Pic5.png')
          )
        ),
      );
    }
    
    Widget Content(){
      return Container(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20, top: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('American Classic', style: titleTextStyle.copyWith(
                        fontWeight: FontWeight.w600,
                        fontSize: 16
                      ),),
                      SizedBox(height: 5,),
                     Row(
                       children: [
                         Icon(Icons.location_on_outlined, color: orangeColor, size: 18,),
                         Text('Highway District 201', style: textTextStyle.copyWith(
                           fontWeight: FontWeight.w400,
                           fontSize: 10
                         ),)
                       ],
                     )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 20, top: 20),
                  width: 32,
                  height: 32,
                  decoration: BoxDecoration(
                    color: secondColor,
                    borderRadius: BorderRadius.circular(6)
                  ),
                  child: Icon(Icons.favorite, color: redColor, size: 16,),
                )
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Row(
                children: [
                  Text('American classic house, this house has always been \na target for property companies because of its \nancient style but very attractive',
                  style: textTextStyle.copyWith(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                  ),),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Overview', style: titleTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.w600
                  ),),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 13, top: 15),
                          width: 59,
                          height: 59,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14),
                            image: DecorationImage(
                              image: AssetImage('assets/House-Pic7.png')
                            )
                          )
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 13, top: 15),
                          width: 59,
                          height: 59,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14),
                            image: DecorationImage(
                              image: AssetImage('assets/House-Pic8.png')
                            )
                          )
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 13, top: 15),
                          width: 59,
                          height: 59,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14),
                            image: DecorationImage(
                              image: AssetImage('assets/House-Pic9.png')
                            )
                          )
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 13, top: 15),
                          width: 59,
                          height: 59,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14),
                            image: DecorationImage(
                              image: AssetImage('assets/House-Pic6.png')
                            )
                          )
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 13, top: 15),
                          width: 59,
                          height: 59,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14),
                            image: DecorationImage(
                              image: AssetImage('assets/House-Pic7.png')
                            )
                          ),child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('8+', style: primaryTextStyle.copyWith(
                                fontSize: 14,
                                fontWeight: FontWeight.w600
                              ),)
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      );
    }
    
    Widget Footer(){
      return Container(
        margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Price', style: textTextStyle.copyWith(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),),
                Text('\$ 300K', style: titleTextStyle.copyWith(
                  fontSize: 20,
                  fontWeight: FontWeight.w600
                ),),
              ],
            ),
          Container(
            width: 223,
            height: 60,
            decoration: BoxDecoration(
              color: titleColor,
              borderRadius: BorderRadius.circular(18),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Buy', style: primaryTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.w600
                ),),
              ],
            ),
          )
          ],
        ),
      );
    }
    return Scaffold(
      backgroundColor: primaryColor,
      body: SafeArea(
        child: ListView(
          children: [
            Header(),
            Image(),
            Content(),
            Footer()
          ],
        ),
      ),
    );
  }
}