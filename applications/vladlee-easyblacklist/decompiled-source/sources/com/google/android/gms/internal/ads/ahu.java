package com.google.android.gms.internal.ads;

import com.google.android.gms.common.api.Api;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ahu.class */
final class ahu extends ahb<Double> implements aje, zzdsb<Double>, RandomAccess {

    /* renamed from: a */
    private static final ahu f7387a;

    /* renamed from: b */
    private double[] f7388b;

    /* renamed from: c */
    private int f7389c;

    static {
        ahu ahuVar = new ahu(new double[0], 0);
        f7387a = ahuVar;
        ahuVar.zzaxq();
    }

    ahu() {
        this(new double[10], 0);
    }

    private ahu(double[] dArr, int i) {
        this.f7388b = dArr;
        this.f7389c = i;
    }

    /* renamed from: a */
    private final void m5369a(int i) {
        if (i < 0 || i >= this.f7389c) {
            throw new IndexOutOfBoundsException(m5368b(i));
        }
    }

    /* renamed from: b */
    private final String m5368b(int i) {
        int i2 = this.f7389c;
        StringBuilder sb = new StringBuilder(35);
        sb.append("Index:");
        sb.append(i);
        sb.append(", Size:");
        sb.append(i2);
        return sb.toString();
    }

    /* renamed from: a */
    public final void m5370a(double d) {
        m5424a();
        int i = this.f7389c;
        double[] dArr = this.f7388b;
        if (i == dArr.length) {
            double[] dArr2 = new double[((i * 3) / 2) + 1];
            System.arraycopy(dArr, 0, dArr2, 0, i);
            this.f7388b = dArr2;
        }
        double[] dArr3 = this.f7388b;
        int i2 = this.f7389c;
        this.f7389c = i2 + 1;
        dArr3[i2] = d;
    }

    @Override // com.google.android.gms.internal.ads.ahb, java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i, Object obj) {
        int i2;
        double doubleValue = ((Double) obj).doubleValue();
        m5424a();
        if (i < 0 || i > (i2 = this.f7389c)) {
            throw new IndexOutOfBoundsException(m5368b(i));
        }
        double[] dArr = this.f7388b;
        if (i2 < dArr.length) {
            System.arraycopy(dArr, i, dArr, i + 1, i2 - i);
        } else {
            double[] dArr2 = new double[((i2 * 3) / 2) + 1];
            System.arraycopy(dArr, 0, dArr2, 0, i);
            System.arraycopy(this.f7388b, i, dArr2, i + 1, this.f7389c - i);
            this.f7388b = dArr2;
        }
        this.f7388b[i] = doubleValue;
        this.f7389c++;
        this.modCount++;
    }

    @Override // com.google.android.gms.internal.ads.ahb, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* synthetic */ boolean add(Object obj) {
        m5370a(((Double) obj).doubleValue());
        return true;
    }

    @Override // com.google.android.gms.internal.ads.ahb, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Double> collection) {
        m5424a();
        zzdrv.m3351a(collection);
        if (!(collection instanceof ahu)) {
            return super.addAll(collection);
        }
        ahu ahuVar = (ahu) collection;
        int i = ahuVar.f7389c;
        if (i == 0) {
            return false;
        }
        int i2 = this.f7389c;
        if (Api.BaseClientBuilder.API_PRIORITY_OTHER - i2 >= i) {
            int i3 = i2 + i;
            double[] dArr = this.f7388b;
            if (i3 > dArr.length) {
                this.f7388b = Arrays.copyOf(dArr, i3);
            }
            System.arraycopy(ahuVar.f7388b, 0, this.f7388b, this.f7389c, ahuVar.f7389c);
            this.f7389c = i3;
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
        if (!(obj instanceof ahu)) {
            return super.equals(obj);
        }
        ahu ahuVar = (ahu) obj;
        if (this.f7389c != ahuVar.f7389c) {
            return false;
        }
        double[] dArr = ahuVar.f7388b;
        for (int i = 0; i < this.f7389c; i++) {
            if (Double.doubleToLongBits(this.f7388b[i]) != Double.doubleToLongBits(dArr[i])) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        m5369a(i);
        return Double.valueOf(this.f7388b[i]);
    }

    @Override // com.google.android.gms.internal.ads.ahb, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.f7389c; i2++) {
            i = (i * 31) + zzdrv.zzfq(Double.doubleToLongBits(this.f7388b[i2]));
        }
        return i;
    }

    @Override // com.google.android.gms.internal.ads.ahb, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i) {
        m5424a();
        m5369a(i);
        double[] dArr = this.f7388b;
        double d = dArr[i];
        int i2 = this.f7389c;
        if (i < i2 - 1) {
            System.arraycopy(dArr, i + 1, dArr, i, (i2 - i) - 1);
        }
        this.f7389c--;
        this.modCount++;
        return Double.valueOf(d);
    }

    @Override // com.google.android.gms.internal.ads.ahb, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        m5424a();
        for (int i = 0; i < this.f7389c; i++) {
            if (obj.equals(Double.valueOf(this.f7388b[i]))) {
                double[] dArr = this.f7388b;
                System.arraycopy(dArr, i + 1, dArr, i, (this.f7389c - i) - 1);
                this.f7389c--;
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
            double[] dArr = this.f7388b;
            System.arraycopy(dArr, i2, dArr, i, this.f7389c - i2);
            this.f7389c -= i2 - i;
            this.modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    @Override // com.google.android.gms.internal.ads.ahb, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i, Object obj) {
        double doubleValue = ((Double) obj).doubleValue();
        m5424a();
        m5369a(i);
        double[] dArr = this.f7388b;
        double d = dArr[i];
        dArr[i] = doubleValue;
        return Double.valueOf(d);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f7389c;
    }

    @Override // com.google.android.gms.internal.ads.zzdsb
    public final /* synthetic */ zzdsb<Double> zzfd(int i) {
        if (i >= this.f7389c) {
            return new ahu(Arrays.copyOf(this.f7388b, i), this.f7389c);
        }
        throw new IllegalArgumentException();
    }
}
