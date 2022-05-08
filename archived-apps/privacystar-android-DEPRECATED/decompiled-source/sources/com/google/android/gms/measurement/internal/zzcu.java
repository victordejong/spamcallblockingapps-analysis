package com.google.android.gms.measurement.internal;

import android.os.Bundle;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzcu.class */
public final class zzcu implements Runnable {
    private final /* synthetic */ String val$name;
    private final /* synthetic */ String zzaeh;
    private final /* synthetic */ boolean zzafg;
    private final /* synthetic */ String zzaqq;
    private final /* synthetic */ zzcs zzarc;
    private final /* synthetic */ long zzard;
    private final /* synthetic */ Bundle zzare;
    private final /* synthetic */ boolean zzarf;
    private final /* synthetic */ boolean zzarg;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzcu(zzcs zzcsVar, String str, String str2, long j, Bundle bundle, boolean z, boolean z2, boolean z3, String str3) {
        this.zzarc = zzcsVar;
        this.zzaeh = str;
        this.val$name = str2;
        this.zzard = j;
        this.zzare = bundle;
        this.zzafg = z;
        this.zzarf = z2;
        this.zzarg = z3;
        this.zzaqq = str3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzarc.zza(this.zzaeh, this.val$name, this.zzard, this.zzare, this.zzafg, this.zzarf, this.zzarg, this.zzaqq);
    }
}
