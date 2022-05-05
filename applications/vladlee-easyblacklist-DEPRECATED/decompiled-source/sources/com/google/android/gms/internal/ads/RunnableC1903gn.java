package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.ads.gn */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/gn.class */
public final class RunnableC1903gn implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ String f8506a;

    /* renamed from: b */
    private final /* synthetic */ String f8507b;

    /* renamed from: c */
    private final /* synthetic */ zzazx f8508c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC1903gn(zzazx zzazxVar, String str, String str2) {
        this.f8508c = zzazxVar;
        this.f8506a = str;
        this.f8507b = str2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzbah zzbahVar;
        zzbah zzbahVar2;
        zzbahVar = this.f8508c.f11576r;
        if (zzbahVar != null) {
            zzbahVar2 = this.f8508c.f11576r;
            zzbahVar2.zzm(this.f8506a, this.f8507b);
        }
    }
}
