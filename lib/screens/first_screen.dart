
import 'package:flutter/material.dart';
import 'package:testwork/shared/styles/colors.dart';
import 'package:email_auth/email_auth.dart';
class FirstScreen extends StatelessWidget {

  var formKey = GlobalKey<FormState>();
   FirstScreen({Key? key}) : super(key: key);
  var emailController = TextEditingController();

  // void sendOTP() async{
  //   EmailAuth.seesionName= "Test Seesion";
  //   var response = await EmailAuth.sendOTP(receiverMAil: )
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: SingleChildScrollView(
              child: Form(
                key: formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "What's your email?",
                      style: Theme.of(context)
                          .textTheme
                          .headline5
                          ?.copyWith(color: Colors.black87),
                    ),

                    const SizedBox(
                      height: 80.0,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30.0)
                      ),
                      child: TextFormField(
                        controller: emailController,
                        keyboardType: TextInputType.emailAddress,
                        validator: (val) {
                          if (val!.isEmpty) {
                            return "please Enter your Email Address";
                          }
                        },
                        decoration: const InputDecoration(
                          //prefixIcon: Icon(Icons.email_outlined),
                          labelText: "E-mail",
                          labelStyle: TextStyle(backgroundColor: Colors.white, fontSize: 18.0),
                          border:  OutlineInputBorder(
                            borderRadius: const BorderRadius.all(Radius.circular(30.0))

                          ),

                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    TextButton(
                      onPressed: () {
                        //navigateTo(context,  ShopRegisterScreen());
                      },
                      child: const Text(
                        'I\'d like to sign up with my mobile phone number',
                      ),
                    ),

                    const SizedBox(
                      height: 80.0,
                    ),

                    Container(
                        height: 50.0,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        child: TextButton(
                          child: Text('Continue',style: TextStyle(fontSize: 20.0, color: Colors.white),),
                          onPressed: (){},
                        ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
