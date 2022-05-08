package com.google.android.gms.internal.measurement;

import com.google.android.gms.common.api.Api;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zziv.class */
public final class zziv extends zzgl<Long> implements zzif, zzjt, RandomAccess {

    /* renamed from: i */
    private static final zziv f8544i;

    /* renamed from: g */
    private long[] f8545g;

    /* renamed from: h */
    private int f8546h;

    static {
        zziv zzivVar = new zziv(new long[0], 0);
        f8544i = zzivVar;
        zzivVar.zzb();
    }

    zziv() {
        this(new long[10], 0);
    }

    private zziv(long[] jArr, int i) {
        this.f8545g = jArr;
        this.f8546h = i;
    }

    /* renamed from: e */
    public static zziv m12363e() {
        return f8544i;
    }

    /* renamed from: f */
    private final void m12362f(int i) {
        if (i < 0 || i >= this.f8546h) {
            throw new IndexOutOfBoundsException(m12361g(i));
        }
    }

    /* renamed from: g */
    private final String m12361g(int i) {
        int i2 = this.f8546h;
        StringBuilder sb = new StringBuilder(35);
        sb.append("Index:");
        sb.append(i);
        sb.append(", Size:");
        sb.append(i2);
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.measurement.zzif
    /* renamed from: J */
    public final zzif mo12266a(int i) {
        if (i >= this.f8546h) {
            return new zziv(Arrays.copyOf(this.f8545g, i), this.f8546h);
        }
        throw new IllegalArgumentException();
    }

    @Override // com.google.android.gms.internal.measurement.zzgl, java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i, Object obj) {
        int i2;
        long longValue = ((Long) obj).longValue();
        m12656c();
        if (i < 0 || i > (i2 = this.f8546h)) {
            throw new IndexOutOfBoundsException(m12361g(i));
        }
        long[] jArr = this.f8545g;
        if (i2 < jArr.length) {
            System.arraycopy(jArr, i, jArr, i + 1, i2 - i);
        } else {
            long[] jArr2 = new long[((i2 * 3) / 2) + 1];
            System.arraycopy(jArr, 0, jArr2, 0, i);
            System.arraycopy(this.f8545g, i, jArr2, i + 1, this.f8546h - i);
            this.f8545g = jArr2;
        }
        this.f8545g[i] = longValue;
        this.f8546h++;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.measurement.zzgl, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* synthetic */ boolean add(Object obj) {
        m12364d(((Long) obj).longValue());
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.zzgl, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Long> collection) {
        m12656c();
        zzic.m12394d(collection);
        if (!(collection instanceof zziv)) {
            return super.addAll(collection);
        }
        zziv zzivVar = (zziv) collection;
        int i = zzivVar.f8546h;
        if (i == 0) {
            return false;
        }
        int i2 = this.f8546h;
        if (Api.BaseClientBuilder.API_PRIORITY_OTHER - i2 >= i) {
            int i3 = i2 + i;
            long[] jArr = this.f8545g;
            if (i3 > jArr.length) {
                this.f8545g = Arrays.copyOf(jArr, i3);
            }
            System.arraycopy(zzivVar.f8545g, 0, this.f8545g, this.f8546h, zzivVar.f8546h);
            this.f8546h = i3;
            ((AbstractList) this).modCount++;
            return true;
        }
        throw new OutOfMemoryError();
    }

    @Override // com.google.android.gms.internal.measurement.zzif
    /* renamed from: b */
    public final long mo12365b(int i) {
        m12362f(i);
        return this.f8545g[i];
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    /* renamed from: d */
    public final void m12364d(long j) {
        m12656c();
        int i = this.f8546h;
        long[] jArr = this.f8545g;
        if (i == jArr.length) {
            long[] jArr2 = new long[((i * 3) / 2) + 1];
            System.arraycopy(jArr, 0, jArr2, 0, i);
            this.f8545g = jArr2;
        }
        long[] jArr3 = this.f8545g;
        int i2 = this.f8546h;
        this.f8546h = i2 + 1;
        jArr3[i2] = j;
    }

    @Override // com.google.android.gms.internal.measurement.zzgl, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zziv)) {
            return super.equals(obj);
        }
        zziv zzivVar = (zziv) obj;
        if (this.f8546h != zzivVar.f8546h) {
            return false;
        }
        long[] jArr = zzivVar.f8545g;
        for (int i = 0; i < this.f8546h; i++) {
            if (this.f8545g[i] != jArr[i]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        return Long.valueOf(mo12365b(i));
    }

    @Override // com.google.android.gms.internal.measurement.zzgl, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.f8546h; i2++) {
            i = (i * 31) + zzic.m12396b(this.f8545g[i2]);
        }
        return i;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Long)) {
            return -1;
        }
        long longValue = ((Long) obj).longValue();
        int size = size();
        for (int i = 0; i < size; i++) {
            if (this.f8545g[i] == longValue) {
                return i;
            }
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.measurement.zzgl, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i) {
        m12656c();
        m12362f(i);
        long[] jArr = this.f8545g;
        long j = jArr[i];
        int i2 = this.f8546h;
        if (i < i2 - 1) {
            System.arraycopy(jArr, i + 1, jArr, i, (i2 - i) - 1);
        }
        this.f8546h--;
        ((AbstractList) this).modCount++;
        return Long.valueOf(j);
    }

    @Override // java.util.AbstractList
    protected final void removeRange(int i, int i2) {
        m12656c();
        if (i2 >= i) {
            long[] jArr = this.f8545g;
            System.arraycopy(jArr, i2, jArr, i, this.f8546h - i2);
            this.f8546h -= i2 - i;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    @Override // com.google.android.gms.internal.measurement.zzgl, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i, Object obj) {
        long longValue = ((Long) obj).longValue();
        m12656c();
        m12362f(i);
        long[] jArr = this.f8545g;
        long j = jArr[i];
        jArr[i] = longValue;
        return Long.valueOf(j);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f8546h;
    }
}
