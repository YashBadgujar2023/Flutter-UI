import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: Column(
              children: [
               Align(
                 alignment: Alignment.centerLeft,
                 child: Padding(
                   padding: const EdgeInsets.symmetric(horizontal: 8.0),
                   child: Text("Chats",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40,fontFamily: "MadimiOne"),),
                 ),
               ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: TextFormField(
                          style: TextStyle(fontSize:14),
                          readOnly: true,
                          decoration: InputDecoration(
                            hintText: "Search",
                            filled: true,
                            isDense: true,
                            fillColor: Colors.white24,
                            contentPadding: EdgeInsets.symmetric(horizontal: 5,vertical: 10),
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.all(Radius.circular(7)),
                            )
                          ),
                        ),
                      ),
                      IconButton(onPressed: (){}, icon: Icon(Icons.filter))
                    ],
                  ),
                ),
                ListView.builder(
                  shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.symmetric(vertical: 1),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white.withOpacity(0.5),width:0.1),
                          borderRadius: BorderRadius.all(Radius.circular(2)),
                        ),
                        child: ListTile(
                          onTap: (){},
                          leading: CircleAvatar(
                            backgroundImage: NetworkImage("https://marketplace.canva.com/EAFSTby_Nnc/1/0/1600w/canva-black-and-blue-modern-instagram-profile-picture-gkkLzYu1aGg.jpg"),
                          ),
                          title: Text("Yash"),
                          subtitle: Text("Hiiiii"),
                        ),
                      );
                    },
                  itemCount: 15,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
