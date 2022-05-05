package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/amq.class */
public final class amq implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ int f7693a;

    /* renamed from: b */
    private final /* synthetic */ zzhr f7694b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public amq(zzhr zzhrVar, int i) {
        this.f7694b = zzhrVar;
        this.f7693a = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzho zzhoVar;
        zzhoVar = this.f7694b.f14850b;
        zzhoVar.zzr(this.f7693a);
    }
}
