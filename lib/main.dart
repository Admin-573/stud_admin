import 'package:flutter/material.dart';
import 'package:stud_admin/thx.dart';

void main() {
  runApp(const MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

String name="";
String pass="";
String email="";
String phone="";
String date="";

final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formkey,
      child: Material(
        color: Colors.blue[100],
        child: SingleChildScrollView(
          child: Column(
            children: [

              const SizedBox(height: 50,),
              Image.asset("assets/images/stud_photo.png",width: 200,),
              const SizedBox(height: 25,),
              Image.asset("assets/images/stud.png",width: 256,),
              const SizedBox(height: 10,),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 36),
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: const InputDecoration(
                    icon: Icon(Icons.person_outline,size: 28,),
                    iconColor: Colors.blue,
                    hintText: "Enter Name",
                    labelText: "Enter Student Name",
                  ),
                  validator: (value){
                    if(value==null||value.isEmpty){
                      return "Student Name Cannot Be Empty !";
                    }
                    return null;
                  },
                  onChanged: (value){
                    name=value;
                    setState(() {});
                  },
                ),
              ),

              Padding(padding: const EdgeInsets.symmetric(horizontal: 36,vertical: 6),
              child: TextFormField(
                obscureText: true,
                keyboardType: TextInputType.visiblePassword,
                decoration: const InputDecoration(
                  icon: Icon(Icons.lock_outline,size: 28,),
                  iconColor: Colors.blue,
                  hintText: "Enter Password",
                  labelText: "Enter Student Password",
                ),
                validator: (value){
                  if(value==null||value.isEmpty){
                    return "Student Password Cannot Be Empty !";
                  }
                  return null;
                },
                onChanged: (value){
                  pass = value;
                  setState(() {});
                },
              ),
              ),

              Padding(padding: const EdgeInsets.symmetric(horizontal: 36,vertical: 6),
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  icon: Icon(Icons.email_outlined,size: 28,),
                  iconColor: Colors.blue,
                  hintText: "Enter Email",
                  labelText: "Enter Student Email"
                ),
                validator: (value){
                  if(value==null||value.isEmpty){
                    return "Student Email Cannot Be Empty !";
                  }
                  return null;
                },
                onChanged: (value){
                  email = value;
                  setState(() {});
                },
              ),
              ),

              Padding(padding: const EdgeInsets.symmetric(horizontal: 36,vertical: 6),
                child: TextFormField(
                  keyboardType: TextInputType.phone,
                  decoration: const InputDecoration(
                      icon: Icon(Icons.phone_android_outlined,size: 28,),
                      iconColor: Colors.blue,
                      hintText: "Enter Phone No",
                      labelText: "Enter Student PhoneNo"
                  ),
                  validator: (value){
                    if(value==null||value.isEmpty){
                      return "Student Phone No Cannot Be Empty !";
                    }
                    return null;
                  },
                  onChanged: (value){
                    phone = value;
                    setState(() {});
                  },
                ),
              ),

              Padding(padding: const EdgeInsets.symmetric(horizontal: 36,vertical: 6),
                child: TextFormField(
                  keyboardType: TextInputType.datetime,
                  decoration: const InputDecoration(
                      icon: Icon(Icons.date_range,size: 28,),
                      iconColor: Colors.blue,
                      hintText: "Enter DOB",
                      labelText: "Enter Student DOB"
                  ),
                  validator: (value){
                    if(value==null||value.isEmpty)
                      {
                        return "Student DOB Cannot Be Empty !";
                      }
                    return null;
                  },
                  onChanged: (value){
                    date = value;
                    setState(() {});
                  },
                ),
              ),

              const SizedBox(height: 25),

              ElevatedButton(onPressed: (){
                if(_formkey.currentState!.validate()){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>thanks()));
                }
              },
                  child: const Text("LOGIN",style: TextStyle(
                    fontSize: 16 , fontWeight: FontWeight.bold,
                  ),)
              ),

              const SizedBox(height: 150,),

              Padding(padding: const EdgeInsets.symmetric(vertical: 6,horizontal: 48),
                child: Image.asset("assets/images/already.png",width: 256,)
              ),

              ElevatedButton(onPressed: (){},
                  child: const Text("SIGN IN",style: TextStyle(
                    fontSize: 16,fontWeight: FontWeight.bold,
                  ),)
              ),

              const SizedBox(height: 25,)
            ],
          ),
        ),
      ),
    );
  }
}




