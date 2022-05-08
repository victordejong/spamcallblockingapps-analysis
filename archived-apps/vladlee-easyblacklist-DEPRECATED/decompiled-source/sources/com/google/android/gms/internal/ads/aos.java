package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/aos.class */
final class aos implements zzmo {

    /* renamed from: a */
    private final int f8046a;

    /* renamed from: b */
    private final /* synthetic */ aol f8047b;

    public aos(aol aolVar, int i) {
        this.f8047b = aolVar;
        this.f8046a = i;
    }

    @Override // com.google.android.gms.internal.ads.zzmo
    public final boolean isReady() {
        return this.f8047b.m4814a(this.f8046a);
    }

    @Override // com.google.android.gms.internal.ads.zzmo
    public final int zzb(zzgy zzgyVar, zzis zzisVar, boolean z) {
        return this.f8047b.m4812a(this.f8046a, zzgyVar, zzisVar, z);
    }

    @Override // com.google.android.gms.internal.ads.zzmo
    public final void zzeh(long j) {
        this.f8047b.m4813a(this.f8046a, j);
    }

    @Override // com.google.android.gms.internal.ads.zzmo
    public final void zzhk() {
        this.f8047b.m4809b();
    }
}
