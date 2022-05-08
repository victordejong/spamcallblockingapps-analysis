package androidx.collection;

import androidx.annotation.Nullable;
/* loaded from: classes-dex2jar.jar:androidx/collection/LongSparseArray.class */
public class LongSparseArray<E> implements Cloneable {

    /* renamed from: j */
    private static final Object f1553j = new Object();

    /* renamed from: f */
    private boolean f1554f;

    /* renamed from: g */
    private long[] f1555g;

    /* renamed from: h */
    private Object[] f1556h;

    /* renamed from: i */
    private int f1557i;

    public LongSparseArray() {
        this(10);
    }

    public LongSparseArray(int i) {
        this.f1554f = false;
        if (i == 0) {
            this.f1555g = ContainerHelpers.f1551b;
            this.f1556h = ContainerHelpers.f1552c;
            return;
        }
        int f = ContainerHelpers.m21051f(i);
        this.f1555g = new long[f];
        this.f1556h = new Object[f];
    }

    /* renamed from: f */
    private void m21046f() {
        int i = this.f1557i;
        long[] jArr = this.f1555g;
        Object[] objArr = this.f1556h;
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            Object obj = objArr[i3];
            i2 = i2;
            if (obj != f1553j) {
                if (i3 != i2) {
                    jArr[i2] = jArr[i3];
                    objArr[i2] = obj;
                    objArr[i3] = null;
                }
                i2++;
            }
        }
        this.f1554f = false;
        this.f1557i = i2;
    }

    /* renamed from: a */
    public void m21050a(long j, E e) {
        int i = this.f1557i;
        if (i == 0 || j > this.f1555g[i - 1]) {
            if (this.f1554f && this.f1557i >= this.f1555g.length) {
                m21046f();
            }
            int i2 = this.f1557i;
            if (i2 >= this.f1555g.length) {
                int f = ContainerHelpers.m21051f(i2 + 1);
                long[] jArr = new long[f];
                Object[] objArr = new Object[f];
                long[] jArr2 = this.f1555g;
                System.arraycopy(jArr2, 0, jArr, 0, jArr2.length);
                Object[] objArr2 = this.f1556h;
                System.arraycopy(objArr2, 0, objArr, 0, objArr2.length);
                this.f1555g = jArr;
                this.f1556h = objArr;
            }
            this.f1555g[i2] = j;
            this.f1556h[i2] = e;
            this.f1557i = i2 + 1;
            return;
        }
        m21040n(j, e);
    }

    /* renamed from: b */
    public void m21049b() {
        int i = this.f1557i;
        Object[] objArr = this.f1556h;
        for (int i2 = 0; i2 < i; i2++) {
            objArr[i2] = null;
        }
        this.f1557i = 0;
        this.f1554f = false;
    }

    /* renamed from: c */
    public LongSparseArray<E> clone() {
        try {
            LongSparseArray<E> longSparseArray = (LongSparseArray) super.clone();
            longSparseArray.f1555g = (long[]) this.f1555g.clone();
            longSparseArray.f1556h = (Object[]) this.f1556h.clone();
            return longSparseArray;
        } catch (CloneNotSupportedException e) {
            throw new AssertionError(e);
        }
    }

    /* renamed from: d */
    public boolean m21047d(long j) {
        return m21043j(j) >= 0;
    }

    @Nullable
    /* renamed from: g */
    public E m21045g(long j) {
        return m21044i(j, null);
    }

    /* renamed from: i */
    public E m21044i(long j, E e) {
        int b = ContainerHelpers.m21055b(this.f1555g, this.f1557i, j);
        if (b >= 0) {
            Object[] objArr = this.f1556h;
            if (objArr[b] != f1553j) {
                return (E) objArr[b];
            }
        }
        return e;
    }

    /* renamed from: j */
    public int m21043j(long j) {
        if (this.f1554f) {
            m21046f();
        }
        return ContainerHelpers.m21055b(this.f1555g, this.f1557i, j);
    }

    /* renamed from: l */
    public boolean m21042l() {
        return m21037q() == 0;
    }

    /* renamed from: m */
    public long m21041m(int i) {
        if (this.f1554f) {
            m21046f();
        }
        return this.f1555g[i];
    }

    /* renamed from: n */
    public void m21040n(long j, E e) {
        int b = ContainerHelpers.m21055b(this.f1555g, this.f1557i, j);
        if (b >= 0) {
            this.f1556h[b] = e;
            return;
        }
        int i = b ^ (-1);
        if (i < this.f1557i) {
            Object[] objArr = this.f1556h;
            if (objArr[i] == f1553j) {
                this.f1555g[i] = j;
                objArr[i] = e;
                return;
            }
        }
        int i2 = i;
        if (this.f1554f) {
            i2 = i;
            if (this.f1557i >= this.f1555g.length) {
                m21046f();
                i2 = ContainerHelpers.m21055b(this.f1555g, this.f1557i, j) ^ (-1);
            }
        }
        int i3 = this.f1557i;
        if (i3 >= this.f1555g.length) {
            int f = ContainerHelpers.m21051f(i3 + 1);
            long[] jArr = new long[f];
            Object[] objArr2 = new Object[f];
            long[] jArr2 = this.f1555g;
            System.arraycopy(jArr2, 0, jArr, 0, jArr2.length);
            Object[] objArr3 = this.f1556h;
            System.arraycopy(objArr3, 0, objArr2, 0, objArr3.length);
            this.f1555g = jArr;
            this.f1556h = objArr2;
        }
        int i4 = this.f1557i;
        if (i4 - i2 != 0) {
            long[] jArr3 = this.f1555g;
            int i5 = i2 + 1;
            System.arraycopy(jArr3, i2, jArr3, i5, i4 - i2);
            Object[] objArr4 = this.f1556h;
            System.arraycopy(objArr4, i2, objArr4, i5, this.f1557i - i2);
        }
        this.f1555g[i2] = j;
        this.f1556h[i2] = e;
        this.f1557i++;
    }

    /* renamed from: o */
    public void m21039o(long j) {
        int b = ContainerHelpers.m21055b(this.f1555g, this.f1557i, j);
        if (b >= 0) {
            Object[] objArr = this.f1556h;
            Object obj = objArr[b];
            Object obj2 = f1553j;
            if (obj != obj2) {
                objArr[b] = obj2;
                this.f1554f = true;
            }
        }
    }

    /* renamed from: p */
    public void m21038p(int i) {
        Object[] objArr = this.f1556h;
        Object obj = objArr[i];
        Object obj2 = f1553j;
        if (obj != obj2) {
            objArr[i] = obj2;
            this.f1554f = true;
        }
    }

    /* renamed from: q */
    public int m21037q() {
        if (this.f1554f) {
            m21046f();
        }
        return this.f1557i;
    }

    /* renamed from: r */
    public E m21036r(int i) {
        if (this.f1554f) {
            m21046f();
        }
        return (E) this.f1556h[i];
    }

    public String toString() {
        if (m21037q() <= 0) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.f1557i * 28);
        sb.append('{');
        for (int i = 0; i < this.f1557i; i++) {
            if (i > 0) {
                sb.append(", ");
            }
            sb.append(m21041m(i));
            sb.append('=');
            E r = m21036r(i);
            if (r != this) {
                sb.append(r);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        return sb.toString();
    }
}
