# 🚖 Cab Booking App (Flutter + Firebase)

A mobile cab booking application built using **Flutter** and **Firebase**, inspired by apps like Uber.

---

## 📱 Features

* 📞 Phone Authentication (OTP login)
* 🔐 Firebase Authentication integration
* 🗄️ User data stored in Firestore
* 👤 Role-based system (Rider / Driver)
* ⚡ Real-time backend (Firebase)

---

## 🛠️ Tech Stack

* **Frontend:** Flutter (Dart)
* **Backend:** Firebase

  * Firebase Authentication
  * Cloud Firestore
* **Tools:** VS Code, Android Studio

---

## 🚀 Getting Started

### 1. Clone the repository

```bash
git clone https://github.com/rishi3412/cab_app.git
cd cab_app
```

---

### 2. Install dependencies

```bash
flutter pub get
```

---

### 3. Setup Firebase

1. Create a Firebase project
2. Enable **Phone Authentication**
3. Add your Android app
4. Download and place:

   ```text
   android/app/google-services.json
   ```
5. Run:

   ```bash
   flutterfire configure
   ```

---

### 4. Run the app

```bash
flutter run
```

---

## 📂 Project Structure

```text
lib/
 ├── main.dart
 ├── login_screen.dart
 ├── otp_screen.dart
 ├── home_screen.dart
```

---

## 🔐 Authentication Flow

1. User enters phone number
2. Firebase sends OTP
3. User verifies OTP
4. User is created in Firebase Auth
5. User data stored in Firestore

---

## 📊 Database Structure (Firestore)

```text
users (collection)
 └── userId (document)
      ├── phone: +91XXXXXXXXXX
      ├── role: rider / driver
      └── createdAt: timestamp
```

---

## ⚠️ Important Notes

* SHA-1 and SHA-256 must be added in Firebase
* Firebase billing may be required for real OTP
* Use test numbers during development

---

## 🚧 Future Improvements

* 🚗 Ride booking system
* 📍 Google Maps integration
* 🧭 Driver tracking
* 💳 Payment integration
* ⭐ Ratings & reviews

---

## 👨‍💻 Author

Rishabh Chaudhari

---

## 📜 License

This project is for learning purposes.
