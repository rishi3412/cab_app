import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'home_screen.dart';

class OTPScreen extends StatefulWidget {
  final String verificationId;

  const OTPScreen({super.key, required this.verificationId});

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  final otpController = TextEditingController();

  Future<void> verifyOTP() async {
    final credential = PhoneAuthProvider.credential(
      verificationId: widget.verificationId,
      smsCode: otpController.text.trim(),
    );

    final userCred = await FirebaseAuth.instance.signInWithCredential(
      credential,
    );

    final user = userCred.user;

    // Save user in Firestore
    await FirebaseFirestore.instance.collection("users").doc(user!.uid).set({
      "uid": user.uid,
      "phone": user.phoneNumber,
      "role": "rider",
      "createdAt": FieldValue.serverTimestamp(),
    });

    if (mounted) {
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (_) => const HomeScreen()),
        (route) => false,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Enter OTP")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: otpController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(hintText: "Enter OTP"),
            ),
            const SizedBox(height: 20),
            ElevatedButton(onPressed: verifyOTP, child: const Text("Verify")),
          ],
        ),
      ),
    );
  }
}
