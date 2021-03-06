package com.google.android.gms.analytics;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.support.annotation.RequiresPermission;
import com.google.android.gms.internal.measurement.zzcw;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/analytics/AnalyticsReceiver.class */
public final class AnalyticsReceiver extends BroadcastReceiver {
    private zzcw zzra;

    @Override // android.content.BroadcastReceiver
    @RequiresPermission(allOf = {"android.permission.INTERNET", "android.permission.ACCESS_NETWORK_STATE"})
    public final void onReceive(Context context, Intent intent) {
        if (this.zzra == null) {
            this.zzra = new zzcw();
        }
        zzcw.onReceive(context, intent);
    }
}
