
import 'package:flutter/material.dart';

class OpeningScreen extends StatelessWidget {
  const OpeningScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //dimention of the screen
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    Color offwhite = Color.fromARGB(255, 236, 245, 245);

    //scaffold
    return Scaffold(
      
      body: Container(
        width: w, 
        height: h,
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/backgrounf.webp"),
              fit: BoxFit.cover,
            ),
          ),

        
        child: Column(children: [
          SizedBox(
              height: h *0.05,
            ),

          Container(
            //add quizimg
            width: w * 0.3,
            height: h * 0.2,
            decoration: BoxDecoration(image: DecorationImage(image: AssetImage("images/qe.png"))),
          ),
          
          SizedBox(
              height: h *.1,
            ),

          Container(
            height: h*0.65,
            width: w,
            
            // color: offwhite,
            decoration: BoxDecoration(
              color: offwhite, // pink color
              borderRadius: BorderRadius.circular(40), // round edges
            ),

            //the column in the second container
            child: Column(children: [
              //login text container to controle margin
              Container(
                margin: const EdgeInsets.all(15),
                child: Text("Login",
                  style: TextStyle(
                    fontSize: 30,
                     fontWeight: FontWeight.bold
                    ),  
                ),
              ),

              Container(
                child: Column(
                  children: [
                    SizedBox(
                      width: w  * .8,
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: 'User name',
                          fillColor: Colors.white,
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40),
                          ),
                          hintMaxLines: 1,
                          prefixIcon: Icon(Icons.person),
                        ),
          
                      ),
                    ),
                    SizedBox(height: h*.03,),
                    SizedBox(
                      width: w  * .8,
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: 'Password',
                          fillColor: Colors.white,
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40),
                          ),
                          hintMaxLines: 1,
                          prefixIcon: Icon(Icons.lock),
                        ),
          
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                  children: [
                    Expanded(
                      child: Container(),
                    ),
                    Text("New to Quiz? "),
                    Text(
                      "Register?",
                      style: TextStyle(
                        color: Colors.blue,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ],
                ),

              Container(
                  width: w * .5,
                  height: h * .06,
                  child: ElevatedButton(
                    child: Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 20,
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      primary: Colors.blue,
                    ),
                    onPressed: () {},
                  ),
                  margin: const EdgeInsets.all(10),
                ),


              // Text("hello3"),
              // SizedBox(height: h * .01, width: w),

                Container(
                  //add quizimg
                  width: w*.2,
                  height: h*.1,
                  alignment: Alignment.topCenter, // add this line
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("images/fingerprint.png"))),
                  // reduce the top margin by half of the image height
                ),
              // Image.asset("images/fingerprint.png"),
              
              Text("Use touch ID"),
              Container(
                margin: EdgeInsets.only(top: h*.05),
                child: Row(children: [
                Checkbox(
                  value: false,
                  onChanged: (value) {
                    // do something when the checkbox is checked
                  },
                ),
                Text(
                  "Remember me",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                  ),
                ),
                Expanded(
                  child: Container(),
                ),
                Text(
                  "Forget my password  ",
                  style: TextStyle(
                    color: Colors.blue,
                   ),
                ),
              
                ],),
              )
              
            ],
            ),

          ),
        

        ]),

      ),
    );
  }
}

