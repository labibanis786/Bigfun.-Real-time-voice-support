BigFun Full Project v2 (Codemagic-friendly)
------------------------------------------

This package includes a full 'lib/' folder with auth (phone OTP), voice chat (Agora), profile, wallet & gifts UI placeholders.
To avoid 'unsupported gradle project' errors on Codemagic, codemagic.yaml creates a temporary Flutter app during the build and copies these files into it.

Before building on Codemagic:
1) Replace google-services.json with the real file from Firebase Console (android app must be registered first).
2) In Codemagic, set ANDROID_KEYSTORE_BASE64 to the base64 content of your keystore file (my-release-key.jks).
3) Confirm ANDROID_KEYSTORE_PASSWORD and ANDROID_KEYSTORE_ALIAS values match your keystore (currently Bigfun@2580 and bigfun).
4) If using phone auth: add SHA-1 fingerprint to Firebase Console (Project settings -> Add fingerprint).
5) Push this repo to GitHub and connect to Codemagic. The workflow will create a temporary Flutter app and build the APK.

Notes:
- Real-time production features (scalable voice rooms, token server for Agora, payment gateway for wallet top-ups) require backend services — this package includes client-side code and placeholders ready to connect to your backend.
- If you prefer, I can also produce a full local Flutter project (with fully populated android/ and ios/ folders) but the resulting ZIP will be large.
