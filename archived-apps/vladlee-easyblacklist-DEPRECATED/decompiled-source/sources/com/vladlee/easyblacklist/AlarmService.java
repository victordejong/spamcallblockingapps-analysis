package com.vladlee.easyblacklist;

import android.app.IntentService;
import android.content.Intent;
import android.os.Handler;
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/AlarmService.class */
public class AlarmService extends IntentService {

    /* renamed from: a */
    Handler f19233a = null;

    public AlarmService() {
        super("AlarmService");
    }

    @Override // android.app.IntentService, android.app.Service
    public void onCreate() {
        super.onCreate();
        this.f19233a = new Handler();
    }

    @Override // android.app.IntentService
    protected void onHandleIntent(Intent intent) {
        AlarmReceiver.m370a(getApplicationContext(), intent, this.f19233a);
        AlarmReceiver.completeWakefulIntent(intent);
    }
}
