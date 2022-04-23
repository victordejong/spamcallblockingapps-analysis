package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/apj.class */
public final class apj implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ zzit f8119a;

    /* renamed from: b */
    private final /* synthetic */ zzpg f8120b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public apj(zzpg zzpgVar, zzit zzitVar) {
        this.f8120b = zzpgVar;
        this.f8119a = zzitVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzpd zzpdVar;
        this.f8119a.zzge();
        zzpdVar = this.f8120b.f15314b;
        zzpdVar.zzf(this.f8119a);
    }
}
