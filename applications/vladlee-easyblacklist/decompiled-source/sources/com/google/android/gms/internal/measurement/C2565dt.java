package com.google.android.gms.internal.measurement;

import java.util.Arrays;
import java.util.RandomAccess;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.measurement.dt */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/dt.class */
public final class C2565dt<E> extends AbstractC2507bp<E> implements RandomAccess {

    /* renamed from: a */
    private static final C2565dt<Object> f16007a;

    /* renamed from: b */
    private E[] f16008b;

    /* renamed from: c */
    private int f16009c;

    static {
        C2565dt<Object> dtVar = new C2565dt<>(new Object[0], 0);
        f16007a = dtVar;
        dtVar.mo2268h_();
    }

    C2565dt() {
        this(new Object[10], 0);
    }

    private C2565dt(E[] eArr, int i) {
        this.f16008b = eArr;
        this.f16009c = i;
    }

    /* renamed from: a */
    private final void m2744a(int i) {
        if (i < 0 || i >= this.f16009c) {
            throw new IndexOutOfBoundsException(m2742b(i));
        }
    }

    /* renamed from: b */
    public static <E> C2565dt<E> m2743b() {
        return (C2565dt<E>) f16007a;
    }

    /* renamed from: b */
    private final String m2742b(int i) {
        int i2 = this.f16009c;
        StringBuilder sb = new StringBuilder(35);
        sb.append("Index:");
        sb.append(i);
        sb.append(", Size:");
        sb.append(i2);
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2507bp, java.util.AbstractList, java.util.List
    public final void add(int i, E e) {
        int i2;
        m2916a();
        if (i < 0 || i > (i2 = this.f16009c)) {
            throw new IndexOutOfBoundsException(m2742b(i));
        }
        E[] eArr = this.f16008b;
        if (i2 < eArr.length) {
            System.arraycopy(eArr, i, eArr, i + 1, i2 - i);
        } else {
            E[] eArr2 = (E[]) new Object[((i2 * 3) / 2) + 1];
            System.arraycopy(eArr, 0, eArr2, 0, i);
            System.arraycopy(this.f16008b, i, eArr2, i + 1, this.f16009c - i);
            this.f16008b = eArr2;
        }
        this.f16008b[i] = e;
        this.f16009c++;
        this.modCount++;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2507bp, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(E e) {
        m2916a();
        int i = this.f16009c;
        E[] eArr = this.f16008b;
        if (i == eArr.length) {
            this.f16008b = (E[]) Arrays.copyOf(eArr, ((i * 3) / 2) + 1);
        }
        E[] eArr2 = this.f16008b;
        int i2 = this.f16009c;
        this.f16009c = i2 + 1;
        eArr2[i2] = e;
        this.modCount++;
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final E get(int i) {
        m2744a(i);
        return this.f16008b[i];
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2507bp, java.util.AbstractList, java.util.List
    public final E remove(int i) {
        m2916a();
        m2744a(i);
        E[] eArr = this.f16008b;
        E e = eArr[i];
        int i2 = this.f16009c;
        if (i < i2 - 1) {
            System.arraycopy(eArr, i + 1, eArr, i, (i2 - i) - 1);
        }
        this.f16009c--;
        this.modCount++;
        return e;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2507bp, java.util.AbstractList, java.util.List
    public final E set(int i, E e) {
        m2916a();
        m2744a(i);
        E[] eArr = this.f16008b;
        E e2 = eArr[i];
        eArr[i] = e;
        this.modCount++;
        return e2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f16009c;
    }

    @Override // com.google.android.gms.internal.measurement.zzfl
    public final /* synthetic */ zzfl zza(int i) {
        if (i >= this.f16009c) {
            return new C2565dt(Arrays.copyOf(this.f16008b, i), this.f16009c);
        }
        throw new IllegalArgumentException();
    }
}
