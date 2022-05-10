package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzekb;
import com.google.android.gms.internal.ads.zzekk;
import com.mopub.nativeads.MoPubNativeAdPositioning;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
/* renamed from: c.d.b.d.g.a.u70 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/u70.class */
public final class u70 extends t60<Float> implements zzekk<Float>, w80, RandomAccess {

    /* renamed from: b */
    public float[] f15455b;

    /* renamed from: c */
    public int f15456c;

    static {
        new u70(new float[0], 0).mo12361A();
    }

    public u70() {
        this(new float[10], 0);
    }

    public u70(float[] fArr, int i) {
        this.f15455b = fArr;
        this.f15456c = i;
    }

    /* renamed from: a */
    public final void m26307a(float f) {
        m26328a();
        int i = this.f15456c;
        float[] fArr = this.f15455b;
        if (i == fArr.length) {
            float[] fArr2 = new float[((i * 3) / 2) + 1];
            System.arraycopy(fArr, 0, fArr2, 0, i);
            this.f15455b = fArr2;
        }
        float[] fArr3 = this.f15455b;
        int i2 = this.f15456c;
        this.f15456c = i2 + 1;
        fArr3[i2] = f;
    }

    /* renamed from: a */
    public final void m26306a(int i) {
        if (i < 0 || i >= this.f15456c) {
            throw new IndexOutOfBoundsException(m26305f(i));
        }
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i, Object obj) {
        int i2;
        float floatValue = ((Float) obj).floatValue();
        m26328a();
        if (i < 0 || i > (i2 = this.f15456c)) {
            throw new IndexOutOfBoundsException(m26305f(i));
        }
        float[] fArr = this.f15455b;
        if (i2 < fArr.length) {
            System.arraycopy(fArr, i, fArr, i + 1, i2 - i);
        } else {
            float[] fArr2 = new float[((i2 * 3) / 2) + 1];
            System.arraycopy(fArr, 0, fArr2, 0, i);
            System.arraycopy(this.f15455b, i, fArr2, i + 1, this.f15456c - i);
            this.f15455b = fArr2;
        }
        this.f15455b[i] = floatValue;
        this.f15456c++;
        ((AbstractList) this).modCount++;
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.t60, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* synthetic */ boolean add(Object obj) {
        m26307a(((Float) obj).floatValue());
        return true;
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.t60, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Float> collection) {
        m26328a();
        zzekb.m12372a(collection);
        if (!(collection instanceof u70)) {
            return super.addAll(collection);
        }
        u70 u70Var = (u70) collection;
        int i = u70Var.f15456c;
        if (i == 0) {
            return false;
        }
        int i2 = this.f15456c;
        if (MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT - i2 >= i) {
            int i3 = i2 + i;
            float[] fArr = this.f15455b;
            if (i3 > fArr.length) {
                this.f15455b = Arrays.copyOf(fArr, i3);
            }
            System.arraycopy(u70Var.f15455b, 0, this.f15455b, this.f15456c, u70Var.f15456c);
            this.f15456c = i3;
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
    public final /* synthetic */ zzekk<Float> mo12357e(int i) {
        if (i >= this.f15456c) {
            return new u70(Arrays.copyOf(this.f15455b, i), this.f15456c);
        }
        throw new IllegalArgumentException();
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.t60, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof u70)) {
            return super.equals(obj);
        }
        u70 u70Var = (u70) obj;
        if (this.f15456c != u70Var.f15456c) {
            return false;
        }
        float[] fArr = u70Var.f15455b;
        for (int i = 0; i < this.f15456c; i++) {
            if (Float.floatToIntBits(this.f15455b[i]) != Float.floatToIntBits(fArr[i])) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: f */
    public final String m26305f(int i) {
        int i2 = this.f15456c;
        StringBuilder sb = new StringBuilder(35);
        sb.append("Index:");
        sb.append(i);
        sb.append(", Size:");
        sb.append(i2);
        return sb.toString();
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        m26306a(i);
        return Float.valueOf(this.f15455b[i]);
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.t60, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.f15456c; i2++) {
            i = (i * 31) + Float.floatToIntBits(this.f15455b[i2]);
        }
        return i;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Float)) {
            return -1;
        }
        float floatValue = ((Float) obj).floatValue();
        int size = size();
        for (int i = 0; i < size; i++) {
            if (this.f15455b[i] == floatValue) {
                return i;
            }
        }
        return -1;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i) {
        m26328a();
        m26306a(i);
        float[] fArr = this.f15455b;
        float f = fArr[i];
        int i2 = this.f15456c;
        if (i < i2 - 1) {
            System.arraycopy(fArr, i + 1, fArr, i, (i2 - i) - 1);
        }
        this.f15456c--;
        ((AbstractList) this).modCount++;
        return Float.valueOf(f);
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.t60, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        m26328a();
        for (int i = 0; i < this.f15456c; i++) {
            if (obj.equals(Float.valueOf(this.f15455b[i]))) {
                float[] fArr = this.f15455b;
                System.arraycopy(fArr, i + 1, fArr, i, (this.f15456c - i) - 1);
                this.f15456c--;
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
            float[] fArr = this.f15455b;
            System.arraycopy(fArr, i2, fArr, i, this.f15456c - i2);
            this.f15456c -= i2 - i;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i, Object obj) {
        float floatValue = ((Float) obj).floatValue();
        m26328a();
        m26306a(i);
        float[] fArr = this.f15455b;
        float f = fArr[i];
        fArr[i] = floatValue;
        return Float.valueOf(f);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f15456c;
    }
}
