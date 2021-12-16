import 'package:doppy/view/widgets/customtextfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'colors.dart';

class SignUp extends StatefulWidget {
  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  double _height;

  double _width;

  bool checkBoxValue = false;

  @override
  Widget build(BuildContext context) {
    _height = MediaQuery.of(context).size.height;
    _width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: PinkBackground,
       body: SafeArea(
         child: Container(
           margin: EdgeInsets.only(
               left:_width/ 12.0,
               right: _width / 12.0,
               top: _height / 20.0),
           decoration: BoxDecoration(
             color: PinkBackground
           ),
             width: MediaQuery
                 .of(context)
                 .size
                 .width,
           child: SingleChildScrollView(
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Text(
                       "Let's Get Started",
                       style: TextStyle(
                         fontWeight: FontWeight.w600,
                         fontSize: 36,
                           color : GreyDark,
                         fontFamily: 'Poppins'
                       ),
                     ),
                     SizedBox(height: _height / 40.0),
                     Text(
                       "Fill the following details to help us \n"
                           "get you the best experience",
                       style: TextStyle(
                         fontWeight: FontWeight.w400,
                         fontSize: 18,
                         color : Grey,
                       ),
                     ),
                     SizedBox(height: _height / 30.0),
                     form(),
                     SizedBox(height: _height / 40.0),
                     button(),
                     DividerRow(),
                     IconRow(),
                     LoginText(),
                     acceptTermsTextRow()

                   ],
             ),
           ),
         ),
       ),
    );
  }

  Widget form(){
    return Container(

      child: Form(
        child: Column(
          children: [
          CustomTextField(
          keyboardType: TextInputType.text,
          icon: Icons.person,
          hint: "Name",
        ),
            SizedBox(height: _height / 40.0),
            CustomTextField(
              keyboardType: TextInputType.text,
              icon: Icons.person,
              hint: "gender",
            ),
            SizedBox(height: _height / 40.0),
            CustomTextField(
              keyboardType: TextInputType.text,
              icon: Icons.person,
              hint: "DOB",
            ),

          ],
        ),
      ),
    );
  }

  Widget button() {
    return RaisedButton(
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
      onPressed: () {
        print("Routing to your account");
      },
      textColor: Colors.white,
      padding: EdgeInsets.all(0.0),
      child: Container(
        alignment: Alignment.center,
       //height: _height / 10,
        width: _width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(18.0)),
          gradient: LinearGradient(
            colors: <Color>[Colors.orange[200], Colors.pinkAccent],
          ),
        ),
        padding: const EdgeInsets.all(12.0),
        child: Text('SIGN UP', style: TextStyle(
            //fontSize: _large? 14: (_medium? 12: 10)),
            fontSize: 22
    // ),
      ),
    )
    )
    );
  }

  Widget DividerRow() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
        Expanded(
            child: Container(
      margin: const EdgeInsets.only(left: 10.0, right: 15.0),
        child: Divider(
          color: Grey,
          height: 50,
        )),

        ),
          Text('or join with',
          style: TextStyle(
            color: Grey,
            fontSize: 18,
            fontWeight: FontWeight.w400
          ),

          ),
          Expanded(
            child: Container(
                margin: const EdgeInsets.only(left: 10.0, right: 15.0),
                child: Divider(
                  color: Grey,
                  height: 50,
                )),

          ),
      ],
      ),
    );
  }

  Widget IconRow(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(onPressed: (){},
            icon: Icon(Icons.add),
           iconSize: 38,
          color: PinkBackgroundsecondary,
        ),
        IconButton(onPressed: (){},
            icon: Icon(Icons.add),
          iconSize: 38,
          color: PinkBackgroundsecondary,
        )//add google icon
      ],
    );
  }

  Widget LoginText(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Already have an account?',
    style: TextStyle(
      color: Grey,
      fontWeight: FontWeight.w400,
      fontSize: 12,
    ),
        ),
        TextButton(onPressed: (){},
            child: Text(
              'LOGIN',
              style: TextStyle(
                color: PinkBackgroundsecondary,
                fontWeight: FontWeight.w400,
                fontSize: 12,
              ),
            ))

      ],
    );
  }

  Widget acceptTermsTextRow() {
    return Container(
      margin: EdgeInsets.only(top: _height / 100.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Checkbox(
              activeColor: PinkBackgroundsecondary,
              value: checkBoxValue,
              onChanged: (bool newValue) {
                setState(() {
                  checkBoxValue = newValue;
                });
              }),
          Text(
            "I accept all terms and conditions",
            style: TextStyle(
              color: Grey,
              fontWeight: FontWeight.w400,
                fontSize: 12,
                //fontSize: _large? 12: (_medium? 11: 10)),
          )
          ),
        ],
      ),
    );
  }
}
