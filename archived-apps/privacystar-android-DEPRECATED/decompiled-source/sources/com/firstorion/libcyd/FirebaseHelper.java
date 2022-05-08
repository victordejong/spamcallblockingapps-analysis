package com.firstorion.libcyd;

import android.content.Context;
import com.google.firebase.FirebaseApp;
import com.google.firebase.FirebaseOptions;
import com.privacystar.core.service.firebase.FirebaseConstants;
/* loaded from: classes-dex2jar.jar:com/firstorion/libcyd/FirebaseHelper.class */
final class FirebaseHelper {
    static final String FIRST_ORION_FIREBASE_TOKEN_TYPE = "fofcm";

    FirebaseHelper() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void useCallerYDFirebaseServer(Context context) {
        if (context == null) {
            throw new NullPointerException("context");
        }
        Context applicationContext = context.getApplicationContext();
        FirebaseOptions build = new FirebaseOptions.Builder().setApiKey("AIzaSyBI9S7jT4cXOQ3Jzf2QzrooSuR5jKKnO2A").setApplicationId("1:674119330619:android:837ee5fbb12685fe").setDatabaseUrl("https://calleryd-bec7d.firebaseio.com").setGcmSenderId(FirebaseConstants.LIBCYD_SENDER_ID).setStorageBucket("calleryd-bec7d.appspot.com").build();
        if (FirebaseApp.getApps(applicationContext).size() == 0) {
            FirebaseApp.initializeApp(applicationContext, build, "[DEFAULT]");
        } else {
            FirebaseApp.initializeApp(applicationContext, build, "libcyd");
        }
        if (CYDApplication.isInitialized()) {
            FirebaseTokenService.refreshToken(context);
        }
    }
}
