package p131c.p161d.p367h;

import com.mopub.nativeads.MoPubNativeAdPositioning;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
import p131c.p161d.p367h.C6381y;
/* renamed from: c.d.h.m */
/* loaded from: classes2-dex2jar.jar:c/d/h/m.class */
public final class C6345m extends AbstractC6285c<Double> implements C6381y.AbstractC6383b, RandomAccess, AbstractC6378w0 {

    /* renamed from: d */
    public static final C6345m f19986d;

    /* renamed from: b */
    public double[] f19987b;

    /* renamed from: c */
    public int f19988c;

    static {
        C6345m mVar = new C6345m(new double[0], 0);
        f19986d = mVar;
        mVar.mo20999l();
    }

    public C6345m() {
        this(new double[10], 0);
    }

    public C6345m(double[] dArr, int i) {
        this.f19987b = dArr;
        this.f19988c = i;
    }

    /* renamed from: a */
    public void m21258a(double d) {
        m21675a();
        int i = this.f19988c;
        double[] dArr = this.f19987b;
        if (i == dArr.length) {
            double[] dArr2 = new double[((i * 3) / 2) + 1];
            System.arraycopy(dArr, 0, dArr2, 0, i);
            this.f19987b = dArr2;
        }
        double[] dArr3 = this.f19987b;
        int i2 = this.f19988c;
        this.f19988c = i2 + 1;
        dArr3[i2] = d;
    }

    /* renamed from: a */
    public final void m21257a(int i) {
        if (i < 0 || i >= this.f19988c) {
            throw new IndexOutOfBoundsException(m21250l(i));
        }
    }

    /* renamed from: a */
    public final void m21256a(int i, double d) {
        int i2;
        m21675a();
        if (i < 0 || i > (i2 = this.f19988c)) {
            throw new IndexOutOfBoundsException(m21250l(i));
        }
        double[] dArr = this.f19987b;
        if (i2 < dArr.length) {
            System.arraycopy(dArr, i, dArr, i + 1, i2 - i);
        } else {
            double[] dArr2 = new double[((i2 * 3) / 2) + 1];
            System.arraycopy(dArr, 0, dArr2, 0, i);
            System.arraycopy(this.f19987b, i, dArr2, i + 1, this.f19988c - i);
            this.f19987b = dArr2;
        }
        this.f19987b[i] = d;
        this.f19988c++;
        ((AbstractList) this).modCount++;
    }

    /* renamed from: a */
    public void add(int i, Double d) {
        m21256a(i, d.doubleValue());
    }

    /* renamed from: a */
    public boolean add(Double d) {
        m21258a(d.doubleValue());
        return true;
    }

    @Override // p131c.p161d.p367h.AbstractC6285c, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean addAll(Collection<? extends Double> collection) {
        m21675a();
        C6381y.m21009a(collection);
        if (!(collection instanceof C6345m)) {
            return super.addAll(collection);
        }
        C6345m mVar = (C6345m) collection;
        int i = mVar.f19988c;
        if (i == 0) {
            return false;
        }
        int i2 = this.f19988c;
        if (MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT - i2 >= i) {
            int i3 = i2 + i;
            double[] dArr = this.f19987b;
            if (i3 > dArr.length) {
                this.f19987b = Arrays.copyOf(dArr, i3);
            }
            System.arraycopy(mVar.f19987b, 0, this.f19987b, this.f19988c, mVar.f19988c);
            this.f19988c = i3;
            ((AbstractList) this).modCount++;
            return true;
        }
        throw new OutOfMemoryError();
    }

    /* renamed from: b */
    public double m21253b(int i, double d) {
        m21675a();
        m21257a(i);
        double[] dArr = this.f19987b;
        double d2 = dArr[i];
        dArr[i] = d;
        return d2;
    }

    @Override // p131c.p161d.p367h.C6381y.AbstractC6390i
    /* renamed from: b */
    public C6381y.AbstractC6390i<Double> mo20996b(int i) {
        if (i >= this.f19988c) {
            return new C6345m(Arrays.copyOf(this.f19987b, i), this.f19988c);
        }
        throw new IllegalArgumentException();
    }

    /* renamed from: b */
    public Double set(int i, Double d) {
        return Double.valueOf(m21253b(i, d.doubleValue()));
    }

    @Override // p131c.p161d.p367h.AbstractC6285c, java.util.AbstractList, java.util.Collection, java.util.List
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C6345m)) {
            return super.equals(obj);
        }
        C6345m mVar = (C6345m) obj;
        if (this.f19988c != mVar.f19988c) {
            return false;
        }
        double[] dArr = mVar.f19987b;
        for (int i = 0; i < this.f19988c; i++) {
            if (Double.doubleToLongBits(this.f19987b[i]) != Double.doubleToLongBits(dArr[i])) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: f */
    public double m21251f(int i) {
        m21257a(i);
        return this.f19987b[i];
    }

    @Override // java.util.AbstractList, java.util.List
    public Double get(int i) {
        return Double.valueOf(m21251f(i));
    }

    @Override // p131c.p161d.p367h.AbstractC6285c, java.util.AbstractList, java.util.Collection, java.util.List
    public int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.f19988c; i2++) {
            i = (i * 31) + C6381y.m21010a(Double.doubleToLongBits(this.f19987b[i2]));
        }
        return i;
    }

    /* renamed from: l */
    public final String m21250l(int i) {
        return "Index:" + i + ", Size:" + this.f19988c;
    }

    @Override // java.util.AbstractList, java.util.List
    public Double remove(int i) {
        m21675a();
        m21257a(i);
        double[] dArr = this.f19987b;
        double d = dArr[i];
        int i2 = this.f19988c;
        if (i < i2 - 1) {
            System.arraycopy(dArr, i + 1, dArr, i, (i2 - i) - 1);
        }
        this.f19988c--;
        ((AbstractList) this).modCount++;
        return Double.valueOf(d);
    }

    @Override // p131c.p161d.p367h.AbstractC6285c, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean remove(Object obj) {
        m21675a();
        for (int i = 0; i < this.f19988c; i++) {
            if (obj.equals(Double.valueOf(this.f19987b[i]))) {
                double[] dArr = this.f19987b;
                System.arraycopy(dArr, i + 1, dArr, i, (this.f19988c - i) - 1);
                this.f19988c--;
                ((AbstractList) this).modCount++;
                return true;
            }
        }
        return false;
    }

    @Override // java.util.AbstractList
    public void removeRange(int i, int i2) {
        m21675a();
        if (i2 >= i) {
            double[] dArr = this.f19987b;
            System.arraycopy(dArr, i2, dArr, i, this.f19988c - i2);
            this.f19988c -= i2 - i;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.f19988c;
    }
}
