import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_safwat/endpadge.dart';
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
class search extends StatelessWidget{
  List<UserModel> users=[
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

      return DefaultTabController(
        length: 4  ,
        child: Scaffold(
         appBar: AppBar(
           automaticallyImplyLeading: false,
           backgroundColor: Colors.white,
           elevation: 0,
           toolbarHeight: 100,
           title: Row(
             children: [
               Flexible(
                 child: Padding(
                   padding: const EdgeInsets.fromLTRB(8, 16, 8, 16),
                   child: TextFormField(
                     style: TextStyle(
                       height: 1,
                     ),
                     decoration: InputDecoration(
                     hintText: "Dogecoin to the Moon...",
                       border: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(40),
                       ),
                       suffixIcon: Icon(Icons.search),
                     ),
                   ),
                 ),
               ),
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Image(image: AssetImage("assets/images/img_3.png")),
               )

             ],
           ),
           bottom: TabBar(
             indicator: BoxDecoration(
               color: Colors.red,
               borderRadius: BorderRadius.circular(50),
               border: Border.all(
                 color: Colors.deepOrangeAccent,
               )
             ),
             indicatorPadding: EdgeInsets.symmetric(horizontal: 5),
             tabs: [
               Tab(
                   child: Container(
                     child: Text("All",
                       style: TextStyle(
                      color: Colors.black
                       ),
                     ),
                   ),
                 ),
               Tab(
                 child: Container(
                   child: Text("Science",
                     style: TextStyle(
                   color: Colors.black,
                     ),
                   ),
                 ),
               ),
               Tab(
                 child: Container(
                   child: Text("Business",
                     style: TextStyle(
                       color: Colors.black,

                     ),
                   ),
                 ),
               ),
               Tab(
                 child: Container(
                   child: Text("Sports",
                     style: TextStyle(
                       color: Colors.black,

                     ),
                   ),
                 ),
               ),


            ],

           ),
         ),
          body: TabBarView(
            children: [
              ListView.builder(
                itemBuilder: (context, index) => buildNewsItem1(users[index],context ),
              itemCount: users.length,

            ),
              ListView.builder(
                itemBuilder: (context, index) => buildNewsItem1(users[index],context),
                itemCount: users.length,

              ),
              ListView.builder(
                itemBuilder: (context, index) => buildNewsItem1(users[index],context),
                itemCount: users.length,

              ),
              ListView.builder(
                itemBuilder: (context, index) => buildNewsItem1(users[index],context),
                itemCount: users.length,

              ),
            ],
          ),
        ),
      );
  }
  Widget buildNewsItem1(UserModel user,context)=>  GestureDetector(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context){
            return Endpade();
          }
          )
          );
        },
        child: Padding(
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
                                fontSize: 13,
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
        ),
      );
}