import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class UserModel {
  final String1;
  final String2;
  final String3;
  final image;
  UserModel( {
    required   this.String1,
    required this.String2,
    required this.String3,
    required this.image,
  }
      );
}
class Endpade extends StatelessWidget{
  List<UserModel> users=[
    UserModel(
        String1: "What to do if you're planning or attending a wedding during the pandemic",
        String2: "Kristen Rogers",
        String3: "Sunday, 9 May 2021",
        image: "assets/images/img_8.png"

    ),
    UserModel(
      String1: "Doctors on digital front lines help fight India’s Covid surge",
      String2: "Shepard Smith",
      String3: "friday, 7 May 2021",
      image: "assets/images/img_6.png",
    ),
    UserModel(
      String1: "4 ways families can ease anxiety together",
      String2: "   Zain Korsgaard",
      String3: "Sunday, 9 May 2021",
      image: "assets/images/img_5.png",
    ),
    UserModel(
      String1: "5 things to know about the 'conundrum' of  lupus",
      String2: "Matt Villano",
      String3: "Sunday, 9 May 2021",
      image: "assets/images/img_4.png",
    ),


    UserModel(
      String1: "5 things to know about the 'conundrum' of  lupus",
      String2: "Matt Villano",
      String3: "Sunday, 9 May 2021",
      image: "assets/images/img_4.png",
    ),
    UserModel(
      String1: "4 ways families can ease anxiety together",
      String2: "Zain Korsgaard",
      String3: "Sunday, 9 May 2021",
      image: "assets/images/img_5.png",
    ),
    UserModel(
        String1: "What to do if you're planning or attending a wedding during the pandemic",
        String2: "Kristen Rogers",
        String3: "Sunday, 9 May 2021",
        image: "assets/images/img_8.png"

    ),
    UserModel(
      String1: "Doctors on digital front lines help fight India’s Covid surge",
      String2: "Shepard Smith",
      String3: "friday, 7 May 2021",
      image: "assets/images/img_6.png",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        toolbarHeight: 100,
        title: Container(
          margin: EdgeInsets.symmetric(horizontal: 5,vertical: 16),
          child: TextFormField(
            style: TextStyle(
              height: 1,
            ),
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              suffixIcon: Icon(
                Icons.close,
                color: Color(0xff202663),
                size: 30,
              ),
              hintText: "COVID New Variant",
              hintStyle: TextStyle(
                fontFamily: "Nunito",
                fontSize: 18,
                color: Color(0xff202663),
                fontWeight: FontWeight.w600,
              )


            ),
          ),
        ),
      ),
      body: Column(
        children: [
         Row(
           children: [
             Text("   About 11,130,000 results for ",
               style: TextStyle(
                   fontSize: 14,
                   fontWeight: FontWeight.w400,
                   fontFamily: "Nunito",
                   color: Color(0xff173418)
               ),
             ),
             Text("COVID New Variant.",
               style: TextStyle(
                 color: Color(0xff041E2F),
                 fontFamily: "Nunito",
                 fontStyle:FontStyle.italic ,
                 fontSize: 14,
                 fontWeight: FontWeight.w600,
               ),
             ),
           ],
         ),
         SizedBox(height: 10,),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) => buildNewsItem1(users[index],context ),
              itemCount: users.length,
            ),
          ),

        ],
      ),
    );
  }
  Widget buildNewsItem1(UserModel user,BuildContext context)=> Padding(
    padding: const EdgeInsets.only(top: 15),
    child: Stack(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image(
                image: AssetImage("${user.image}"),

              ),
            ),
          ],
        ),
        Container(
          height: 125,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: 125,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Text("${user.String1}",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontFamily: "Poppins"

                      ),
                    ),
                  ),
                  Spacer(),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 40),
                        child: Text("${user.String2}",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(right: 40),
                        child: Text("${user.String3}",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    ),
  );
}