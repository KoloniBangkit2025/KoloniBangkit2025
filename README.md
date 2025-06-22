## Hi there 👋

<!--
**KoloniBangkit2025/KoloniBangkit2025** is a ✨ _special_ ✨ repository because its `README.md` (this file) appears on your GitHub profile.

Here are some ideas to get you started:

- 🔭 I’m currently working on ...
- 🌱 I’m currently learning ...
- 👯 I’m looking to collaborate on ...
- 🤔 I’m looking for help with ...
- 💬 Ask me about ...
- 📫 How to reach me: ...
- 😄 Pronouns: ...
- ⚡ Fun fact: ...
-->
📱 HECAI APP – Flutter + Firebase + PWA 🚀

HECAI adalah superapp modern berbasis Flutter + Firebase yang mendukung lintas platform: Android, iOS, dan Web (PWA). Dirancang sebagai MVP startup dengan fitur onboarding referral, sistem reward, autentikasi canggih, dan notifikasi real-time. Dikembangkan oleh Hugo Garox & Tim Koloni Bangkit menggunakan Android + Acode + AI langsung dari HP! 💥📱


---

🔧 Teknologi Utama

✅ Flutter 3.22+

✅ Firebase: Auth, Firestore, Storage, Hosting, Messaging, Dynamic Link

✅ Google Sign-In + Email Sign-In

✅ Provider (State Management)

✅ GoRouter (Routing)

✅ PWA (Web installable)

✅ QR Invite + Dynamic Referral System

✅ Firestore Security Rules v2

✅ Firebase Hosting Multi-target

✅ Logger + Notification Service



---

🧭 Struktur Direktori

hecai_app/
├── android/                         # Konfigurasi Android native (gradle, manifest)
├── ios/                             # Konfigurasi iOS native (GoogleService-Info.plist)
├── web/                             # Web PWA (Hosting)
│   ├── index.html
│   ├── manifest.json
│   └── firebase-messaging-sw.js
│
├── lib/
│   ├── main.dart                    # Entry point
│   ├── constants/                   # Konstanta global
│   ├── models/                      # user_model.dart (referral-ready)
│   ├── services/                    # auth_service.dart, firestore_service.dart, referral_service.dart, notification_service.dart
│   ├── screens/                     # login, register, home, onboarding
│   ├── providers/                   # UserProvider, AuthController
│   ├── routes/                      # go_router + auth_guard.dart
│   ├── utils/                       # format_date.dart, logger_service.dart
│   └── widgets/                     # Komponen UI reuse
│
├── assets/                          # Ikon, font, gambar, .env, translations
├── test/                            # Unit & widget test
├── .env                             # API Key Firebase (flutter_dotenv)
├── pubspec.yaml                     # Dependencies & aset Flutter
├── firebase.json                    # Konfigurasi Firebase Hosting
├── .firebaserc                      # Target multi-environment
├── firestore.rules                  # Aturan keamanan Firestore
└── README.md                        # Dokumentasi ini


---

🔑 Contoh .env

FIREBASE_API_KEY=xxx
FIREBASE_AUTH_DOMAIN=xxx.firebaseapp.com
FIREBASE_PROJECT_ID=hecai-app
FIREBASE_STORAGE_BUCKET=hecai-app.appspot.com
FIREBASE_MESSAGING_SENDER_ID=1000540197936
FIREBASE_APP_ID=xxx


---

🔥 Firebase Deployment

firebase login
firebase init hosting
firebase use --add
firebase deploy

🌐 firebase.json (multi-site)

{
  "hosting": [
    {
      "target": "app",
      "public": "web",
      "ignore": ["firebase.json", "**/.*", "**/node_modules/**"],
      "rewrites": [{ "source": "**", "destination": "/index.html" }]
    }
  ]
}

🎯 Hosting Target Guide

Target	Subfolder	Environment

hecai-app-app	app/	Lokal Dev
hecai-dev-app	app/	Staging / QA
hecai-prod-landing	landing/	Production Live

---

📌 Fitur Unggulan

🔐 Firebase Auth (Email + Google Sign-In)

🔗 Dynamic Referral Link /register?ref=username

🧾 Simpan kode referral di Firestore saat sign-up

📊 Statistik jumlah referral yang berhasil

🪙 Sistem poin reward dari referral

📷 QR Code generator untuk undangan

🛜 Firebase Messaging untuk notifikasi

📱 UI responsif + Web installable (PWA)



---

🔐 Firestore Security Rules v2

rules_version = '2';
service cloud.firestore {
  match /databases/{database}/documents {

    match /users/{userId} {
      allow create, update: if request.auth.uid == userId;
      allow read: if request.auth != null;
    }

    match /referrals/{refCode}/referredUsers/{docId} {
      allow create: if request.auth != null;
      allow read: if request.auth != null;
    }

  }
}


---

👨‍💻 Dibangun Oleh

Hugo Garox & Tim Koloni Bangkit!

📱 Dibantu AI GPT + Acode langsung dari Android

🔥 Dibangun dengan semangat:

> "Digital Rakyat Berdaulat & Mandiri"

---

⚖️ Lisensi

MIT License © 2025 — Koloni Bangkit Tech Movement

