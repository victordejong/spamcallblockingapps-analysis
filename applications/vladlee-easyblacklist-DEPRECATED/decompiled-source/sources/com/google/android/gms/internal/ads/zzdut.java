package com.google.android.gms.internal.ads;

import java.util.AbstractList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdut.class */
public final class zzdut extends AbstractList<String> implements zzdsl, RandomAccess {

    /* renamed from: a */
    private final zzdsl f14591a;

    public zzdut(zzdsl zzdslVar) {
        this.f14591a = zzdslVar;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        return (String) this.f14591a.get(i);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator<String> iterator() {
        return new akg(this);
    }

    @Override // java.util.AbstractList, java.util.List
    public final ListIterator<String> listIterator(int i) {
        return new akh(this, i);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f14591a.size();
    }

    @Override // com.google.android.gms.internal.ads.zzdsl
    public final List<?> zzbav() {
        return this.f14591a.zzbav();
    }

    @Override // com.google.android.gms.internal.ads.zzdsl
    public final zzdsl zzbaw() {
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzdsl
    public final void zzbg(zzdqk zzdqkVar) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.internal.ads.zzdsl
    public final Object zzgm(int i) {
        return this.f14591a.zzgm(i);
    }
}
