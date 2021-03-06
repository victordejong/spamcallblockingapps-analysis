package com.google.android.gms.tagmanager;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.google.android.gms.common.util.VisibleForTesting;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/zzdn.class */
class zzdn extends BroadcastReceiver {
    @VisibleForTesting
    private static final String zzabi = "com.google.android.gms.tagmanager.zzdn";
    private final zzfm zzbdd;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzdn(zzfm zzfmVar) {
        this.zzbdd = zzfmVar;
    }

    public static void zzv(Context context) {
        Intent intent = new Intent("com.google.analytics.RADIO_POWERED");
        intent.addCategory(context.getPackageName());
        intent.putExtra(zzabi, true);
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
            this.zzbdd.zzr(!bool.booleanValue());
        } else if ("com.google.analytics.RADIO_POWERED".equals(action) && !intent.hasExtra(zzabi)) {
            this.zzbdd.zzpt();
        }
    }
}
