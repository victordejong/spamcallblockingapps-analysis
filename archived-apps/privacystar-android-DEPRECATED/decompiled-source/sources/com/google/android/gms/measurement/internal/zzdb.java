package com.google.android.gms.measurement.internal;

import com.google.android.gms.measurement.AppMeasurement;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzdb.class */
public final class zzdb implements Runnable {
    private final /* synthetic */ zzcs zzarc;
    private final /* synthetic */ AppMeasurement.ConditionalUserProperty zzarj;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzdb(zzcs zzcsVar, AppMeasurement.ConditionalUserProperty conditionalUserProperty) {
        this.zzarc = zzcsVar;
        this.zzarj = conditionalUserProperty;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzarc.zzc(this.zzarj);
    }
}
