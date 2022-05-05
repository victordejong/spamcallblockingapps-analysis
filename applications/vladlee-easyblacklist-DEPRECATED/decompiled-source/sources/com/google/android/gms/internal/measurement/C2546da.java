package com.google.android.gms.internal.measurement;

import com.google.android.gms.common.api.Api;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.measurement.da */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/da.class */
public final class C2546da extends AbstractC2507bp<Long> implements AbstractC2563dr, zzfm, RandomAccess {

    /* renamed from: a */
    private static final C2546da f15964a;

    /* renamed from: b */
    private long[] f15965b;

    /* renamed from: c */
    private int f15966c;

    static {
        C2546da daVar = new C2546da(new long[0], 0);
        f15964a = daVar;
        daVar.mo2268h_();
    }

    C2546da() {
        this(new long[10], 0);
    }

    private C2546da(long[] jArr, int i) {
        this.f15965b = jArr;
        this.f15966c = i;
    }

    /* renamed from: a */
    private final void m2813a(int i) {
        if (i < 0 || i >= this.f15966c) {
            throw new IndexOutOfBoundsException(m2811b(i));
        }
    }

    /* renamed from: b */
    public static C2546da m2812b() {
        return f15964a;
    }

    /* renamed from: b */
    private final String m2811b(int i) {
        int i2 = this.f15966c;
        StringBuilder sb = new StringBuilder(35);
        sb.append("Index:");
        sb.append(i);
        sb.append(", Size:");
        sb.append(i2);
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2507bp, java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i, Object obj) {
        int i2;
        long longValue = ((Long) obj).longValue();
        m2916a();
        if (i < 0 || i > (i2 = this.f15966c)) {
            throw new IndexOutOfBoundsException(m2811b(i));
        }
        long[] jArr = this.f15965b;
        if (i2 < jArr.length) {
            System.arraycopy(jArr, i, jArr, i + 1, i2 - i);
        } else {
            long[] jArr2 = new long[((i2 * 3) / 2) + 1];
            System.arraycopy(jArr, 0, jArr2, 0, i);
            System.arraycopy(this.f15965b, i, jArr2, i + 1, this.f15966c - i);
            this.f15965b = jArr2;
        }
        this.f15965b[i] = longValue;
        this.f15966c++;
        this.modCount++;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2507bp, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* synthetic */ boolean add(Object obj) {
        zza(((Long) obj).longValue());
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2507bp, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Long> collection) {
        m2916a();
        zzff.m2271a(collection);
        if (!(collection instanceof C2546da)) {
            return super.addAll(collection);
        }
        C2546da daVar = (C2546da) collection;
        int i = daVar.f15966c;
        if (i == 0) {
            return false;
        }
        int i2 = this.f15966c;
        if (Api.BaseClientBuilder.API_PRIORITY_OTHER - i2 >= i) {
            int i3 = i2 + i;
            long[] jArr = this.f15965b;
            if (i3 > jArr.length) {
                this.f15965b = Arrays.copyOf(jArr, i3);
            }
            System.arraycopy(daVar.f15965b, 0, this.f15965b, this.f15966c, daVar.f15966c);
            this.f15966c = i3;
            this.modCount++;
            return true;
        }
        throw new OutOfMemoryError();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2507bp, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C2546da)) {
            return super.equals(obj);
        }
        C2546da daVar = (C2546da) obj;
        if (this.f15966c != daVar.f15966c) {
            return false;
        }
        long[] jArr = daVar.f15965b;
        for (int i = 0; i < this.f15966c; i++) {
            if (this.f15965b[i] != jArr[i]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        return Long.valueOf(zzb(i));
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2507bp, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.f15966c; i2++) {
            i = (i * 31) + zzff.zza(this.f15965b[i2]);
        }
        return i;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2507bp, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i) {
        m2916a();
        m2813a(i);
        long[] jArr = this.f15965b;
        long j = jArr[i];
        int i2 = this.f15966c;
        if (i < i2 - 1) {
            System.arraycopy(jArr, i + 1, jArr, i, (i2 - i) - 1);
        }
        this.f15966c--;
        this.modCount++;
        return Long.valueOf(j);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2507bp, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        m2916a();
        for (int i = 0; i < this.f15966c; i++) {
            if (obj.equals(Long.valueOf(this.f15965b[i]))) {
                long[] jArr = this.f15965b;
                System.arraycopy(jArr, i + 1, jArr, i, (this.f15966c - i) - 1);
                this.f15966c--;
                this.modCount++;
                return true;
            }
        }
        return false;
    }

    @Override // java.util.AbstractList
    protected final void removeRange(int i, int i2) {
        m2916a();
        if (i2 >= i) {
            long[] jArr = this.f15965b;
            System.arraycopy(jArr, i2, jArr, i, this.f15966c - i2);
            this.f15966c -= i2 - i;
            this.modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2507bp, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i, Object obj) {
        long longValue = ((Long) obj).longValue();
        m2916a();
        m2813a(i);
        long[] jArr = this.f15965b;
        long j = jArr[i];
        jArr[i] = longValue;
        return Long.valueOf(j);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f15966c;
    }

    @Override // com.google.android.gms.internal.measurement.zzfm
    public final void zza(long j) {
        m2916a();
        int i = this.f15966c;
        long[] jArr = this.f15965b;
        if (i == jArr.length) {
            long[] jArr2 = new long[((i * 3) / 2) + 1];
            System.arraycopy(jArr, 0, jArr2, 0, i);
            this.f15965b = jArr2;
        }
        long[] jArr3 = this.f15965b;
        int i2 = this.f15966c;
        this.f15966c = i2 + 1;
        jArr3[i2] = j;
    }

    @Override // com.google.android.gms.internal.measurement.zzfm
    public final long zzb(int i) {
        m2813a(i);
        return this.f15965b[i];
    }

    @Override // com.google.android.gms.internal.measurement.zzfm
    /* renamed from: zzc */
    public final zzfm zza(int i) {
        if (i >= this.f15966c) {
            return new C2546da(Arrays.copyOf(this.f15965b, i), this.f15966c);
        }
        throw new IllegalArgumentException();
    }
}
