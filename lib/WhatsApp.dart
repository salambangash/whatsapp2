import 'package:flutter/material.dart';

class whatsApp extends StatefulWidget {
  const whatsApp({Key? key}) : super(key: key);

  @override
  State<whatsApp> createState() => _whatsAppState();
}

class _whatsAppState extends State<whatsApp> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('WhatsApp'),
            bottom:  const TabBar(
              tabs: [
                Tab(child: Icon(Icons.camera_alt)),
                Tab(child: Text('Chats')),
                Tab(child: Text('Status')),
                Tab(child: Text('Call')),
              ],
            ),
            actions:  [
              const Icon(Icons.search),
              const SizedBox(width: 10,),
              PopupMenuButton(
                icon: const Icon(Icons.more_vert),
                itemBuilder: (context,) => [
                  const PopupMenuItem(
                      child: Text('New group')),

                  const PopupMenuItem(
                      child: Text('New broadcast')),

                  const PopupMenuItem(
                      child: Text('Linked devices')),

                  const PopupMenuItem(
                      child: Text('Starred messages')),

                  const PopupMenuItem(
                      child: Text('Settings'))
                ],
              ),
            ],
          ),
          body:  TabBarView(
            children: [
              const Center(child: Icon(Icons.camera_alt, size: 120,color: Colors.black,)),
              ListView.builder(
                  itemCount: 20,
                  itemBuilder: (context, index){

                    return const ListTile(
                      leading:  CircleAvatar(
                          backgroundImage: NetworkImage('https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                      ),
                      title: Text('Ab Salam Bangash'),
                      subtitle: Text('How are you and what are you doing?'),
                      trailing: Text('10:15pm'),
                    );

                  }
              ),


              ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index){
                    return  ListTile(
                      leading:  Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey, width: 3),
                            shape: BoxShape.circle
                        ),
                        child: const CircleAvatar(
                          backgroundImage: NetworkImage('https://scontent.fpew2-1.fna.fbcdn.net/v/t39.30808-6/306097127_175077205042083_851530943324812049_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=saWdoP2HE3kAX9nI6sh&_nc_ht=scontent.fpew2-1.fna&oh=00_AT-F5h4tOxr0EY1mPwu-R0yQ-mVDyADxbn20lq5njVb4pA&oe=633AC500'),
                        ),
                      ),
                      title: const Text('Ab Salam Bangash'),
                      subtitle: const Text('30 minutes ago '),
                    );

                  }
              ),


              ListView.builder(
                  itemCount: 3,
                  itemBuilder: (context, index){

                    return const ListTile(
                        leading:  CircleAvatar(
                          backgroundImage: NetworkImage('https://scontent.fpew2-1.fna.fbcdn.net/v/t39.30808-6/306097127_175077205042083_851530943324812049_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=saWdoP2HE3kAX9nI6sh&_nc_ht=scontent.fpew2-1.fna&oh=00_AT-F5h4tOxr0EY1mPwu-R0yQ-mVDyADxbn20lq5njVb4pA&oe=633AC500'),
                        ),
                        title: Text('Ab Salam Bangash'),
                        subtitle: Text('Today, 10:17pm'),
                        trailing: Icon(Icons.phone, color: Colors.teal,)
                    );

                  }
              ),
            ],
          ),
        )
    );
  }
}
