package com.vladlee.easyblacklist;

import android.app.IntentService;
import android.content.Context;
import android.content.Intent;
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/ServiceStartHandler.class */
public class ServiceStartHandler extends IntentService {
    public ServiceStartHandler() {
        super("ServiceStartHandler");
    }

    /* renamed from: a */
    public static void m293a(Intent intent, Context context) {
        BlockService.m367a(context);
        if (intent != null && intent.getBooleanExtra(C3356db.f19481j, false) && C3392ee.m80a(context, "pref_schedule_enable", false)) {
            AlarmReceiver.m373a(context);
        }
    }

    @Override // android.app.IntentService
    protected void onHandleIntent(Intent intent) {
        m293a(intent, this);
    }
}
