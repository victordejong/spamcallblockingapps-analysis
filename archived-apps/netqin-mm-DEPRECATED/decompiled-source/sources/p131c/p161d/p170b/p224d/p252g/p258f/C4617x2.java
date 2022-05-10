package p131c.p161d.p170b.p224d.p252g.p258f;

import com.google.android.gms.internal.measurement.zzia;
import com.google.android.gms.internal.measurement.zzig;
import com.mopub.nativeads.MoPubNativeAdPositioning;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
/* renamed from: c.d.b.d.g.f.x2 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/f/x2.class */
public final class C4617x2 extends AbstractC4498g2<Double> implements zzig<Double>, AbstractC4507h4, RandomAccess {

    /* renamed from: b */
    public double[] f16927b;

    /* renamed from: c */
    public int f16928c;

    static {
        new C4617x2(new double[0], 0).mo9631H();
    }

    public C4617x2() {
        this(new double[10], 0);
    }

    public C4617x2(double[] dArr, int i) {
        this.f16927b = dArr;
        this.f16928c = i;
    }

    /* renamed from: a */
    public final void m25173a(double d) {
        m25475a();
        int i = this.f16928c;
        double[] dArr = this.f16927b;
        if (i == dArr.length) {
            double[] dArr2 = new double[((i * 3) / 2) + 1];
            System.arraycopy(dArr, 0, dArr2, 0, i);
            this.f16927b = dArr2;
        }
        double[] dArr3 = this.f16927b;
        int i2 = this.f16928c;
        this.f16928c = i2 + 1;
        dArr3[i2] = d;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i, Object obj) {
        int i2;
        double doubleValue = ((Double) obj).doubleValue();
        m25475a();
        if (i < 0 || i > (i2 = this.f16928c)) {
            throw new IndexOutOfBoundsException(zzc(i));
        }
        double[] dArr = this.f16927b;
        if (i2 < dArr.length) {
            System.arraycopy(dArr, i, dArr, i + 1, i2 - i);
        } else {
            double[] dArr2 = new double[((i2 * 3) / 2) + 1];
            System.arraycopy(dArr, 0, dArr2, 0, i);
            System.arraycopy(this.f16927b, i, dArr2, i + 1, this.f16928c - i);
            this.f16927b = dArr2;
        }
        this.f16927b[i] = doubleValue;
        this.f16928c++;
        ((AbstractList) this).modCount++;
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4498g2, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* synthetic */ boolean add(Object obj) {
        m25173a(((Double) obj).doubleValue());
        return true;
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4498g2, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Double> collection) {
        m25475a();
        zzia.m9638a(collection);
        if (!(collection instanceof C4617x2)) {
            return super.addAll(collection);
        }
        C4617x2 x2Var = (C4617x2) collection;
        int i = x2Var.f16928c;
        if (i == 0) {
            return false;
        }
        int i2 = this.f16928c;
        if (MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT - i2 >= i) {
            int i3 = i2 + i;
            double[] dArr = this.f16927b;
            if (i3 > dArr.length) {
                this.f16927b = Arrays.copyOf(dArr, i3);
            }
            System.arraycopy(x2Var.f16927b, 0, this.f16927b, this.f16928c, x2Var.f16928c);
            this.f16928c = i3;
            ((AbstractList) this).modCount++;
            return true;
        }
        throw new OutOfMemoryError();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4498g2, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C4617x2)) {
            return super.equals(obj);
        }
        C4617x2 x2Var = (C4617x2) obj;
        if (this.f16928c != x2Var.f16928c) {
            return false;
        }
        double[] dArr = x2Var.f16927b;
        for (int i = 0; i < this.f16928c; i++) {
            if (Double.doubleToLongBits(this.f16927b[i]) != Double.doubleToLongBits(dArr[i])) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        zzb(i);
        return Double.valueOf(this.f16927b[i]);
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4498g2, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.f16928c; i2++) {
            i = (i * 31) + zzia.m9640a(Double.doubleToLongBits(this.f16927b[i2]));
        }
        return i;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Double)) {
            return -1;
        }
        double doubleValue = ((Double) obj).doubleValue();
        int size = size();
        for (int i = 0; i < size; i++) {
            if (this.f16927b[i] == doubleValue) {
                return i;
            }
        }
        return -1;
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4498g2, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i) {
        m25475a();
        zzb(i);
        double[] dArr = this.f16927b;
        double d = dArr[i];
        int i2 = this.f16928c;
        if (i < i2 - 1) {
            System.arraycopy(dArr, i + 1, dArr, i, (i2 - i) - 1);
        }
        this.f16928c--;
        ((AbstractList) this).modCount++;
        return Double.valueOf(d);
    }

    @Override // java.util.AbstractList
    public final void removeRange(int i, int i2) {
        m25475a();
        if (i2 >= i) {
            double[] dArr = this.f16927b;
            System.arraycopy(dArr, i2, dArr, i, this.f16928c - i2);
            this.f16928c -= i2 - i;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i, Object obj) {
        double doubleValue = ((Double) obj).doubleValue();
        m25475a();
        zzb(i);
        double[] dArr = this.f16927b;
        double d = dArr[i];
        dArr[i] = doubleValue;
        return Double.valueOf(d);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f16928c;
    }

    @Override // com.google.android.gms.internal.measurement.zzig
    public final /* synthetic */ zzig<Double> zza(int i) {
        if (i >= this.f16928c) {
            return new C4617x2(Arrays.copyOf(this.f16927b, i), this.f16928c);
        }
        throw new IllegalArgumentException();
    }

    public final void zzb(int i) {
        if (i < 0 || i >= this.f16928c) {
            throw new IndexOutOfBoundsException(zzc(i));
        }
    }

    public final String zzc(int i) {
        int i2 = this.f16928c;
        StringBuilder sb = new StringBuilder(35);
        sb.append("Index:");
        sb.append(i);
        sb.append(", Size:");
        sb.append(i2);
        return sb.toString();
    }
}
