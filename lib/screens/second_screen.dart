
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
class SecondScreen extends StatelessWidget {
   SecondScreen({Key? key}) : super(key: key);
  late String otpCode;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
        icon: Icon(Icons.arrow_back, color: Colors.black, size: 24.0,),
        //   icon: ImageIcon(
        //     AssetImage("images/arrowback.png"),
        //     color: Colors.black87,
        //     size: 20.0,
        //   ),

          onPressed: (){
          //Navigator.of(context).pop();
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 32, vertical: 88),

          child: Column(
            children: [
              _buildIntroTexts(),
              SizedBox(
                height: 70.0,
              ),
              _buildPinCodeFields(context),
              SizedBox(
                height: 100.0,
              ),

              _buildVrifyButton(context)

            ],
          ),
        ),
      ),
    );
  }
  Widget _buildIntroTexts() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'Enter a PIN-code',
          style: TextStyle(
              color: Colors.black, fontSize: 26, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 30,
        ),
        Text('We like keeping things private,',style: TextStyle(color: Colors.black, fontSize: 18, height: 1.4)),
        Text('please create a pin to secure account',style: TextStyle(color: Colors.black, fontSize: 18, height: 1.4))


      ],
    );
  }

  Widget _buildPinCodeFields(BuildContext context) {
    return Container(

      child: PinCodeTextField(
        appContext: context,
        autoFocus: true,
        cursorColor: Colors.blue,
        keyboardType: TextInputType.number,
        length: 5,
        obscureText: false,
        animationType: AnimationType.scale,
        pinTheme: PinTheme(
          shape: PinCodeFieldShape.box,
          borderRadius: BorderRadius.circular(5),
          fieldHeight: 50,
          fieldWidth: 40,
          borderWidth: 1,
          activeColor: Colors.blue,
          inactiveColor: Colors.blue,
          inactiveFillColor: Colors.white,
          activeFillColor: Colors.white,
          selectedColor: Colors.blue,
          selectedFillColor: Colors.white,
        ),
        animationDuration: Duration(milliseconds: 300),
        backgroundColor: Colors.transparent,
        enableActiveFill: true,
        onCompleted: (submitedCode) {
          otpCode = submitedCode;
          print("Completed");
        },
        onChanged: (value) {
          print(value);
        },
      ),
    );
  }

   Widget _buildVrifyButton(BuildContext context) {
     return TextButton(
       onPressed: () {
         //showProgressIndicator(context);

         //_login(context);
       },
       child: Container(
         width: double.infinity,
         height: 45.0,
         decoration: BoxDecoration(
           color: Colors.blue,
           borderRadius: BorderRadius.circular(20.0)
         ),
         child: Center(
           child: Text(
             'Submit',
             style: TextStyle(color: Colors.white, fontSize: 16),
           ),
         ),
       ),
       // style: ElevatedButton.styleFrom(
       //   minimumSize: Size(110, 50),
       //   primary: Colors.blue,
       //   shape: RoundedRectangleBorder(
       //     borderRadius: BorderRadius.circular(6),
       //   ),
       // ),
     );
   }

   void showProgressIndicator(BuildContext context) {
     AlertDialog alertDialog = AlertDialog(
       backgroundColor: Colors.transparent,
       elevation: 0,
       content: Center(
         child: CircularProgressIndicator(
           valueColor: AlwaysStoppedAnimation<Color>(Colors.black),
         ),
       ),
     );

     showDialog(
       barrierColor: Colors.white.withOpacity(0),
       barrierDismissible: false,
       context: context,
       builder: (context) {
         return alertDialog;
       },
     );

   }
}
