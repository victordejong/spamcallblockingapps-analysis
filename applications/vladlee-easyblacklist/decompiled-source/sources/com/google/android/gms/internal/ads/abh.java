package com.google.android.gms.internal.ads;

import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/abh.class */
public final class abh extends zzdeu<E> {

    /* renamed from: a */
    private final transient int f7157a;

    /* renamed from: b */
    private final transient int f7158b;

    /* renamed from: c */
    private final /* synthetic */ zzdeu f7159c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public abh(zzdeu zzdeuVar, int i, int i2) {
        this.f7159c = zzdeuVar;
        this.f7157a = i;
        this.f7158b = i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzdet
    /* renamed from: a */
    public final Object[] mo3597a() {
        return this.f7159c.mo3597a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzdet
    /* renamed from: b */
    public final int mo3596b() {
        return this.f7159c.mo3596b() + this.f7157a;
    }

    @Override // com.google.android.gms.internal.ads.zzdet
    /* renamed from: c */
    final int mo3595c() {
        return this.f7159c.mo3596b() + this.f7157a + this.f7158b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzdet
    /* renamed from: d */
    public final boolean mo3594d() {
        return true;
    }

    @Override // java.util.List
    public final E get(int i) {
        zzdei.zzs(i, this.f7158b);
        return this.f7159c.get(i + this.f7157a);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f7158b;
    }

    @Override // com.google.android.gms.internal.ads.zzdeu, java.util.List
    public final /* synthetic */ List subList(int i, int i2) {
        return subList(i, i2);
    }

    @Override // com.google.android.gms.internal.ads.zzdeu
    public final zzdeu<E> zzu(int i, int i2) {
        zzdei.zzf(i, i2, this.f7158b);
        zzdeu zzdeuVar = this.f7159c;
        int i3 = this.f7157a;
        return (zzdeu) zzdeuVar.subList(i + i3, i2 + i3);
    }
}
