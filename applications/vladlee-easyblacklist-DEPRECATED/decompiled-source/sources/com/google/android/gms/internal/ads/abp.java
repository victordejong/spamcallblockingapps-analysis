package com.google.android.gms.internal.ads;

import java.util.Iterator;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/abp.class */
public final class abp<E> extends zzdfb<E> {

    /* renamed from: a */
    static final abp<Object> f7177a = new abp<>(new Object[0], 0, null, 0, 0);

    /* renamed from: b */
    private final transient Object[] f7178b;

    /* renamed from: c */
    private final transient Object[] f7179c;

    /* renamed from: d */
    private final transient int f7180d;

    /* renamed from: e */
    private final transient int f7181e;

    /* renamed from: f */
    private final transient int f7182f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public abp(Object[] objArr, int i, Object[] objArr2, int i2, int i3) {
        this.f7178b = objArr;
        this.f7179c = objArr2;
        this.f7180d = i2;
        this.f7181e = i;
        this.f7182f = i3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzdet
    /* renamed from: a */
    public final int mo3592a(Object[] objArr, int i) {
        System.arraycopy(this.f7178b, 0, objArr, i, this.f7182f);
        return i + this.f7182f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzdet
    /* renamed from: a */
    public final Object[] mo3597a() {
        return this.f7178b;
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
        return this.f7182f;
    }

    @Override // com.google.android.gms.internal.ads.zzdet, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(@NullableDecl Object obj) {
        Object[] objArr = this.f7179c;
        if (obj == null || objArr == null) {
            return false;
        }
        int a = abe.m5499a(obj == null ? 0 : obj.hashCode());
        while (true) {
            int i = a & this.f7180d;
            Object obj2 = objArr[i];
            if (obj2 == null) {
                return false;
            }
            if (obj2.equals(obj)) {
                return true;
            }
            a = i + 1;
        }
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
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzdfb
    /* renamed from: f */
    final zzdeu<E> mo3581f() {
        return zzdeu.m3591b(this.f7178b, this.f7182f);
    }

    @Override // com.google.android.gms.internal.ads.zzdfb, java.util.Collection, java.util.Set
    public final int hashCode() {
        return this.f7181e;
    }

    @Override // com.google.android.gms.internal.ads.zzdfb, com.google.android.gms.internal.ads.zzdet, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final /* synthetic */ Iterator iterator() {
        return iterator();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.f7182f;
    }

    @Override // com.google.android.gms.internal.ads.zzdet
    public final zzdfp<E> zzaqx() {
        return (zzdfp) zzarb().iterator();
    }
}
