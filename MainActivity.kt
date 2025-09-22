<manifest xmlns:android="http://schemas.android.com/apk/res/android"
    package="com.bigfun.app">

    <!-- ইন্টারনেট পারমিশন -->
    <uses-permission android:name="android.permission.INTERNET" />
    <uses-permission android:name="android.permission.RECORD_AUDIO" />
    <uses-permission android:name="android.permission.MODIFY_AUDIO_SETTINGS" />
    <uses-permission android:name="android.permission.BLUETOOTH" />
    <uses-permission android:name="android.permission.BLUETOOTH_ADMIN" />
    <uses-permission android:name="android.permission.ACCESS_NETWORK_STATE" />
    <uses-permission android:name="android.permission.WAKE_LOCK" />

    <application
        android:name="${applicationName}"
        android:label="Big Fun"
        android:icon="@mipmap/ic_launcher"
        android:usesCleartextTraffic="true"
        android:allowBackup="true"
        android:networkSecurityConfig="@xml/network_security_config"
        android:supportsRtl="true"
        android:theme="@style/LaunchTheme">

        <!-- Flutter splash screen -->
        <meta-data
            android:name="io.flutter.embedding.android.SplashScreenDrawable"
            android:resource="@drawable/launch_background" />

        <!-- Flutter V2 embedding -->
        <meta-data
            android:name="flutterEmbedding"
            android:value="2" />

        <!-- MainActivity -->
        <activity
            android:name=".MainActivity"
            android:exported="true"
            android:launchMode="singleTop"
            android:theme="@style/LaunchTheme"
            android:configChanges="orientation|keyboardHidden|keyboard|screenSize|smallestScreenSize|locale|layoutDirection|fontScale|screenLayout|density|uiMode"
            android:hardwareAccelerated="true"
            android:windowSoftInputMode="adjustResize">

            <intent-filter>
                <action android:name="android.intent.action.MAIN"/>
                <category android:name="android.intent.category.LAUNCHER"/>
            </intent-filter>
        </activity>

    </application>
</manifest>
