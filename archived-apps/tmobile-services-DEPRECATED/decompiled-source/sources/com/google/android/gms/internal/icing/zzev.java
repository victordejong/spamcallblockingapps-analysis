package com.google.android.gms.internal.icing;

import com.google.android.gms.common.api.Api;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzev.class */
final class zzev extends zzcp<Long> implements zzee<Long>, zzfq, RandomAccess {

    /* renamed from: i */
    private static final zzev f8026i;

    /* renamed from: g */
    private long[] f8027g;

    /* renamed from: h */
    private int f8028h;

    static {
        zzev zzevVar = new zzev(new long[0], 0);
        f8026i = zzevVar;
        zzevVar.mo13794q();
    }

    zzev() {
        this(new long[10], 0);
    }

    private zzev(long[] jArr, int i) {
        this.f8027g = jArr;
        this.f8028h = i;
    }

    /* renamed from: e */
    public static zzev m13776e() {
        return f8026i;
    }

    /* renamed from: f */
    private final void m13775f(int i) {
        if (i < 0 || i >= this.f8028h) {
            throw new IndexOutOfBoundsException(m13774g(i));
        }
    }

    /* renamed from: g */
    private final String m13774g(int i) {
        int i2 = this.f8028h;
        StringBuilder sb = new StringBuilder(35);
        sb.append("Index:");
        sb.append(i);
        sb.append(", Size:");
        sb.append(i2);
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.icing.zzcp, java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i, Object obj) {
        int i2;
        long longValue = ((Long) obj).longValue();
        m13986c();
        if (i < 0 || i > (i2 = this.f8028h)) {
            throw new IndexOutOfBoundsException(m13774g(i));
        }
        long[] jArr = this.f8027g;
        if (i2 < jArr.length) {
            System.arraycopy(jArr, i, jArr, i + 1, i2 - i);
        } else {
            long[] jArr2 = new long[((i2 * 3) / 2) + 1];
            System.arraycopy(jArr, 0, jArr2, 0, i);
            System.arraycopy(this.f8027g, i, jArr2, i + 1, this.f8028h - i);
            this.f8027g = jArr2;
        }
        this.f8027g[i] = longValue;
        this.f8028h++;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.icing.zzcp, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* synthetic */ boolean add(Object obj) {
        long longValue = ((Long) obj).longValue();
        m13986c();
        int i = this.f8028h;
        long[] jArr = this.f8027g;
        if (i == jArr.length) {
            long[] jArr2 = new long[((i * 3) / 2) + 1];
            System.arraycopy(jArr, 0, jArr2, 0, i);
            this.f8027g = jArr2;
        }
        long[] jArr3 = this.f8027g;
        int i2 = this.f8028h;
        this.f8028h = i2 + 1;
        jArr3[i2] = longValue;
        return true;
    }

    @Override // com.google.android.gms.internal.icing.zzcp, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Long> collection) {
        m13986c();
        zzeb.m13806a(collection);
        if (!(collection instanceof zzev)) {
            return super.addAll(collection);
        }
        zzev zzevVar = (zzev) collection;
        int i = zzevVar.f8028h;
        if (i == 0) {
            return false;
        }
        int i2 = this.f8028h;
        if (Api.BaseClientBuilder.API_PRIORITY_OTHER - i2 >= i) {
            int i3 = i2 + i;
            long[] jArr = this.f8027g;
            if (i3 > jArr.length) {
                this.f8027g = Arrays.copyOf(jArr, i3);
            }
            System.arraycopy(zzevVar.f8027g, 0, this.f8027g, this.f8028h, zzevVar.f8028h);
            this.f8028h = i3;
            ((AbstractList) this).modCount++;
            return true;
        }
        throw new OutOfMemoryError();
    }

    @Override // com.google.android.gms.internal.icing.zzee
    /* renamed from: b0 */
    public final /* synthetic */ zzee<Long> mo13713b0(int i) {
        if (i >= this.f8028h) {
            return new zzev(Arrays.copyOf(this.f8027g, i), this.f8028h);
        }
        throw new IllegalArgumentException();
    }

    /* renamed from: d */
    public final long m13777d(int i) {
        m13775f(i);
        return this.f8027g[i];
    }

    @Override // com.google.android.gms.internal.icing.zzcp, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzev)) {
            return super.equals(obj);
        }
        zzev zzevVar = (zzev) obj;
        if (this.f8028h != zzevVar.f8028h) {
            return false;
        }
        long[] jArr = zzevVar.f8027g;
        for (int i = 0; i < this.f8028h; i++) {
            if (this.f8027g[i] != jArr[i]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        return Long.valueOf(m13777d(i));
    }

    @Override // com.google.android.gms.internal.icing.zzcp, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.f8028h; i2++) {
            i = (i * 31) + zzeb.m13797j(this.f8027g[i2]);
        }
        return i;
    }

    @Override // com.google.android.gms.internal.icing.zzcp, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i) {
        m13986c();
        m13775f(i);
        long[] jArr = this.f8027g;
        long j = jArr[i];
        int i2 = this.f8028h;
        if (i < i2 - 1) {
            System.arraycopy(jArr, i + 1, jArr, i, (i2 - i) - 1);
        }
        this.f8028h--;
        ((AbstractList) this).modCount++;
        return Long.valueOf(j);
    }

    @Override // com.google.android.gms.internal.icing.zzcp, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        m13986c();
        for (int i = 0; i < this.f8028h; i++) {
            if (obj.equals(Long.valueOf(this.f8027g[i]))) {
                long[] jArr = this.f8027g;
                System.arraycopy(jArr, i + 1, jArr, i, (this.f8028h - i) - 1);
                this.f8028h--;
                ((AbstractList) this).modCount++;
                return true;
            }
        }
        return false;
    }

    @Override // java.util.AbstractList
    protected final void removeRange(int i, int i2) {
        m13986c();
        if (i2 >= i) {
            long[] jArr = this.f8027g;
            System.arraycopy(jArr, i2, jArr, i, this.f8028h - i2);
            this.f8028h -= i2 - i;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    @Override // com.google.android.gms.internal.icing.zzcp, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i, Object obj) {
        long longValue = ((Long) obj).longValue();
        m13986c();
        m13775f(i);
        long[] jArr = this.f8027g;
        long j = jArr[i];
        jArr[i] = longValue;
        return Long.valueOf(j);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f8028h;
    }
}
