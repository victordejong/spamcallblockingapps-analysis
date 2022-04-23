package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/abq.class */
final class abq extends zzdeu<Object> {

    /* renamed from: a */
    private final transient Object[] f7183a;

    /* renamed from: b */
    private final transient int f7184b;

    /* renamed from: c */
    private final transient int f7185c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public abq(Object[] objArr, int i, int i2) {
        this.f7183a = objArr;
        this.f7184b = i;
        this.f7185c = i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzdet
    /* renamed from: d */
    public final boolean mo3594d() {
        return true;
    }

    @Override // java.util.List
    public final Object get(int i) {
        zzdei.zzs(i, this.f7185c);
        return this.f7183a[(i * 2) + this.f7184b];
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f7185c;
    }
}
