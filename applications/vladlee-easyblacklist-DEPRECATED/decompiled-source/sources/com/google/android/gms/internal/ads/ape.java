package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ape.class */
public final class ape implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ zzit f8103a;

    /* renamed from: b */
    private final /* synthetic */ zzpg f8104b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ape(zzpg zzpgVar, zzit zzitVar) {
        this.f8104b = zzpgVar;
        this.f8103a = zzitVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzpd zzpdVar;
        zzpdVar = this.f8104b.f15314b;
        zzpdVar.zze(this.f8103a);
    }
}
