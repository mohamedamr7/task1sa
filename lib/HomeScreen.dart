import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_safwat/Congratulation.dart';
class HomeScreen extends StatefulWidget{
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
   var emailcontroler=TextEditingController();
   var passwordcontroler=TextEditingController();
   bool secourText= true;
   bool checkboxvalue= false;
   GlobalKey<FormState> formkey=GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      SingleChildScrollView(
        child:
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 40),
          child: Form(
           key:formkey ,
            child: Container(
              decoration: BoxDecoration(

              ),
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                   padding: const EdgeInsets.only(top: 20),
                   child: Column(
                     mainAxisSize: MainAxisSize.min,
                     mainAxisAlignment: MainAxisAlignment.start,
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Text("Hello ",
                           style: TextStyle(
                             fontSize: 48,
                             fontWeight: FontWeight.bold,
                             color: Color(0xff050505),
                             fontFamily:"Poppins" ,
                           )),
                       Text("Again! ",
                           style: TextStyle(
                             fontSize: 48,
                             fontWeight: FontWeight.w900,
                             color: Color(0xffFF3A44),
                             fontFamily:"Poppins" ,
                           )),
                     ],
                   ),
                 ),
                  Text("Welcome back you’ve \n been missed"
                 ,style: TextStyle(
                     fontSize: 20,
                     color: Color(0xFF4E4B66),
                     fontFamily: "Poppins",
                 ) ,
                 ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Text("Username",
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xFF4E4B66),
                      )
                      ),
                      Text("*",
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xFFC30052),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 7),
                  TextFormField(
                    controller: emailcontroler,
                    onChanged: (value){
                      print(value);
                    },
                    validator: (value){
                      if(value==null||value.isEmpty){
                        return "email is reruired";
                      }
                      else{
                       return null;
                      }
                    },
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(
                            color: Colors.black45,
                            width: 2,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(
                            color: Colors.red,
                            width: 2,
                          ),
                        )
                    ),
                  ),
                  SizedBox(height: 12),
                  Row(
                    children: [
                      Text("Password",
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xFF4E4B66),
                          )
                      ),
                      Text("*",
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xFFC30052),
                        ),
                      ),

                    ],
                  ),
                  SizedBox(height: 7),
                  TextFormField(
                    controller: passwordcontroler,
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: secourText,
                    obscuringCharacter:"*",
                    validator: (value) {
                      if(value==null||value.isEmpty){
                        return "password is required";
                      }
                      else if(value.length<9){
                        return "Password must be >9";
                      }
                      else{
                        return null;
                      }
                    },
                    onFieldSubmitted: (String value) {
                      print(value);
                    },
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            secourText=!secourText;
                          });
                        },
                        icon: Icon
                          (
                          secourText?   Icons.visibility_off:
                          Icons.visibility,
                        ) ,
                          color: secourText?  Colors.black45:
                          Colors.red
                         ),

                       enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                          color: Colors.black45,
                          width: 2,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                          color: Colors.red,
                          width: 2,
                        ),
                      )


                    ),
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Checkbox(
                        value: checkboxvalue,
                        onChanged: (value) {
                          setState(() {
                            checkboxvalue=!checkboxvalue;
                          });
                      },
                        autofocus: true,
                        activeColor: Colors.red,
                  ),
                      Text("Remember me",
                      style: TextStyle(
                        color: Color(0xff4E4B66),
                        fontFamily: "Poppins",
                        fontSize: 14,
                      ),
                      ),
                      Spacer(),
                      TextButton(
                          onPressed: (){},
                          child:
                          Text("Forgot the password ?",
                            style: TextStyle(
                              fontSize: 14,
                              fontFamily: "Poppins",
                              color: Color(0xff5890FF),
                            ),

                          )),

                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(color: Colors.red,borderRadius: BorderRadius.circular(8)),
                    width: double.infinity,
                    height: 50,
                    child: MaterialButton(
                      onPressed: (){
                        print(emailcontroler.text);
                        print(passwordcontroler.text);
                       if(formkey.currentState!.validate()==true){
                         Navigator.push(context, MaterialPageRoute(builder: ((context) {
                           return Congratulation();
                         } )
                         )
                         );
                       }
                      },
                    child: Text("Login",
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                    ),
                    ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16),
                    child: Center(
                      child: Text("or continue with",
                      style: TextStyle(
                        color: Color(0xff4E4B66),
                         fontSize: 14,
                        fontFamily: "Poppins",
                      ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(12, 10, 12, 16),
                            color: Color(0xffEEF1F4),
                            height: 48,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [

                                Image(
                                  image: AssetImage("assets/images/Facebook-Icon-PNG-31-768x768.png",
                                  ),
                                  height: 24,
                                  width: 24,

                                ),
                                SizedBox(width: 5,),
                                Text("Facebook",
                                  style: TextStyle(
                                    fontSize:16 ,
                                    color: Color(0xff667080) ,
                                    fontFamily: "Poppins",

                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 30,),
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(12, 10, 12, 16),
                            color: Color(0xffEEF1F4),
                            height: 48,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image(
                                  image: AssetImage("assets/images/google-icon.png",
                                  ),
                                  height: 24,
                                  width: 24,

                                ),
                                SizedBox(width: 5,),
                                Text("Google",
                                  style: TextStyle(
                                    fontSize:16 ,
                                    color: Color(0xff667080) ,
                                    fontFamily: "Poppins",

                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),


                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("don’t have an account"),
                      TextButton(onPressed: (){}, child: Text("?Sign Up"))
                    ],
                  ),

                ],

              ),
            ),
          ),
        ),
      ) ,
    );
  }
}