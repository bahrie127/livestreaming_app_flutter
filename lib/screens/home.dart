// import 'package:flutter/material.dart';
// import 'package:livestreaming_app_flutter/screens/livestreaming.dart';
// import 'package:permission_handler/permission_handler.dart';

// class Home extends StatefulWidget {
//   @override
//   _HomeState createState() => _HomeState();
// }

// class _HomeState extends State<Home> {
//   final _username = TextEditingController();
//   final _channelName = TextEditingController();
//   bool _isBroadcaster = false;
//   String check = '';

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       resizeToAvoidBottomInset: true,
//       body: Center(
//         child: SingleChildScrollView(
//           physics: const NeverScrollableScrollPhysics(),
//           child: Stack(
//             children: [
//               Center(
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.all(30),
//                       child: Image.network(
//                         'https://static.wixstatic.com/media/759737_4844c90dcf284125920bd40b36bb460b~mv2.png/v1/fill/w_200,h_200,al_c,q_85,usm_0.66_1.00_0.01/Woo-Hoo%20LIVE.webp',
//                         scale: 1.5,
//                       ),
//                     ),
//                     Container(
//                       width: MediaQuery.of(context).size.width * 0.85,
//                       height: MediaQuery.of(context).size.height * 0.2,
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           TextFormField(
//                             controller: _username,
//                             decoration: InputDecoration(
//                               border: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(20),
//                                 borderSide:
//                                     const BorderSide(color: Colors.grey),
//                               ),
//                               hintText: 'Username',
//                             ),
//                           ),
//                           SizedBox(
//                             height: 10,
//                           ),
//                           TextFormField(
//                             controller: _channelName,
//                             decoration: InputDecoration(
//                               border: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(20),
//                                 borderSide:
//                                     const BorderSide(color: Colors.grey),
//                               ),
//                               hintText: 'Channel Name',
//                             ),
//                           )
//                         ],
//                       ),
//                     ),
//                     Container(
//                       width: MediaQuery.of(context).size.width * 0.65,
//                       padding: const EdgeInsets.symmetric(vertical: 10),
//                       child: SwitchListTile(
//                           title: _isBroadcaster
//                               ? const Text('Broadcaster')
//                               : const Text('Audience'),
//                           value: _isBroadcaster,
//                           activeColor: const Color.fromRGBO(45, 156, 215, 1),
//                           secondary: _isBroadcaster
//                               ? const Icon(
//                                   Icons.account_circle,
//                                   color: Color.fromRGBO(45, 156, 215, 1),
//                                 )
//                               : const Icon(Icons.account_circle),
//                           onChanged: (value) {
//                             setState(() {
//                               _isBroadcaster = value;
//                             });
//                           }),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.symmetric(vertical: 25),
//                       child: Container(
//                         width: MediaQuery.of(context).size.width * 0.85,
//                         decoration: BoxDecoration(
//                           color: Colors.blue,
//                           borderRadius: BorderRadius.circular(20),
//                         ),
//                         child: MaterialButton(
//                           onPressed: _onJoin,
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: const [
//                               Text(
//                                 'Join',
//                                 style: TextStyle(
//                                   color: Colors.white,
//                                   letterSpacing: 1,
//                                   fontWeight: FontWeight.bold,
//                                   fontSize: 20,
//                                 ),
//                               )
//                             ],
//                           ),
//                         ),
//                       ),
//                     ),
//                     Text(
//                       check,
//                       style: const TextStyle(color: Colors.red),
//                     )
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Future<void> _handleCameraAndMic(Permission permission) async {
//     await permission.request();
//   }

//   Future<void> _onJoin() async {
//     if (_username.text.isEmpty || _channelName.text.isEmpty) {
//       setState(() {
//         check = 'Username and channel name are required fields.';
//       });
//     } else {
//       setState(() {
//         check = '';
//       });
//       await _handleCameraAndMic(Permission.camera);
//       await _handleCameraAndMic(Permission.microphone);
//       Navigator.of(context).push(
//         MaterialPageRoute(
//           builder: (context) => Livestreaming(
//             userName: _username.text,
//             channelName: _channelName.text,
//             isBroadcaster: _isBroadcaster,
//           ),
//         ),
//       );
//     }
//   }
// }
