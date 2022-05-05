package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/abk.class */
public final class abk<E> extends zzdeu<E> {

    /* renamed from: a */
    static final zzdeu<Object> f7163a = new abk(new Object[0], 0);

    /* renamed from: b */
    private final transient Object[] f7164b;

    /* renamed from: c */
    private final transient int f7165c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public abk(Object[] objArr, int i) {
        this.f7164b = objArr;
        this.f7165c = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzdeu, com.google.android.gms.internal.ads.zzdet
    /* renamed from: a */
    public final int mo3592a(Object[] objArr, int i) {
        System.arraycopy(this.f7164b, 0, objArr, i, this.f7165c);
        return i + this.f7165c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzdet
    /* renamed from: a */
    public final Object[] mo3597a() {
        return this.f7164b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzdet
    /* renamed from: b */
    public final int mo3596b() {
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzdet
    /* renamed from: c */
    final int mo3595c() {
        return this.f7165c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzdet
    /* renamed from: d */
    public final boolean mo3594d() {
        return false;
    }

    @Override // java.util.List
    public final E get(int i) {
        zzdei.zzs(i, this.f7165c);
        return (E) this.f7164b[i];
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f7165c;
    }
}
