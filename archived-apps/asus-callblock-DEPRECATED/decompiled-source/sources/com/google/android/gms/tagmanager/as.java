package com.google.android.gms.tagmanager;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/as.class */
class as extends BroadcastReceiver {

    /* renamed from: a  reason: collision with root package name */
    static final String f4289a = as.class.getName();

    /* renamed from: b  reason: collision with root package name */
    private final cc f4290b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public as(cc ccVar) {
        this.f4290b = ccVar;
    }

    public static void a(Context context) {
        Intent intent = new Intent("com.google.analytics.RADIO_POWERED");
        intent.addCategory(context.getPackageName());
        intent.putExtra(f4289a, true);
        context.sendBroadcast(intent);
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String action = intent.getAction();
        if ("android.net.conn.CONNECTIVITY_CHANGE".equals(action)) {
            Bundle extras = intent.getExtras();
            Boolean bool = Boolean.FALSE;
            if (extras != null) {
                bool = Boolean.valueOf(intent.getExtras().getBoolean("noConnectivity"));
            }
            this.f4290b.a(!bool.booleanValue());
        } else if ("com.google.analytics.RADIO_POWERED".equals(action) && !intent.hasExtra(f4289a)) {
            this.f4290b.b();
        }
    }
}
