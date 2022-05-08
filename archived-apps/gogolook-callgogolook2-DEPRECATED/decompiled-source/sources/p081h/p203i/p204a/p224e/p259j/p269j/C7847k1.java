package p081h.p203i.p204a.p224e.p259j.p269j;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
/* renamed from: h.i.a.e.j.j.k1 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/j/k1.class */
public final class C7847k1 extends AbstractC7964z<Float> implements AbstractC7912s1<Float>, AbstractC7803f3, RandomAccess {

    /* renamed from: b */
    public float[] f18386b;

    /* renamed from: c */
    public int f18387c;

    static {
        new C7847k1().mo18745a();
    }

    public C7847k1() {
        this(new float[10], 0);
    }

    public C7847k1(float[] fArr, int i) {
        this.f18386b = fArr;
        this.f18387c = i;
    }

    /* renamed from: a */
    public final void m19271a(float f) {
        m19270a(this.f18387c, f);
    }

    /* renamed from: a */
    public final void m19270a(int i, float f) {
        int i2;
        m18744b();
        if (i < 0 || i > (i2 = this.f18387c)) {
            throw new IndexOutOfBoundsException(m19268h(i));
        }
        float[] fArr = this.f18386b;
        if (i2 < fArr.length) {
            System.arraycopy(fArr, i, fArr, i + 1, i2 - i);
        } else {
            float[] fArr2 = new float[((i2 * 3) / 2) + 1];
            System.arraycopy(fArr, 0, fArr2, 0, i);
            System.arraycopy(this.f18386b, i, fArr2, i + 1, this.f18387c - i);
            this.f18386b = fArr2;
        }
        this.f18386b[i] = f;
        this.f18387c++;
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i, Object obj) {
        m19270a(i, ((Float) obj).floatValue());
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7964z, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Float> collection) {
        m18744b();
        C7891p1.m19105a(collection);
        if (!(collection instanceof C7847k1)) {
            return super.addAll(collection);
        }
        C7847k1 k1Var = (C7847k1) collection;
        int i = k1Var.f18387c;
        if (i == 0) {
            return false;
        }
        int i2 = this.f18387c;
        if (Integer.MAX_VALUE - i2 >= i) {
            int i3 = i2 + i;
            float[] fArr = this.f18386b;
            if (i3 > fArr.length) {
                this.f18386b = Arrays.copyOf(fArr, i3);
            }
            System.arraycopy(k1Var.f18386b, 0, this.f18386b, this.f18387c, k1Var.f18387c);
            this.f18387c = i3;
            ((AbstractList) this).modCount++;
            return true;
        }
        throw new OutOfMemoryError();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7912s1
    /* renamed from: c */
    public final /* synthetic */ AbstractC7912s1<Float> mo18849c(int i) {
        if (i >= this.f18387c) {
            return new C7847k1(Arrays.copyOf(this.f18386b, i), this.f18387c);
        }
        throw new IllegalArgumentException();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7964z, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C7847k1)) {
            return super.equals(obj);
        }
        C7847k1 k1Var = (C7847k1) obj;
        if (this.f18387c != k1Var.f18387c) {
            return false;
        }
        float[] fArr = k1Var.f18386b;
        for (int i = 0; i < this.f18387c; i++) {
            if (this.f18386b[i] != fArr[i]) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: g */
    public final void m19269g(int i) {
        if (i < 0 || i >= this.f18387c) {
            throw new IndexOutOfBoundsException(m19268h(i));
        }
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        m19269g(i);
        return Float.valueOf(this.f18386b[i]);
    }

    /* renamed from: h */
    public final String m19268h(int i) {
        int i2 = this.f18387c;
        StringBuilder sb = new StringBuilder(35);
        sb.append("Index:");
        sb.append(i);
        sb.append(", Size:");
        sb.append(i2);
        return sb.toString();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7964z, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.f18387c; i2++) {
            i = (i * 31) + Float.floatToIntBits(this.f18386b[i2]);
        }
        return i;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i) {
        m18744b();
        m19269g(i);
        float[] fArr = this.f18386b;
        float f = fArr[i];
        int i2 = this.f18387c;
        if (i < i2 - 1) {
            System.arraycopy(fArr, i + 1, fArr, i, i2 - i);
        }
        this.f18387c--;
        ((AbstractList) this).modCount++;
        return Float.valueOf(f);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7964z, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        m18744b();
        for (int i = 0; i < this.f18387c; i++) {
            if (obj.equals(Float.valueOf(this.f18386b[i]))) {
                float[] fArr = this.f18386b;
                System.arraycopy(fArr, i + 1, fArr, i, this.f18387c - i);
                this.f18387c--;
                ((AbstractList) this).modCount++;
                return true;
            }
        }
        return false;
    }

    @Override // java.util.AbstractList
    public final void removeRange(int i, int i2) {
        m18744b();
        if (i2 >= i) {
            float[] fArr = this.f18386b;
            System.arraycopy(fArr, i2, fArr, i, this.f18387c - i2);
            this.f18387c -= i2 - i;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i, Object obj) {
        float floatValue = ((Float) obj).floatValue();
        m18744b();
        m19269g(i);
        float[] fArr = this.f18386b;
        float f = fArr[i];
        fArr[i] = floatValue;
        return Float.valueOf(f);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f18387c;
    }
}
