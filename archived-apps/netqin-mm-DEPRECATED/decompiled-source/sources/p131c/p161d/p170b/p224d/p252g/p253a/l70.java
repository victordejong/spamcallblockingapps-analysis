package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzekb;
import com.google.android.gms.internal.ads.zzekk;
import com.mopub.nativeads.MoPubNativeAdPositioning;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
/* renamed from: c.d.b.d.g.a.l70 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/l70.class */
public final class l70 extends t60<Double> implements zzekk<Double>, w80, RandomAccess {

    /* renamed from: b */
    public double[] f13939b;

    /* renamed from: c */
    public int f13940c;

    static {
        new l70(new double[0], 0).mo12361A();
    }

    public l70() {
        this(new double[10], 0);
    }

    public l70(double[] dArr, int i) {
        this.f13939b = dArr;
        this.f13940c = i;
    }

    /* renamed from: a */
    public final void m26704a(double d) {
        m26328a();
        int i = this.f13940c;
        double[] dArr = this.f13939b;
        if (i == dArr.length) {
            double[] dArr2 = new double[((i * 3) / 2) + 1];
            System.arraycopy(dArr, 0, dArr2, 0, i);
            this.f13939b = dArr2;
        }
        double[] dArr3 = this.f13939b;
        int i2 = this.f13940c;
        this.f13940c = i2 + 1;
        dArr3[i2] = d;
    }

    /* renamed from: a */
    public final void m26703a(int i) {
        if (i < 0 || i >= this.f13940c) {
            throw new IndexOutOfBoundsException(m26702f(i));
        }
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i, Object obj) {
        int i2;
        double doubleValue = ((Double) obj).doubleValue();
        m26328a();
        if (i < 0 || i > (i2 = this.f13940c)) {
            throw new IndexOutOfBoundsException(m26702f(i));
        }
        double[] dArr = this.f13939b;
        if (i2 < dArr.length) {
            System.arraycopy(dArr, i, dArr, i + 1, i2 - i);
        } else {
            double[] dArr2 = new double[((i2 * 3) / 2) + 1];
            System.arraycopy(dArr, 0, dArr2, 0, i);
            System.arraycopy(this.f13939b, i, dArr2, i + 1, this.f13940c - i);
            this.f13939b = dArr2;
        }
        this.f13939b[i] = doubleValue;
        this.f13940c++;
        ((AbstractList) this).modCount++;
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.t60, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* synthetic */ boolean add(Object obj) {
        m26704a(((Double) obj).doubleValue());
        return true;
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.t60, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Double> collection) {
        m26328a();
        zzekb.m12372a(collection);
        if (!(collection instanceof l70)) {
            return super.addAll(collection);
        }
        l70 l70Var = (l70) collection;
        int i = l70Var.f13940c;
        if (i == 0) {
            return false;
        }
        int i2 = this.f13940c;
        if (MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT - i2 >= i) {
            int i3 = i2 + i;
            double[] dArr = this.f13939b;
            if (i3 > dArr.length) {
                this.f13939b = Arrays.copyOf(dArr, i3);
            }
            System.arraycopy(l70Var.f13939b, 0, this.f13939b, this.f13940c, l70Var.f13940c);
            this.f13940c = i3;
            ((AbstractList) this).modCount++;
            return true;
        }
        throw new OutOfMemoryError();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    @Override // com.google.android.gms.internal.ads.zzekk
    /* renamed from: e */
    public final /* synthetic */ zzekk<Double> mo12357e(int i) {
        if (i >= this.f13940c) {
            return new l70(Arrays.copyOf(this.f13939b, i), this.f13940c);
        }
        throw new IllegalArgumentException();
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.t60, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof l70)) {
            return super.equals(obj);
        }
        l70 l70Var = (l70) obj;
        if (this.f13940c != l70Var.f13940c) {
            return false;
        }
        double[] dArr = l70Var.f13939b;
        for (int i = 0; i < this.f13940c; i++) {
            if (Double.doubleToLongBits(this.f13939b[i]) != Double.doubleToLongBits(dArr[i])) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: f */
    public final String m26702f(int i) {
        int i2 = this.f13940c;
        StringBuilder sb = new StringBuilder(35);
        sb.append("Index:");
        sb.append(i);
        sb.append(", Size:");
        sb.append(i2);
        return sb.toString();
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        m26703a(i);
        return Double.valueOf(this.f13939b[i]);
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.t60, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.f13940c; i2++) {
            i = (i * 31) + zzekb.m12374a(Double.doubleToLongBits(this.f13939b[i2]));
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
            if (this.f13939b[i] == doubleValue) {
                return i;
            }
        }
        return -1;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i) {
        m26328a();
        m26703a(i);
        double[] dArr = this.f13939b;
        double d = dArr[i];
        int i2 = this.f13940c;
        if (i < i2 - 1) {
            System.arraycopy(dArr, i + 1, dArr, i, (i2 - i) - 1);
        }
        this.f13940c--;
        ((AbstractList) this).modCount++;
        return Double.valueOf(d);
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.t60, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        m26328a();
        for (int i = 0; i < this.f13940c; i++) {
            if (obj.equals(Double.valueOf(this.f13939b[i]))) {
                double[] dArr = this.f13939b;
                System.arraycopy(dArr, i + 1, dArr, i, (this.f13940c - i) - 1);
                this.f13940c--;
                ((AbstractList) this).modCount++;
                return true;
            }
        }
        return false;
    }

    @Override // java.util.AbstractList
    public final void removeRange(int i, int i2) {
        m26328a();
        if (i2 >= i) {
            double[] dArr = this.f13939b;
            System.arraycopy(dArr, i2, dArr, i, this.f13940c - i2);
            this.f13940c -= i2 - i;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i, Object obj) {
        double doubleValue = ((Double) obj).doubleValue();
        m26328a();
        m26703a(i);
        double[] dArr = this.f13939b;
        double d = dArr[i];
        dArr[i] = doubleValue;
        return Double.valueOf(d);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f13940c;
    }
}
