package com.google.android.gms.measurement;

import android.content.Context;
import android.content.Intent;
import androidx.legacy.content.WakefulBroadcastReceiver;
import com.google.android.gms.measurement.internal.zzfm;
import com.google.android.gms.measurement.internal.zzfp;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/AppMeasurementReceiver.class */
public final class AppMeasurementReceiver extends WakefulBroadcastReceiver implements zzfp {

    /* renamed from: c */
    public zzfm f29776c;

    @Override // com.google.android.gms.measurement.internal.zzfp
    /* renamed from: a */
    public final void mo9097a(Context context, Intent intent) {
        WakefulBroadcastReceiver.m38325b(context, intent);
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        if (this.f29776c == null) {
            this.f29776c = new zzfm(this);
        }
        this.f29776c.m9115a(context, intent);
    }
}
