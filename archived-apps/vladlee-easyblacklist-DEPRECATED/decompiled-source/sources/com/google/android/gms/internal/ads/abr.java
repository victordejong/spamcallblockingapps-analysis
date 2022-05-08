package com.google.android.gms.internal.ads;

import java.util.Iterator;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/abr.class */
public final class abr<E> extends zzdfb<E> {

    /* renamed from: a */
    private final transient E f7186a;

    /* renamed from: b */
    private transient int f7187b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public abr(E e) {
        this.f7186a = (E) zzdei.checkNotNull(e);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abr(E e, int i) {
        this.f7186a = e;
        this.f7187b = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzdet
    /* renamed from: a */
    public final int mo3592a(Object[] objArr, int i) {
        objArr[i] = this.f7186a;
        return i + 1;
    }

    @Override // com.google.android.gms.internal.ads.zzdet, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        return this.f7186a.equals(obj);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzdet
    /* renamed from: d */
    public final boolean mo3594d() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzdfb
    /* renamed from: e */
    final boolean mo3582e() {
        return this.f7187b != 0;
    }

    @Override // com.google.android.gms.internal.ads.zzdfb
    /* renamed from: f */
    final zzdeu<E> mo3581f() {
        return zzdeu.zzaf(this.f7186a);
    }

    @Override // com.google.android.gms.internal.ads.zzdfb, java.util.Collection, java.util.Set
    public final int hashCode() {
        int i = this.f7187b;
        int i2 = i;
        if (i == 0) {
            i2 = this.f7186a.hashCode();
            this.f7187b = i2;
        }
        return i2;
    }

    @Override // com.google.android.gms.internal.ads.zzdfb, com.google.android.gms.internal.ads.zzdet, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final /* synthetic */ Iterator iterator() {
        return iterator();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return 1;
    }

    @Override // java.util.AbstractCollection
    public final String toString() {
        String obj = this.f7186a.toString();
        StringBuilder sb = new StringBuilder(String.valueOf(obj).length() + 2);
        sb.append('[');
        sb.append(obj);
        sb.append(']');
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.ads.zzdet
    public final zzdfp<E> zzaqx() {
        return new abj(this.f7186a);
    }
}
