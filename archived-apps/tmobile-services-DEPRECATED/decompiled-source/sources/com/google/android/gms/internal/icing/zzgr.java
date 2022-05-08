package com.google.android.gms.internal.icing;

import java.util.AbstractList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzgr.class */
public final class zzgr extends AbstractList<String> implements zzeo, RandomAccess {

    /* renamed from: f */
    private final zzeo f8101f;

    public zzgr(zzeo zzeoVar) {
        this.f8101f = zzeoVar;
    }

    @Override // com.google.android.gms.internal.icing.zzeo
    /* renamed from: L */
    public final List<?> mo13598L() {
        return this.f8101f.mo13598L();
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        return (String) this.f8101f.get(i);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator<String> iterator() {
        return new zzgt(this);
    }

    @Override // java.util.AbstractList, java.util.List
    public final ListIterator<String> listIterator(int i) {
        return new zzgq(this, i);
    }

    @Override // com.google.android.gms.internal.icing.zzeo
    /* renamed from: m */
    public final Object mo13596m(int i) {
        return this.f8101f.mo13596m(i);
    }

    @Override // com.google.android.gms.internal.icing.zzeo
    /* renamed from: o */
    public final zzeo mo13595o() {
        return this;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f8101f.size();
    }
}
