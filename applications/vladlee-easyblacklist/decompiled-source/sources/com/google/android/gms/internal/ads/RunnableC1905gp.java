package com.google.android.gms.internal.ads;
/* renamed from: com.google.android.gms.internal.ads.gp */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/gp.class */
final class RunnableC1905gp implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ int f8510a;

    /* renamed from: b */
    private final /* synthetic */ int f8511b;

    /* renamed from: c */
    private final /* synthetic */ zzazx f8512c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC1905gp(zzazx zzazxVar, int i, int i2) {
        this.f8512c = zzazxVar;
        this.f8510a = i;
        this.f8511b = i2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzbah zzbahVar;
        zzbah zzbahVar2;
        zzbahVar = this.f8512c.f11576r;
        if (zzbahVar != null) {
            zzbahVar2 = this.f8512c.f11576r;
            zzbahVar2.zzk(this.f8510a, this.f8511b);
        }
    }
}
