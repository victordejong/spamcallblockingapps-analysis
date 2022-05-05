package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/amo.class */
public final class amo implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ zzit f7687a;

    /* renamed from: b */
    private final /* synthetic */ zzhr f7688b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public amo(zzhr zzhrVar, zzit zzitVar) {
        this.f7688b = zzhrVar;
        this.f7687a = zzitVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzho zzhoVar;
        this.f7687a.zzge();
        zzhoVar = this.f7688b.f14850b;
        zzhoVar.zzb(this.f7687a);
    }
}
