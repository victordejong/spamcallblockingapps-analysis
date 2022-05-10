package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzekb;
import com.google.android.gms.internal.ads.zzekk;
import com.mopub.nativeads.MoPubNativeAdPositioning;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
/* renamed from: c.d.b.d.g.a.w60 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/w60.class */
public final class w60 extends t60<Boolean> implements zzekk<Boolean>, w80, RandomAccess {

    /* renamed from: b */
    public boolean[] f15912b;

    /* renamed from: c */
    public int f15913c;

    static {
        new w60(new boolean[0], 0).mo12361A();
    }

    public w60() {
        this(new boolean[10], 0);
    }

    public w60(boolean[] zArr, int i) {
        this.f15912b = zArr;
        this.f15913c = i;
    }

    /* renamed from: a */
    public final void m26182a(int i) {
        if (i < 0 || i >= this.f15913c) {
            throw new IndexOutOfBoundsException(m26180f(i));
        }
    }

    /* renamed from: a */
    public final void m26181a(boolean z) {
        m26328a();
        int i = this.f15913c;
        boolean[] zArr = this.f15912b;
        if (i == zArr.length) {
            boolean[] zArr2 = new boolean[((i * 3) / 2) + 1];
            System.arraycopy(zArr, 0, zArr2, 0, i);
            this.f15912b = zArr2;
        }
        boolean[] zArr3 = this.f15912b;
        int i2 = this.f15913c;
        this.f15913c = i2 + 1;
        zArr3[i2] = z;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i, Object obj) {
        int i2;
        boolean booleanValue = ((Boolean) obj).booleanValue();
        m26328a();
        if (i < 0 || i > (i2 = this.f15913c)) {
            throw new IndexOutOfBoundsException(m26180f(i));
        }
        boolean[] zArr = this.f15912b;
        if (i2 < zArr.length) {
            System.arraycopy(zArr, i, zArr, i + 1, i2 - i);
        } else {
            boolean[] zArr2 = new boolean[((i2 * 3) / 2) + 1];
            System.arraycopy(zArr, 0, zArr2, 0, i);
            System.arraycopy(this.f15912b, i, zArr2, i + 1, this.f15913c - i);
            this.f15912b = zArr2;
        }
        this.f15912b[i] = booleanValue;
        this.f15913c++;
        ((AbstractList) this).modCount++;
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.t60, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* synthetic */ boolean add(Object obj) {
        m26181a(((Boolean) obj).booleanValue());
        return true;
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.t60, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Boolean> collection) {
        m26328a();
        zzekb.m12372a(collection);
        if (!(collection instanceof w60)) {
            return super.addAll(collection);
        }
        w60 w60Var = (w60) collection;
        int i = w60Var.f15913c;
        if (i == 0) {
            return false;
        }
        int i2 = this.f15913c;
        if (MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT - i2 >= i) {
            int i3 = i2 + i;
            boolean[] zArr = this.f15912b;
            if (i3 > zArr.length) {
                this.f15912b = Arrays.copyOf(zArr, i3);
            }
            System.arraycopy(w60Var.f15912b, 0, this.f15912b, this.f15913c, w60Var.f15913c);
            this.f15913c = i3;
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
    public final /* synthetic */ zzekk<Boolean> mo12357e(int i) {
        if (i >= this.f15913c) {
            return new w60(Arrays.copyOf(this.f15912b, i), this.f15913c);
        }
        throw new IllegalArgumentException();
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.t60, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof w60)) {
            return super.equals(obj);
        }
        w60 w60Var = (w60) obj;
        if (this.f15913c != w60Var.f15913c) {
            return false;
        }
        boolean[] zArr = w60Var.f15912b;
        for (int i = 0; i < this.f15913c; i++) {
            if (this.f15912b[i] != zArr[i]) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: f */
    public final String m26180f(int i) {
        int i2 = this.f15913c;
        StringBuilder sb = new StringBuilder(35);
        sb.append("Index:");
        sb.append(i);
        sb.append(", Size:");
        sb.append(i2);
        return sb.toString();
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        m26182a(i);
        return Boolean.valueOf(this.f15912b[i]);
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.t60, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.f15913c; i2++) {
            i = (i * 31) + zzekb.m12369a(this.f15912b[i2]);
        }
        return i;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Boolean)) {
            return -1;
        }
        boolean booleanValue = ((Boolean) obj).booleanValue();
        int size = size();
        for (int i = 0; i < size; i++) {
            if (this.f15912b[i] == booleanValue) {
                return i;
            }
        }
        return -1;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i) {
        m26328a();
        m26182a(i);
        boolean[] zArr = this.f15912b;
        boolean z = zArr[i];
        int i2 = this.f15913c;
        if (i < i2 - 1) {
            System.arraycopy(zArr, i + 1, zArr, i, (i2 - i) - 1);
        }
        this.f15913c--;
        ((AbstractList) this).modCount++;
        return Boolean.valueOf(z);
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.t60, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        m26328a();
        for (int i = 0; i < this.f15913c; i++) {
            if (obj.equals(Boolean.valueOf(this.f15912b[i]))) {
                boolean[] zArr = this.f15912b;
                System.arraycopy(zArr, i + 1, zArr, i, (this.f15913c - i) - 1);
                this.f15913c--;
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
            boolean[] zArr = this.f15912b;
            System.arraycopy(zArr, i2, zArr, i, this.f15913c - i2);
            this.f15913c -= i2 - i;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i, Object obj) {
        boolean booleanValue = ((Boolean) obj).booleanValue();
        m26328a();
        m26182a(i);
        boolean[] zArr = this.f15912b;
        boolean z = zArr[i];
        zArr[i] = booleanValue;
        return Boolean.valueOf(z);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f15913c;
    }
}
