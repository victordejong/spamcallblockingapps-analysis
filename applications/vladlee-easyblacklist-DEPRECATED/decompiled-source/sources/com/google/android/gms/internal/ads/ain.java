package com.google.android.gms.internal.ads;

import com.google.android.gms.common.api.Api;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ain.class */
final class ain extends ahb<Long> implements aje, zzdsb<Long>, RandomAccess {

    /* renamed from: a */
    private static final ain f7425a;

    /* renamed from: b */
    private long[] f7426b;

    /* renamed from: c */
    private int f7427c;

    static {
        ain ainVar = new ain(new long[0], 0);
        f7425a = ainVar;
        ainVar.zzaxq();
    }

    ain() {
        this(new long[10], 0);
    }

    private ain(long[] jArr, int i) {
        this.f7426b = jArr;
        this.f7427c = i;
    }

    /* renamed from: b */
    private final void m5311b(int i) {
        if (i < 0 || i >= this.f7427c) {
            throw new IndexOutOfBoundsException(m5310c(i));
        }
    }

    /* renamed from: c */
    private final String m5310c(int i) {
        int i2 = this.f7427c;
        StringBuilder sb = new StringBuilder(35);
        sb.append("Index:");
        sb.append(i);
        sb.append(", Size:");
        sb.append(i2);
        return sb.toString();
    }

    /* renamed from: a */
    public final long m5313a(int i) {
        m5311b(i);
        return this.f7426b[i];
    }

    /* renamed from: a */
    public final void m5312a(long j) {
        m5424a();
        int i = this.f7427c;
        long[] jArr = this.f7426b;
        if (i == jArr.length) {
            long[] jArr2 = new long[((i * 3) / 2) + 1];
            System.arraycopy(jArr, 0, jArr2, 0, i);
            this.f7426b = jArr2;
        }
        long[] jArr3 = this.f7426b;
        int i2 = this.f7427c;
        this.f7427c = i2 + 1;
        jArr3[i2] = j;
    }

    @Override // com.google.android.gms.internal.ads.ahb, java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i, Object obj) {
        int i2;
        long longValue = ((Long) obj).longValue();
        m5424a();
        if (i < 0 || i > (i2 = this.f7427c)) {
            throw new IndexOutOfBoundsException(m5310c(i));
        }
        long[] jArr = this.f7426b;
        if (i2 < jArr.length) {
            System.arraycopy(jArr, i, jArr, i + 1, i2 - i);
        } else {
            long[] jArr2 = new long[((i2 * 3) / 2) + 1];
            System.arraycopy(jArr, 0, jArr2, 0, i);
            System.arraycopy(this.f7426b, i, jArr2, i + 1, this.f7427c - i);
            this.f7426b = jArr2;
        }
        this.f7426b[i] = longValue;
        this.f7427c++;
        this.modCount++;
    }

    @Override // com.google.android.gms.internal.ads.ahb, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* synthetic */ boolean add(Object obj) {
        m5312a(((Long) obj).longValue());
        return true;
    }

    @Override // com.google.android.gms.internal.ads.ahb, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Long> collection) {
        m5424a();
        zzdrv.m3351a(collection);
        if (!(collection instanceof ain)) {
            return super.addAll(collection);
        }
        ain ainVar = (ain) collection;
        int i = ainVar.f7427c;
        if (i == 0) {
            return false;
        }
        int i2 = this.f7427c;
        if (Api.BaseClientBuilder.API_PRIORITY_OTHER - i2 >= i) {
            int i3 = i2 + i;
            long[] jArr = this.f7426b;
            if (i3 > jArr.length) {
                this.f7426b = Arrays.copyOf(jArr, i3);
            }
            System.arraycopy(ainVar.f7426b, 0, this.f7426b, this.f7427c, ainVar.f7427c);
            this.f7427c = i3;
            this.modCount++;
            return true;
        }
        throw new OutOfMemoryError();
    }

    @Override // com.google.android.gms.internal.ads.ahb, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ain)) {
            return super.equals(obj);
        }
        ain ainVar = (ain) obj;
        if (this.f7427c != ainVar.f7427c) {
            return false;
        }
        long[] jArr = ainVar.f7426b;
        for (int i = 0; i < this.f7427c; i++) {
            if (this.f7426b[i] != jArr[i]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        return Long.valueOf(m5313a(i));
    }

    @Override // com.google.android.gms.internal.ads.ahb, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.f7427c; i2++) {
            i = (i * 31) + zzdrv.zzfq(this.f7426b[i2]);
        }
        return i;
    }

    @Override // com.google.android.gms.internal.ads.ahb, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i) {
        m5424a();
        m5311b(i);
        long[] jArr = this.f7426b;
        long j = jArr[i];
        int i2 = this.f7427c;
        if (i < i2 - 1) {
            System.arraycopy(jArr, i + 1, jArr, i, (i2 - i) - 1);
        }
        this.f7427c--;
        this.modCount++;
        return Long.valueOf(j);
    }

    @Override // com.google.android.gms.internal.ads.ahb, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        m5424a();
        for (int i = 0; i < this.f7427c; i++) {
            if (obj.equals(Long.valueOf(this.f7426b[i]))) {
                long[] jArr = this.f7426b;
                System.arraycopy(jArr, i + 1, jArr, i, (this.f7427c - i) - 1);
                this.f7427c--;
                this.modCount++;
                return true;
            }
        }
        return false;
    }

    @Override // java.util.AbstractList
    protected final void removeRange(int i, int i2) {
        m5424a();
        if (i2 >= i) {
            long[] jArr = this.f7426b;
            System.arraycopy(jArr, i2, jArr, i, this.f7427c - i2);
            this.f7427c -= i2 - i;
            this.modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    @Override // com.google.android.gms.internal.ads.ahb, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i, Object obj) {
        long longValue = ((Long) obj).longValue();
        m5424a();
        m5311b(i);
        long[] jArr = this.f7426b;
        long j = jArr[i];
        jArr[i] = longValue;
        return Long.valueOf(j);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f7427c;
    }

    @Override // com.google.android.gms.internal.ads.zzdsb
    public final /* synthetic */ zzdsb<Long> zzfd(int i) {
        if (i >= this.f7427c) {
            return new ain(Arrays.copyOf(this.f7426b, i), this.f7427c);
        }
        throw new IllegalArgumentException();
    }
}
