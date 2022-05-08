package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/aom.class */
public final class aom implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ aol f8027a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public aom(aol aolVar) {
        this.f8027a = aolVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean z;
        zzmc zzmcVar;
        z = this.f8027a.f8000H;
        if (!z) {
            zzmcVar = this.f8027a.f8017q;
            zzmcVar.zza((zzmc) this.f8027a);
        }
    }
}
