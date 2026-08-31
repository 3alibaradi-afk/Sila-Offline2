# مراجع التنفيذ الرسمية — 31 أغسطس 2026

اعتمد MVP 1 على التوثيق الرسمي التالي:

1. Google Nearby Connections — Get started / Android permissions  
   https://developers.google.com/nearby/connections/android/get-started

2. Google Nearby Connections — Advertise and discover  
   https://developers.google.com/nearby/connections/android/discover-devices

3. Google Nearby Connections — Manage connections and authentication token  
   https://developers.google.com/nearby/connections/android/manage-connections

4. Google Nearby Connections — Strategies (`P2P_CLUSTER`)  
   https://developers.google.com/nearby/connections/strategies

5. Google Nearby Connections — Exchange data / `Payload.Type.BYTES`  
   https://developers.google.com/nearby/connections/android/exchange-data

6. Google Play services release notes — `play-services-nearby:19.5.0`, 24 Aug 2026  
   https://developers.google.com/android/guides/releases

7. Android Gradle Plugin 9.3.0 release notes  
   https://developer.android.com/build/releases/agp-9-3-0-release-notes

8. Jetpack Compose BOM — stable `2026.08.00`  
   https://developer.android.com/develop/ui/compose/bom

9. Android Bluetooth permissions  
   https://developer.android.com/develop/connectivity/bluetooth/bt-permissions

10. Nearby Wi-Fi devices permission  
    https://developer.android.com/develop/connectivity/wifi/wifi-permissions

## قرار معماري مهم

Nearby Connections مستخدم فقط كـ Transport أولي في MVP 1. التطبيق نفسه لا يطلب `INTERNET`، لكن Nearby يعتمد على وجود Google Play Services على الجهاز. لذلك لا تعتبر هذه النسخة بعدُ النسخة النهائية المناسبة لكل أجهزة البيئة المعزولة. المرحلة التالية يجب أن تضيف Native BLE و/أو Wi‑Fi Direct خلف نفس طبقة النقل.
