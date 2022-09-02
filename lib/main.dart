import 'dart:async';

import 'package:flutter/material.dart';

void main() => runApp(const WhatsApp());

class WhatsApp extends StatelessWidget{
  const WhatsApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'WhatsApp Clone',
      theme: ThemeData(
        primarySwatch: Colors.green
      ),
      home: const LaunchScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class LaunchScreen extends StatefulWidget{
  const LaunchScreen({super.key});

  @override
  State<LaunchScreen> createState() => _LaunchScreenState();
}

class _LaunchScreenState extends State<LaunchScreen>{

  @override
  void initState(){
    super.initState();
    Timer(
      const Duration(seconds: 3),
        () => Navigator.pushReplacement(
          context,MaterialPageRoute(
          builder: (context) => const HomePage(),
        )
        )
    );
  }

  @override
  Widget build(BuildContext context){
    return Container(
      color: Colors.white,
      child: const Icon(
        Icons.whatsapp_sharp,
        color: Colors.green,
        size: 70.0,
      )
    );
  }
}

class HomePage extends StatefulWidget{
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}



class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin{

  static const List<Tab> _tabs = <Tab>[
    Tab(text: 'CHATS',),
    Tab(text: 'STATUS',),
    Tab(text: 'CALLS',),
  ];

  late TabController _tabController;


  @override
  void initState(){
    super.initState();

    _tabController = TabController(length: _tabs.length, vsync: this);
  }
  @override
  void dispose(){
    _tabController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context){

    var listHeader = const Text(
      'Billy Livingstone',
      style: TextStyle(
       fontWeight: FontWeight.w400,
        fontSize: 18,
      ),
    );

    var listContent = const Text(
      'Hey there am using whatsapp',
      style: TextStyle(
        color: Colors.grey
      ),
    );

    var profilePhoto = const CircleAvatar(
      backgroundImage: AssetImage('img/photo2.jpg'),
    );

    var usersList = ListView(
      children: <Widget>[
        ListTile(
          leading: profilePhoto,
          title: listHeader,
          subtitle: listContent,
        ),
        ListTile(
          leading: profilePhoto,
          title: listHeader,
          subtitle: listContent,
        ),
        ListTile(
          leading: profilePhoto,
          title: listHeader,
          subtitle: listContent,
        ),
        ListTile(
          leading: profilePhoto,
          title: listHeader,
          subtitle: listContent,
        ),
        ListTile(
          leading: profilePhoto,
          title: listHeader,
          subtitle: listContent,
        ),
        ListTile(
          leading: profilePhoto,
          title: listHeader,
          subtitle: listContent,
        ),
        ListTile(
          leading: profilePhoto,
          title: listHeader,
          subtitle: listContent,
        ),
        ListTile(
          leading: profilePhoto,
          title: listHeader,
          subtitle: listContent,
        ),
        ListTile(
          leading: profilePhoto,
          title: listHeader,
          subtitle: listContent,
        ),
        ListTile(
          leading: profilePhoto,
          title: listHeader,
          subtitle: listContent,
        ),
      ],
    );

    var timeText = const Text(
        'Today, 11:30 AM',
      style: TextStyle(
        color: Colors.grey
      ),
    );
    var statusList = ListView(
      children: <Widget>[
        InkWell(
          child: ListTile(
            leading: profilePhoto,
            title: const Text(
              'My Status',
              style: TextStyle(
                  fontWeight: FontWeight.w600
              ),
            ),
            subtitle: const Text(
                'Tap to add a status update'
            ),
          ),
          onTap: () => true,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            'Recent updates',
            style: TextStyle(
              color: Colors.black45,
              fontSize: 14,
              fontWeight: FontWeight.w500
            ),
          ),
        ),
        InkWell(
          child: ListTile(
            leading: profilePhoto,
            title: listHeader,
            subtitle: timeText,
          ),
          onTap: () => true,
        ),
        InkWell(
          child: ListTile(
            leading: profilePhoto,
            title: listHeader,
            subtitle: timeText,
          ),
          onTap: () => true,
        ),
        InkWell(
          child: ListTile(
            leading: profilePhoto,
            title: listHeader,
            subtitle: timeText,
          ),
          onTap: () => true,
        ),
        InkWell(
          child: ListTile(
            leading: profilePhoto,
            title: listHeader,
            subtitle: timeText,
          ),
          onTap: () => true,
        ),
        InkWell(
          child: ListTile(
            leading: profilePhoto,
            title: listHeader,
            subtitle: timeText,
          ),
          onTap: () => true,
        ),
        InkWell(
          child: ListTile(
          leading: profilePhoto,
          title: listHeader,
          subtitle: timeText,
          ),
          onTap: () => true,
        ),
        InkWell(
          child: ListTile(
            leading: profilePhoto,
            title: listHeader,
            subtitle: timeText,
          ),
          onTap: () => true,
        ),
        InkWell(
          child: ListTile(
            leading: profilePhoto,
            title: listHeader,
            subtitle: timeText,
          ),
          onTap: () => true,
        ),
        InkWell(
          child: ListTile(
            leading: profilePhoto,
            title: listHeader,
            subtitle: timeText,
          ),
          onTap: () => true,
        ),
      ],
    );

    var chatTabSection = Scaffold(
      body: Container(
        child: usersList,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal,
        onPressed: () => true,
        child: const Icon(Icons.message),
      ),
    );

    var statusTabSection = Scaffold(
      body: Container(
        child: statusList,
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: FloatingActionButton(
              tooltip: 'Add a',
              onPressed: () => true,
              backgroundColor: Colors.white,
              child: const Icon(
                Icons.edit,
                color: Colors.grey,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
              child: FloatingActionButton(
                onPressed: () => true,
                backgroundColor: Colors.teal,
                child: const Icon(
                  Icons.camera_alt_rounded,
                ),
              ),
          ),
        ],
      ),
    );

    var callTabSection = Scaffold(
      body: Center(
        child: SizedBox(
          width: 300,
          child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: RichText(
            textAlign: TextAlign.center,
            text: const TextSpan(
              children: [
                TextSpan(
                  text: 'To start calling contacts who have '
                      'WhatsApp, tap ',
                  style: TextStyle(
                    color: Colors.black45,
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                    letterSpacing: 1.0
                  )
                ),
                WidgetSpan(
                  child: Icon(Icons.add_call, size: 18, color: Colors.grey,)
                ),
                TextSpan(
                  text: ' at the bottom of your screen',
                  style: TextStyle(
                    color: Colors.black45,
                      fontWeight: FontWeight.w400,
                    fontSize: 15,
                    letterSpacing: 0.7,
                  )
                )
              ]
            ),
          )
          )
      ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => true,
        backgroundColor: Colors.teal,
        child: const Icon(
            IconData(0xe04d, fontFamily: 'MaterialIcons',)
        ),
      ),
    );

    return MaterialApp(
      title: 'WhatsApp Home Page',
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              indicatorColor: Colors.white,
              indicatorWeight: 3.0,
              controller: _tabController,
              tabs: _tabs,
            ),
            actions: [
              IconButton(
                icon: const Icon(Icons.search),
                onPressed: (){
                  const TextField(
                    autofocus: true,
                    decoration: InputDecoration(
                      border: UnderlineInputBorder()
                    ),
                  );
                },
              ),
              PopupMenuButton(
                itemBuilder: (context){
                  return[
                    const PopupMenuItem<int>(
                      value: 0,
                      child: Text('New group'),
                    ),
                    const PopupMenuItem<int>(
                      value: 1,
                      child: Text('New broadcast'),
                    ),
                    const PopupMenuItem<int>(
                      value: 2,
                      child: Text('Linked devices'),
                    ),
                    const PopupMenuItem<int>(
                      value: 3,
                      child: Text('Starred messages'),
                    ),
                    const PopupMenuItem<int>(
                      value: 4,
                      child: Text('Settings'),
                    ),
                  ];
                },
              )
            ],
            title: const Text('WhatsApp'),
            backgroundColor: Colors.teal,
          ),
          body: TabBarView(
            controller: _tabController,
            children: [
              chatTabSection,
              statusTabSection,
              callTabSection,
            ]
          ),
        ),
      ),
    );
  }
}