package com.google.android.gms.internal.measurement;

import com.google.android.gms.common.api.Api;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
/* renamed from: com.google.android.gms.internal.measurement.ch */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/ch.class */
final class C2526ch extends AbstractC2507bp<Double> implements AbstractC2563dr, zzfl<Double>, RandomAccess {

    /* renamed from: a */
    private static final C2526ch f15926a;

    /* renamed from: b */
    private double[] f15927b;

    /* renamed from: c */
    private int f15928c;

    static {
        C2526ch chVar = new C2526ch(new double[0], 0);
        f15926a = chVar;
        chVar.mo2268h_();
    }

    C2526ch() {
        this(new double[10], 0);
    }

    private C2526ch(double[] dArr, int i) {
        this.f15927b = dArr;
        this.f15928c = i;
    }

    /* renamed from: a */
    private final void m2870a(int i) {
        if (i < 0 || i >= this.f15928c) {
            throw new IndexOutOfBoundsException(m2869b(i));
        }
    }

    /* renamed from: b */
    private final String m2869b(int i) {
        int i2 = this.f15928c;
        StringBuilder sb = new StringBuilder(35);
        sb.append("Index:");
        sb.append(i);
        sb.append(", Size:");
        sb.append(i2);
        return sb.toString();
    }

    /* renamed from: a */
    public final void m2871a(double d) {
        m2916a();
        int i = this.f15928c;
        double[] dArr = this.f15927b;
        if (i == dArr.length) {
            double[] dArr2 = new double[((i * 3) / 2) + 1];
            System.arraycopy(dArr, 0, dArr2, 0, i);
            this.f15927b = dArr2;
        }
        double[] dArr3 = this.f15927b;
        int i2 = this.f15928c;
        this.f15928c = i2 + 1;
        dArr3[i2] = d;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2507bp, java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i, Object obj) {
        int i2;
        double doubleValue = ((Double) obj).doubleValue();
        m2916a();
        if (i < 0 || i > (i2 = this.f15928c)) {
            throw new IndexOutOfBoundsException(m2869b(i));
        }
        double[] dArr = this.f15927b;
        if (i2 < dArr.length) {
            System.arraycopy(dArr, i, dArr, i + 1, i2 - i);
        } else {
            double[] dArr2 = new double[((i2 * 3) / 2) + 1];
            System.arraycopy(dArr, 0, dArr2, 0, i);
            System.arraycopy(this.f15927b, i, dArr2, i + 1, this.f15928c - i);
            this.f15927b = dArr2;
        }
        this.f15927b[i] = doubleValue;
        this.f15928c++;
        this.modCount++;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2507bp, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* synthetic */ boolean add(Object obj) {
        m2871a(((Double) obj).doubleValue());
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2507bp, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Double> collection) {
        m2916a();
        zzff.m2271a(collection);
        if (!(collection instanceof C2526ch)) {
            return super.addAll(collection);
        }
        C2526ch chVar = (C2526ch) collection;
        int i = chVar.f15928c;
        if (i == 0) {
            return false;
        }
        int i2 = this.f15928c;
        if (Api.BaseClientBuilder.API_PRIORITY_OTHER - i2 >= i) {
            int i3 = i2 + i;
            double[] dArr = this.f15927b;
            if (i3 > dArr.length) {
                this.f15927b = Arrays.copyOf(dArr, i3);
            }
            System.arraycopy(chVar.f15927b, 0, this.f15927b, this.f15928c, chVar.f15928c);
            this.f15928c = i3;
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
        if (!(obj instanceof C2526ch)) {
            return super.equals(obj);
        }
        C2526ch chVar = (C2526ch) obj;
        if (this.f15928c != chVar.f15928c) {
            return false;
        }
        double[] dArr = chVar.f15927b;
        for (int i = 0; i < this.f15928c; i++) {
            if (Double.doubleToLongBits(this.f15927b[i]) != Double.doubleToLongBits(dArr[i])) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        m2870a(i);
        return Double.valueOf(this.f15927b[i]);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2507bp, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.f15928c; i2++) {
            i = (i * 31) + zzff.zza(Double.doubleToLongBits(this.f15927b[i2]));
        }
        return i;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2507bp, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i) {
        m2916a();
        m2870a(i);
        double[] dArr = this.f15927b;
        double d = dArr[i];
        int i2 = this.f15928c;
        if (i < i2 - 1) {
            System.arraycopy(dArr, i + 1, dArr, i, (i2 - i) - 1);
        }
        this.f15928c--;
        this.modCount++;
        return Double.valueOf(d);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2507bp, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        m2916a();
        for (int i = 0; i < this.f15928c; i++) {
            if (obj.equals(Double.valueOf(this.f15927b[i]))) {
                double[] dArr = this.f15927b;
                System.arraycopy(dArr, i + 1, dArr, i, (this.f15928c - i) - 1);
                this.f15928c--;
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
            double[] dArr = this.f15927b;
            System.arraycopy(dArr, i2, dArr, i, this.f15928c - i2);
            this.f15928c -= i2 - i;
            this.modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2507bp, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i, Object obj) {
        double doubleValue = ((Double) obj).doubleValue();
        m2916a();
        m2870a(i);
        double[] dArr = this.f15927b;
        double d = dArr[i];
        dArr[i] = doubleValue;
        return Double.valueOf(d);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f15928c;
    }

    @Override // com.google.android.gms.internal.measurement.zzfl
    public final /* synthetic */ zzfl<Double> zza(int i) {
        if (i >= this.f15928c) {
            return new C2526ch(Arrays.copyOf(this.f15927b, i), this.f15928c);
        }
        throw new IllegalArgumentException();
    }
}
