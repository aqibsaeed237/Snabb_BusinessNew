// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:local_auth/local_auth.dart';

// enum BiometricAuthenticationStatus {
//   supported,
//   notSupported,
//   authenticated,
//   notAuthenticated,
//   error,
// }

// class BiometricAuthentication {
//   final LocalAuthentication _auth = LocalAuthentication();

//   Future<BiometricAuthenticationStatus> authenticate() async {
//     try {
//       if (await _auth.canCheckBiometrics) {
//         final isAuthenticated = await _auth.authenticate(
//           localizedReason: 'Authenticate using biometrics',
//         );

//         return isAuthenticated
//             ? BiometricAuthenticationStatus.authenticated
//             : BiometricAuthenticationStatus.notAuthenticated;
//       } else {
//         return BiometricAuthenticationStatus.notSupported;
//       }
//     } on PlatformException catch (e) {
//       print('Error during biometric authentication: $e');
//       return BiometricAuthenticationStatus.error;
//     }
//   }

//   Future<void> handleAuthentication(
//       BuildContext context, Function(bool) onAuthenticationComplete) async {
//     final status = await authenticate();

//     switch (status) {
//       case BiometricAuthenticationStatus.supported:
//         // Show loading or any UI for biometric authentication
//         ScaffoldMessenger.of(context).showSnackBar(
//           SnackBar(content: Text('Biometric authentication supported')),
//         );
//         break;
//       case BiometricAuthenticationStatus.notSupported:
//         _showAlternativeAuthentication(context, onAuthenticationComplete);
//         break;
//       case BiometricAuthenticationStatus.authenticated:
//         onAuthenticationComplete(true);
//         break;
//       case BiometricAuthenticationStatus.notAuthenticated:
//         onAuthenticationComplete(false);
//         break;
//       case BiometricAuthenticationStatus.error:
//         // Show a dialog or UI indicating that an error occurred
//         ScaffoldMessenger.of(context).showSnackBar(
//           SnackBar(content: Text('Error during biometric authentication')),
//         );
//         break;
//     }
//   }

//   void _showAlternativeAuthentication(
//       BuildContext context, Function(bool) onAuthenticationComplete) {
//     showDialog(
//       context: context,
//       builder: (BuildContext context) {
//         return AlertDialog(
//           title: Text('Biometrics Not Supported'),
//           content: Text('Use an alternative authentication method:'),
//           actions: <Widget>[
//             TextButton(
//               onPressed: () {
//                 Navigator.pop(context);
//                 // Implement your logic for Face ID authentication
//                 _authenticateWithFaceID(context, onAuthenticationComplete);
//               },
//               child: Text('Use Face ID'),
//             ),
//             TextButton(
//               onPressed: () {
//                 Navigator.pop(context);
//                 // Implement your logic for password authentication
//                 _authenticateWithPassword(context, onAuthenticationComplete);
//               },
//               child: Text('Use Password'),
//             ),
//           ],
//         );
//       },
//     );
//   }

//   void _authenticateWithFaceID(
//       BuildContext context, Function(bool) onAuthenticationComplete) async {
//     try {
//       final isAuthenticated = await _auth.authenticate(
//         localizedReason: 'Authenticate using Face ID',
//         // biometricOnly: true, // This ensures Face ID is used
//         // stickyAuth: true,
//       );

//       onAuthenticationComplete(isAuthenticated);
//     } on PlatformException catch (e) {
//       print('Error during Face ID authentication: $e');
//       _showBiometricDialog(context, onAuthenticationComplete);
//     }
//   }

//   void _authenticateWithPassword(
//       BuildContext context, Function(bool) onAuthenticationComplete) {
//     // Simulated password authentication logic
//     // Replace this with your actual password authentication logic
//     onAuthenticationComplete(true);
//   }

//   void _showBiometricDialog(
//       BuildContext context, Function(bool) onAuthenticationComplete) {
//     showDialog(
//       context: context,
//       builder: (BuildContext context) {
//         return AlertDialog(
//           title: Text('Biometric Authentication Error'),
//           content: Text('There was an error during biometric authentication.'),
//           actions: <Widget>[
//             TextButton(
//               onPressed: () {
//                 Navigator.pop(context);
//                 onAuthenticationComplete(false);
//               },
//               child: Text('Dismiss'),
//             ),
//           ],
//         );
//       },
//     );
//   }
// }
