import 'package:chatinc/chat_inc.dart';
import 'package:chatinc/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const ChatInc());
}


// Android Gradle Issue while compiling after Firebase setup
// 1. Downloaded latest gradle
// 2. Updated jetbrians kotlin version
// 3. Issue fixed.

// IOS Pod install fixed by
// 1. Enabled Platform 12.0
// 2. ffi issue (occurred)
// 3. Installed different ruby version by highlighting (gem install ffi --platform=ruby)
// 4. Uninstalled existing ruby
// 5. REXML issue occurred #Issue
// 6. Workaround (Installed REXML lower version). sudo gem install rexml -v 3.2.6
// 7. Uninstalled existing version to prevent conflicts sudo gem uninstall rexml -v 3.2.9