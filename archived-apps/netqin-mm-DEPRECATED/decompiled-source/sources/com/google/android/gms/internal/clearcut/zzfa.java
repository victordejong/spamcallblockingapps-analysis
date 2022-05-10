package com.google.android.gms.internal.clearcut;

import java.util.AbstractList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
import p131c.p161d.p170b.p224d.p252g.p255c.C4358i2;
import p131c.p161d.p170b.p224d.p252g.p255c.C4363j2;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/clearcut/zzfa.class */
public final class zzfa extends AbstractList<String> implements zzcx, RandomAccess {

    /* renamed from: a */
    public final zzcx f29276a;

    public zzfa(zzcx zzcxVar) {
        this.f29276a = zzcxVar;
    }

    @Override // com.google.android.gms.internal.clearcut.zzcx
    /* renamed from: d */
    public final Object mo10660d(int i) {
        return this.f29276a.mo10660d(i);
    }

    @Override // com.google.android.gms.internal.clearcut.zzcx
    /* renamed from: e */
    public final List<?> mo10659e() {
        return this.f29276a.mo10659e();
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        return (String) this.f29276a.get(i);
    }

    @Override // com.google.android.gms.internal.clearcut.zzcx
    /* renamed from: h */
    public final zzcx mo10658h() {
        return this;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator<String> iterator() {
        return new C4363j2(this);
    }

    @Override // java.util.AbstractList, java.util.List
    public final ListIterator<String> listIterator(int i) {
        return new C4358i2(this, i);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f29276a.size();
    }
}
