import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: profile_card(),
  ));
}

class profile_card extends StatelessWidget {
  const profile_card({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    height: 178,
                    width: 128,
                    child: Image(
                      image: NetworkImage(
                          'https://cdn-icons-png.flaticon.com/512/3135/3135715.png'),
                      fit: BoxFit.contain,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start, // Align children to the start of the column
                    children: [
                      Text("Eng. Ahmed Alhahsim",
                          style: TextStyle(fontSize: 20, color: Colors.blueGrey)),
                      Text("Software Engineer",
                          style: TextStyle(fontSize: 12, color: Colors.grey)),
                      Row(
                        children: [

                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: CustomIcon(icon: Icons.mail,),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: CustomIcon(icon: Icons.phone,),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: CustomIcon(icon: Icons.video_call,),
                          ),


                        ],
                      ),
                    ],
                  ),
                ],
              ),

              Text(
                "About",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                  "This is a test This is a test This is a test This is a test This is a test This is a test This is a test This is a test This is a test This is a test This is a test This is a test  ",
                  style: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: 16,
                      color: Colors.grey[700])),
              Row(),
            ],
          ),
        ),
      ),
    );
  }
}
class CustomIcon extends StatelessWidget {
  const CustomIcon({
    Key? key,
    required this.icon,
  }) : super(key: key);

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      width: 48,
      decoration: BoxDecoration(color: Colors.blue[50] , borderRadius: BorderRadius.circular(16)), // Apply decoration to the Container
      child: Icon(
        icon,
        color: Colors.blue,
        size: 30,
      ),
    );
  }
}
