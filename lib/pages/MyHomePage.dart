import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Widget _fullName(){
    return Container(
      padding: EdgeInsets.all(10),
      decoration:BoxDecoration(
          border: Border(
              bottom: BorderSide(color: Colors.grey[200])
          )
      ),
      child: TextField(
        keyboardType:TextInputType.emailAddress,
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
            border: InputBorder.none,
            hintText:'Full name',
            contentPadding: EdgeInsets.only(top: 10),
            hintStyle: TextStyle(
                color: Colors.grey,
                fontSize: 15
            )
        ),

      )
      ,);


  }
  Widget _email(){
    return
      Container(
        padding: EdgeInsets.all(10),
        decoration:BoxDecoration(
            border: Border(
                bottom: BorderSide(color: Colors.grey[200])
            )
        ),
        child: TextField(
          keyboardType:TextInputType.emailAddress,
          style: TextStyle(color: Colors.white),
          decoration: InputDecoration(
              border: InputBorder.none,
              hintText:'Email',
              contentPadding: EdgeInsets.only(top: 10),
              hintStyle: TextStyle(
                  color: Colors.grey,
                  fontSize: 15
              )
          ),

        )
        ,);
  }
  Widget _phone(){
    return Container(
      padding: EdgeInsets.all(10),
      decoration:BoxDecoration(
          border: Border(
              bottom: BorderSide(color: Colors.grey[200])
          )
      ),
      child: TextField(
        keyboardType:TextInputType.emailAddress,
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
            border: InputBorder.none,
            hintText:'Phone',
            contentPadding: EdgeInsets.only(top: 10),
            hintStyle: TextStyle(
                color: Colors.grey,
                fontSize: 15
            )
        ),

      )
      ,);
  }
  Widget _password(){
    return Container(
      padding: EdgeInsets.all(10),
      decoration:BoxDecoration(
          border: Border(
              bottom: BorderSide(color: Colors.grey[200])
          )
      ),
      child: TextField(
        keyboardType:TextInputType.emailAddress,
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
            border: InputBorder.none,
            hintText:'Password',
            contentPadding: EdgeInsets.only(top: 10),
            hintStyle: TextStyle(
                color: Colors.grey,
                fontSize: 15
            )
        ),

      )
      ,);
  }
  Widget _signUpwith(){
    return Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
        Expanded(
        child: GestureDetector(
        child: Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
        image: DecorationImage(
        image: AssetImage('asset/images/image.png')
    ),
    color: Colors.teal,
    shape: BoxShape.circle
    ),
    ),
    ),),
    Expanded(
    flex: 2,

    child: GestureDetector(
    onTap: (){},
    child: Container(
    alignment: Alignment.center,
    padding: EdgeInsets.only(left: 20),
    height: 60,
    width: 60,
    decoration: BoxDecoration(
    image: DecorationImage(
    fit: BoxFit.cover,
    image: AssetImage('asset/images/image2.png')
    ),
    color: Colors.teal,
    shape: BoxShape.circle
    ),
    ),
    ),
    ),
    Expanded(
    child: GestureDetector(
    onTap: (){},
    child: Container(
    height: 60,
    width: 60,
    decoration: BoxDecoration(
    image: DecorationImage(
    fit: BoxFit.cover,
    image: AssetImage('asset/images/apple.jpg')
    ),
    color: Colors.teal,
    shape: BoxShape.circle
    ),
    ),
    ),
    )

    ],
    );
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
        Container(
          height:double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin:Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.grey[800],
                Colors.grey[700],
                Colors.grey[500],
              ]
            )
          ),
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(height: 80,),
              Padding(padding:EdgeInsets.only(right: 30),child: Text('Sign up',style: TextStyle(color: Colors.white,fontSize: 40),)),
              SizedBox(height: 10,),
              Padding(padding:EdgeInsets.only(right: 30),child: Text('Welcome ',style: TextStyle(color: Colors.white,fontSize: 20),)),
              SizedBox(height: 40,),
              Expanded(
                child: Container(
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.only(topRight: Radius.circular(50),topLeft: Radius.circular(50)),
                       color: Colors.white
                   ),
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: EdgeInsets.all(30),
                        child: Column(
                          children: [
                            SizedBox(height: 60,),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow:[
                                  BoxShadow(
                                    color: Color.fromRGBO(171,171,171, 0.7),
                                    blurRadius: 20,offset: Offset(0,10)
                                  ),]
                              ),
                              child:Column(
                                children: [
                                  _fullName(),
                                  _email(),
                                  _phone(),
                                  _password(),
                                ],
                              ) ,
                            ),
                            SizedBox(height: 30,),
                            Container(
                              width: double.infinity,
                              margin: EdgeInsets.only(left: 30,right: 30),
                              height: 50,
                              decoration: BoxDecoration(
                                  color: Colors.black45,
                                  borderRadius: BorderRadius.circular(50)
                              ),
                              child:FlatButton(
                                onPressed: (){},
                                textColor: Colors.white,
                                child: Text('Sign Up',style: TextStyle(
                                  fontSize: 15
                                ),),
                              ),
                            ),
                            SizedBox(height: 30,),
                            Text('Sign Up with SMS',style:TextStyle(
                                fontSize: 15,
                              color: Colors.black45
                            )),
                            SizedBox(height: 15,),
                            _signUpwith()


                          ],
                        ),
                      ),
                    ),
                   ),



                ),
          ],) ,

        ),


    );
  }
}
