package com.google.android.gms.measurement;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.google.android.gms.measurement.internal.zzfq;
import com.google.android.gms.measurement.internal.zzfr;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/AppMeasurementInstallReferrerReceiver.class */
public final class AppMeasurementInstallReferrerReceiver extends BroadcastReceiver implements zzfr {

    /* renamed from: a */
    private zzfq f16539a;

    @Override // com.google.android.gms.measurement.internal.zzfr
    public final BroadcastReceiver.PendingResult doGoAsync() {
        return goAsync();
    }

    @Override // com.google.android.gms.measurement.internal.zzfr
    public final void doStartService(Context context, Intent intent) {
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        if (this.f16539a == null) {
            this.f16539a = new zzfq(this);
        }
        this.f16539a.zza(context, intent);
    }
}
