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
      drawer: Drawer(
        width: 270,
        backgroundColor: Colors.black38,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.horizontal(right: Radius.circular(0))

        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.horizontal(right: Radius.circular(0)),
            // color: Color(0xF71F1E1E),
            color: Colors.black,
            boxShadow: [
              BoxShadow(color: Color(0x3D000000), spreadRadius: 30, blurRadius: 20)
            ]
          ),
          
          child: Padding(
            padding: const EdgeInsets.only(top: 20,left: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  
              
                  children: [
                    Row(
                      children: [
                        Icon(Icons.arrow_back_ios,
                        size: 20,
                        color: Colors.white,),
                        SizedBox(width: 70,),
                        TextButton(onPressed: (){}, child: Text("Settings", style: TextStyle(color: Colors.white,fontSize: 15), ),)
                      ],
                    ),
                    SizedBox(height: 50,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      
                        userProfile("pp6.jpg", "Jon"),
                        SizedBox(width: 20,),
                        Text("Viking Bahadur Shah", style: TextStyle(fontSize: 20, color: Colors.white),)
                      ],
                    ),
                    Divider(
                      color: Colors.white,
                      height: 50,
                    ),
                    DrawerItem(title: "Account",icon: Icons.key,),
                    DrawerItem(title: "Chats",icon: Icons.chat_bubble,),
                    DrawerItem(title: "Notifications",icon: Icons.notification_add,),
                    DrawerItem(title: "Security",icon: Icons.lock,),
                    DrawerItem(title: "Help",icon: Icons.help_center,),
                    Divider(
                              color: Colors.white,
                              height: 30,
                            ),
        
                            DrawerItem(title: "Invie a friend", icon: Icons.people_alt_outlined),
                       
                             
                  ],
                ),
                DrawerItem(title: "Log out", icon: Icons.logout_outlined)
              ],
            ),
          ),
        ),
         
      ),
      backgroundColor: Color(0xFF171717),
      body: Stack(
        children: [
          SafeArea(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                    onPressed: (){}, 
                    icon: Icon(Icons.menu),
                    color: Colors.white),
                    IconButton(
                    onPressed: (){}, 
                    icon: Icon(Icons.search),
                    color: Colors.white,)
                  ],
                ),
                SizedBox(
                  height: 50,
                  child: ListView(
                    scrollDirection:Axis.horizontal,
                    children: [
                      Padding(padding: EdgeInsets.only(left: 8)),
                      TextButton(onPressed: (){}, child: Text("Messages", style: TextStyle(color: Colors.white,fontSize: 25),)),
                      SizedBox(width: 30,),
                      TextButton(onPressed: (){}, child: Text("Online",style: TextStyle(color: Colors.grey,fontSize: 20))),
                      SizedBox(width: 30,),
                      TextButton(onPressed: (){}, child: Text("Groups",style: TextStyle(color: Colors.grey,fontSize: 20))),
                      SizedBox(width: 30,),
                      TextButton(onPressed: (){}, child: Text("Rooms",style: TextStyle(color: Colors.grey,fontSize: 20))),
                      

                    ],
                  ),
                )
              ],
            ),
          ),
          Positioned(
            top: 140, right: 0, left: 0,
            child: Container(
              padding: EdgeInsets.only(left: 8),//blasdlfjalskdjfklasdjflkjkina??k??
              height: 300,
              decoration: BoxDecoration(
                color: Color(0xFF64B5F6),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20)
                )
              ),
              //color: Colors.cyan,
              child: Column(
                
                  children: [
                    Row(
                    
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Favourites",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold
                        ),),
                        IconButton(
                        onPressed: (){}, 
                        icon: Icon(Icons.more_horiz),
                        color: Colors.white,)
                      ],
                    ),
                    SizedBox(
                  height: 110,
                  child: ListView(
                    scrollDirection:Axis.horizontal,
                    children: [
                      userProfile("pp1.jpg","Avinav"),
                     // SizedBox(width: 10,), fixed in method below with padding as a wrapper to returned column 
                      userProfile("pp2.jpg","Jessica"),
                      userProfile("pp7.png","Viking"),
                      userProfile("pp3.jpg","Barsa"),
                      userProfile("pp4.jpg","Kajol"),
                      userProfile("pp5.jpg","Walter"),
                      userProfile("pp6.jpg","Kaile"),
                      userProfile("pp2.webp","Johan"),
                      userProfile("pp7.png","Viking")                     
                      
                    ],
                  ),
                )
                    ],

              
                    ),
            ),
          ),
          Positioned(
            top: 310,
            left: 0,
            right: 0,
            bottom: 0,
                      
            child: Container(
              //height: 20,


              decoration: BoxDecoration (
                color: Color (0xFFEFFFFC),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20)
                )
                ),
                child: ListView(
                  children: [
                    chatShow("pp1.jpg","Avinav","Hey, whaas up?",3, "7:44"),
                    chatShow("pp2.jpg","Jessica","Nope, not yet. I will soon.",1, "11:04"),
                    chatShow("pp3.jpg","Barsha","Did you watch?",2, "10:23"),
                    chatShow("pp4.jpg","Kajol","alright then, see ya",0, "9:05"),
                    chatShow("pp5.jpg","Bebe","Hey, whats up?",3, "5:55"),
                    chatShow("pp6.jpg","Walter","Call me asap.",3, "12:11"),
                    chatShow("pp7.png","Avinav","Hey, whats up?",3, "11:11"),
                    chatShow("pp1.jpg","Avinav","Hey, whats up?",3, "7:42")
                    
                    
                  ],
                ),
            ) 
          ),
          
        ],
      ),
      floatingActionButton: FloatingActionButton(
      onPressed: (){},
      child: Icon(Icons.edit),
      backgroundColor: Color(0xFF64B5F6),
      ),
    );
  }

  Column chatShow(String pic, String user, String message, int noti, String time) {
    return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 10,left: 10),
                        child: Row(
                          
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                              userProfile(pic, ""),
                              SizedBox(width: 10,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(user),
                                  SizedBox(height: 15,),
                                  Text(message)
                                ],
                              ),
                              
                              
                              ],
                            ),
                           // SizedBox(width: 100,),
                            Column(
                                
                                children: [
                                  Text(time.toString()),
                                  SizedBox(height: 20,),
                                  CircleAvatar(
                                    radius: 7,
                                    backgroundColor: Color(0xFF64B5F6),
                                    child: Text(noti.toString(),style: TextStyle(fontSize: 10),),
                                  )
                                ],
                              )
                          ],
                        ),
                      ),
                      Divider(
                    indent: 5,
                  )
                    ],
                    
                  );
  }

  Padding userProfile(String pic_path, String username) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Column(
                        children: [
                          //UserProfile(pic_path: "pp1.jpg",username: "yoyo",),
                          UserProfile(pic_path:pic_path,),
                          SizedBox(height: 10,),
                          Text("$username"),
                          
                          
                        ],
                      ),
    );
  }
}

class DrawerItem extends StatelessWidget {
  final String title;
  final IconData icon;
  const DrawerItem({
    super.key, required this.title, required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 0, bottom: 1),
      child: Row(
        children: [
          Icon(icon,
          size: 20,
          color: Colors.white,),
          SizedBox(width: 70,),
          TextButton(onPressed: (){}, child: Text(title, style: TextStyle(color: Colors.white,fontSize: 15), ),)
        ],
      ),
    );
  }
}

class UserProfile extends StatelessWidget {
  final String pic_path;
  //final String username;
  const UserProfile({
    super.key, required this.pic_path, 
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 41,
      backgroundColor: Colors.white,
      child: CircleAvatar(
        radius: 40,
        backgroundImage: Image.asset('pics/$pic_path').image,
    
      ),  
    );
  }
}