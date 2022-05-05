package com.vladlee.easyblacklist;

import android.app.IntentService;
import android.content.Intent;
import android.os.Bundle;
import com.google.firebase.analytics.FirebaseAnalytics;
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/CallBlockHandlerDefPhoneApp.class */
public class CallBlockHandlerDefPhoneApp extends IntentService {
    public CallBlockHandlerDefPhoneApp() {
        super("CallBlockHandlerDefPhoneApp");
    }

    @Override // android.app.IntentService
    protected void onHandleIntent(Intent intent) {
        long currentTimeMillis = System.currentTimeMillis();
        if (intent != null) {
            String stringExtra = intent.getStringExtra(C3356db.f19472a);
            String str = stringExtra;
            if (stringExtra == null) {
                str = "";
            }
            Bundle bundle = new Bundle();
            FirebaseAnalytics.getInstance(this).m646a("CallBlockDefApp_logBlocked", bundle);
            try {
                C3318by.m199a(this, str, "", currentTimeMillis, 0);
            } catch (IllegalArgumentException e) {
                FirebaseAnalytics.getInstance(this).m646a("CallBlockDefApp_exception", bundle);
            }
            C3381dz.m107a(this, true);
        }
    }
}
