package com.google.android.gms.measurement;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import androidx.legacy.content.WakefulBroadcastReceiver;
import com.google.android.gms.measurement.internal.zzfq;
import com.google.android.gms.measurement.internal.zzfr;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/AppMeasurementReceiver.class */
public final class AppMeasurementReceiver extends WakefulBroadcastReceiver implements zzfr {

    /* renamed from: a */
    private zzfq f16541a;

    @Override // com.google.android.gms.measurement.internal.zzfr
    public final BroadcastReceiver.PendingResult doGoAsync() {
        return goAsync();
    }

    @Override // com.google.android.gms.measurement.internal.zzfr
    public final void doStartService(Context context, Intent intent) {
        startWakefulService(context, intent);
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        if (this.f16541a == null) {
            this.f16541a = new zzfq(this);
        }
        this.f16541a.zza(context, intent);
    }
}
