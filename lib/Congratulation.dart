import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_safwat/search.dart';
class Congratulation extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       backgroundColor: Colors.white,
       elevation: 0,
       iconTheme: IconThemeData(color: Colors.red), //TEXT
    ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Spacer(),
            Image(image: AssetImage("assets/images/img_1.png")),
            Image(image: AssetImage("assets/images/img_2.png")),
            Spacer(flex: 2),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 40),
              child: Container(
                decoration: BoxDecoration(color: Colors.red,borderRadius: BorderRadius.circular(6)),
                width: double.infinity,
                height: 50,
                child: MaterialButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: ((context) {
                      return search();
                    } )
                    )
                    );
                  },
                  child: Text("GO to homepage",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),

          ],

        ),
      ),
     );

  }




}
/*
*    Card(
              margin: EdgeInsets.symmetric(horizontal: 20,vertical: 40),
                color: Color(0xffFF3A44),
                child: ListTile(
                  title: Center(child: Text("Go to HomePage",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontFamily: "Poppins",
                  ),
                  )),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder:(context){

                    }

                    )

                    );
                  },
                )),
* */