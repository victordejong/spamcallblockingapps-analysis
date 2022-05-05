package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.RandomAccess;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ajg.class */
public final class ajg<E> extends ahb<E> implements RandomAccess {

    /* renamed from: a */
    private static final ajg<Object> f7469a;

    /* renamed from: b */
    private E[] f7470b;

    /* renamed from: c */
    private int f7471c;

    static {
        ajg<Object> ajgVar = new ajg<>(new Object[0], 0);
        f7469a = ajgVar;
        ajgVar.zzaxq();
    }

    ajg() {
        this(new Object[10], 0);
    }

    private ajg(E[] eArr, int i) {
        this.f7470b = eArr;
        this.f7471c = i;
    }

    /* renamed from: a */
    private final void m5242a(int i) {
        if (i < 0 || i >= this.f7471c) {
            throw new IndexOutOfBoundsException(m5240b(i));
        }
    }

    /* renamed from: b */
    public static <E> ajg<E> m5241b() {
        return (ajg<E>) f7469a;
    }

    /* renamed from: b */
    private final String m5240b(int i) {
        int i2 = this.f7471c;
        StringBuilder sb = new StringBuilder(35);
        sb.append("Index:");
        sb.append(i);
        sb.append(", Size:");
        sb.append(i2);
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.ads.ahb, java.util.AbstractList, java.util.List
    public final void add(int i, E e) {
        int i2;
        m5424a();
        if (i < 0 || i > (i2 = this.f7471c)) {
            throw new IndexOutOfBoundsException(m5240b(i));
        }
        E[] eArr = this.f7470b;
        if (i2 < eArr.length) {
            System.arraycopy(eArr, i, eArr, i + 1, i2 - i);
        } else {
            E[] eArr2 = (E[]) new Object[((i2 * 3) / 2) + 1];
            System.arraycopy(eArr, 0, eArr2, 0, i);
            System.arraycopy(this.f7470b, i, eArr2, i + 1, this.f7471c - i);
            this.f7470b = eArr2;
        }
        this.f7470b[i] = e;
        this.f7471c++;
        this.modCount++;
    }

    @Override // com.google.android.gms.internal.ads.ahb, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(E e) {
        m5424a();
        int i = this.f7471c;
        E[] eArr = this.f7470b;
        if (i == eArr.length) {
            this.f7470b = (E[]) Arrays.copyOf(eArr, ((i * 3) / 2) + 1);
        }
        E[] eArr2 = this.f7470b;
        int i2 = this.f7471c;
        this.f7471c = i2 + 1;
        eArr2[i2] = e;
        this.modCount++;
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final E get(int i) {
        m5242a(i);
        return this.f7470b[i];
    }

    @Override // com.google.android.gms.internal.ads.ahb, java.util.AbstractList, java.util.List
    public final E remove(int i) {
        m5424a();
        m5242a(i);
        E[] eArr = this.f7470b;
        E e = eArr[i];
        int i2 = this.f7471c;
        if (i < i2 - 1) {
            System.arraycopy(eArr, i + 1, eArr, i, (i2 - i) - 1);
        }
        this.f7471c--;
        this.modCount++;
        return e;
    }

    @Override // com.google.android.gms.internal.ads.ahb, java.util.AbstractList, java.util.List
    public final E set(int i, E e) {
        m5424a();
        m5242a(i);
        E[] eArr = this.f7470b;
        E e2 = eArr[i];
        eArr[i] = e;
        this.modCount++;
        return e2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f7471c;
    }

    @Override // com.google.android.gms.internal.ads.zzdsb
    public final /* synthetic */ zzdsb zzfd(int i) {
        if (i >= this.f7471c) {
            return new ajg(Arrays.copyOf(this.f7470b, i), this.f7471c);
        }
        throw new IllegalArgumentException();
    }
}
