package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/alu.class */
public final class alu implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ zzei f7584a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public alu(zzei zzeiVar) {
        this.f7584a = zzeiVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzzn.initialize(this.f7584a.f14727a);
    }
}
