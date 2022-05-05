package com.google.android.gms.internal.ads;

import android.view.Surface;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/apk.class */
public final class apk implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ Surface f8121a;

    /* renamed from: b */
    private final /* synthetic */ zzpg f8122b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public apk(zzpg zzpgVar, Surface surface) {
        this.f8122b = zzpgVar;
        this.f8121a = surface;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzpd zzpdVar;
        zzpdVar = this.f8122b.f15314b;
        zzpdVar.zza(this.f8121a);
    }
}
