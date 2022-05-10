package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzekb;
import com.google.android.gms.internal.ads.zzekf;
import com.mopub.nativeads.MoPubNativeAdPositioning;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
/* renamed from: c.d.b.d.g.a.w70 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/w70.class */
public final class w70 extends t60<Integer> implements zzekf, w80, RandomAccess {

    /* renamed from: d */
    public static final w70 f15915d;

    /* renamed from: b */
    public int[] f15916b;

    /* renamed from: c */
    public int f15917c;

    static {
        w70 w70Var = new w70(new int[0], 0);
        f15915d = w70Var;
        w70Var.mo12361A();
    }

    public w70() {
        this(new int[10], 0);
    }

    public w70(int[] iArr, int i) {
        this.f15916b = iArr;
        this.f15917c = i;
    }

    /* renamed from: b */
    public static w70 m26178b() {
        return f15915d;
    }

    /* renamed from: a */
    public final void m26179a(int i) {
        if (i < 0 || i >= this.f15917c) {
            throw new IndexOutOfBoundsException(m26177f(i));
        }
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i, Object obj) {
        int i2;
        int intValue = ((Integer) obj).intValue();
        m26328a();
        if (i < 0 || i > (i2 = this.f15917c)) {
            throw new IndexOutOfBoundsException(m26177f(i));
        }
        int[] iArr = this.f15916b;
        if (i2 < iArr.length) {
            System.arraycopy(iArr, i, iArr, i + 1, i2 - i);
        } else {
            int[] iArr2 = new int[((i2 * 3) / 2) + 1];
            System.arraycopy(iArr, 0, iArr2, 0, i);
            System.arraycopy(this.f15916b, i, iArr2, i + 1, this.f15917c - i);
            this.f15916b = iArr2;
        }
        this.f15916b[i] = intValue;
        this.f15917c++;
        ((AbstractList) this).modCount++;
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.t60, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* synthetic */ boolean add(Object obj) {
        mo12364k(((Integer) obj).intValue());
        return true;
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.t60, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Integer> collection) {
        m26328a();
        zzekb.m12372a(collection);
        if (!(collection instanceof w70)) {
            return super.addAll(collection);
        }
        w70 w70Var = (w70) collection;
        int i = w70Var.f15917c;
        if (i == 0) {
            return false;
        }
        int i2 = this.f15917c;
        if (MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT - i2 >= i) {
            int i3 = i2 + i;
            int[] iArr = this.f15916b;
            if (i3 > iArr.length) {
                this.f15916b = Arrays.copyOf(iArr, i3);
            }
            System.arraycopy(w70Var.f15916b, 0, this.f15916b, this.f15917c, w70Var.f15917c);
            this.f15917c = i3;
            ((AbstractList) this).modCount++;
            return true;
        }
        throw new OutOfMemoryError();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.t60, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof w70)) {
            return super.equals(obj);
        }
        w70 w70Var = (w70) obj;
        if (this.f15917c != w70Var.f15917c) {
            return false;
        }
        int[] iArr = w70Var.f15916b;
        for (int i = 0; i < this.f15917c; i++) {
            if (this.f15916b[i] != iArr[i]) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: f */
    public final String m26177f(int i) {
        int i2 = this.f15917c;
        StringBuilder sb = new StringBuilder(35);
        sb.append("Index:");
        sb.append(i);
        sb.append(", Size:");
        sb.append(i2);
        return sb.toString();
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        return Integer.valueOf(getInt(i));
    }

    public final int getInt(int i) {
        m26179a(i);
        return this.f15916b[i];
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.t60, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.f15917c; i2++) {
            i = (i * 31) + this.f15916b[i2];
        }
        return i;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Integer)) {
            return -1;
        }
        int intValue = ((Integer) obj).intValue();
        int size = size();
        for (int i = 0; i < size; i++) {
            if (this.f15916b[i] == intValue) {
                return i;
            }
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.ads.zzekf
    /* renamed from: j */
    public final zzekf mo12357e(int i) {
        if (i >= this.f15917c) {
            return new w70(Arrays.copyOf(this.f15916b, i), this.f15917c);
        }
        throw new IllegalArgumentException();
    }

    @Override // com.google.android.gms.internal.ads.zzekf
    /* renamed from: k */
    public final void mo12364k(int i) {
        m26328a();
        int i2 = this.f15917c;
        int[] iArr = this.f15916b;
        if (i2 == iArr.length) {
            int[] iArr2 = new int[((i2 * 3) / 2) + 1];
            System.arraycopy(iArr, 0, iArr2, 0, i2);
            this.f15916b = iArr2;
        }
        int[] iArr3 = this.f15916b;
        int i3 = this.f15917c;
        this.f15917c = i3 + 1;
        iArr3[i3] = i;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i) {
        m26328a();
        m26179a(i);
        int[] iArr = this.f15916b;
        int i2 = iArr[i];
        int i3 = this.f15917c;
        if (i < i3 - 1) {
            System.arraycopy(iArr, i + 1, iArr, i, (i3 - i) - 1);
        }
        this.f15917c--;
        ((AbstractList) this).modCount++;
        return Integer.valueOf(i2);
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.t60, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        m26328a();
        for (int i = 0; i < this.f15917c; i++) {
            if (obj.equals(Integer.valueOf(this.f15916b[i]))) {
                int[] iArr = this.f15916b;
                System.arraycopy(iArr, i + 1, iArr, i, (this.f15917c - i) - 1);
                this.f15917c--;
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
            int[] iArr = this.f15916b;
            System.arraycopy(iArr, i2, iArr, i, this.f15917c - i2);
            this.f15917c -= i2 - i;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i, Object obj) {
        int intValue = ((Integer) obj).intValue();
        m26328a();
        m26179a(i);
        int[] iArr = this.f15916b;
        int i2 = iArr[i];
        iArr[i] = intValue;
        return Integer.valueOf(i2);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f15917c;
    }
}
