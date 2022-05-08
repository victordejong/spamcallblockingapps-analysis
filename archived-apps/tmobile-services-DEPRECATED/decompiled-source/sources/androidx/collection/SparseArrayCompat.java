package androidx.collection;

import androidx.annotation.Nullable;
/* loaded from: classes-dex2jar.jar:androidx/collection/SparseArrayCompat.class */
public class SparseArrayCompat<E> implements Cloneable {

    /* renamed from: j */
    private static final Object f1580j = new Object();

    /* renamed from: f */
    private boolean f1581f;

    /* renamed from: g */
    private int[] f1582g;

    /* renamed from: h */
    private Object[] f1583h;

    /* renamed from: i */
    private int f1584i;

    public SparseArrayCompat() {
        this(10);
    }

    public SparseArrayCompat(int i) {
        this.f1581f = false;
        if (i == 0) {
            this.f1582g = ContainerHelpers.f1550a;
            this.f1583h = ContainerHelpers.f1552c;
            return;
        }
        int e = ContainerHelpers.m21052e(i);
        this.f1582g = new int[e];
        this.f1583h = new Object[e];
    }

    /* renamed from: d */
    private void m21001d() {
        int i = this.f1584i;
        int[] iArr = this.f1582g;
        Object[] objArr = this.f1583h;
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            Object obj = objArr[i3];
            i2 = i2;
            if (obj != f1580j) {
                if (i3 != i2) {
                    iArr[i2] = iArr[i3];
                    objArr[i2] = obj;
                    objArr[i3] = null;
                }
                i2++;
            }
        }
        this.f1581f = false;
        this.f1584i = i2;
    }

    /* renamed from: a */
    public void m21004a(int i, E e) {
        int i2 = this.f1584i;
        if (i2 == 0 || i > this.f1582g[i2 - 1]) {
            if (this.f1581f && this.f1584i >= this.f1582g.length) {
                m21001d();
            }
            int i3 = this.f1584i;
            if (i3 >= this.f1582g.length) {
                int e2 = ContainerHelpers.m21052e(i3 + 1);
                int[] iArr = new int[e2];
                Object[] objArr = new Object[e2];
                int[] iArr2 = this.f1582g;
                System.arraycopy(iArr2, 0, iArr, 0, iArr2.length);
                Object[] objArr2 = this.f1583h;
                System.arraycopy(objArr2, 0, objArr, 0, objArr2.length);
                this.f1582g = iArr;
                this.f1583h = objArr;
            }
            this.f1582g[i3] = i;
            this.f1583h[i3] = e;
            this.f1584i = i3 + 1;
            return;
        }
        m20995m(i, e);
    }

    /* renamed from: b */
    public void m21003b() {
        int i = this.f1584i;
        Object[] objArr = this.f1583h;
        for (int i2 = 0; i2 < i; i2++) {
            objArr[i2] = null;
        }
        this.f1584i = 0;
        this.f1581f = false;
    }

    /* renamed from: c */
    public SparseArrayCompat<E> clone() {
        try {
            SparseArrayCompat<E> sparseArrayCompat = (SparseArrayCompat) super.clone();
            sparseArrayCompat.f1582g = (int[]) this.f1582g.clone();
            sparseArrayCompat.f1583h = (Object[]) this.f1583h.clone();
            return sparseArrayCompat;
        } catch (CloneNotSupportedException e) {
            throw new AssertionError(e);
        }
    }

    @Nullable
    /* renamed from: f */
    public E m21000f(int i) {
        return m20999g(i, null);
    }

    /* renamed from: g */
    public E m20999g(int i, E e) {
        int a = ContainerHelpers.m21056a(this.f1582g, this.f1584i, i);
        if (a >= 0) {
            Object[] objArr = this.f1583h;
            if (objArr[a] != f1580j) {
                return (E) objArr[a];
            }
        }
        return e;
    }

    /* renamed from: i */
    public int m20998i(int i) {
        if (this.f1581f) {
            m21001d();
        }
        return ContainerHelpers.m21056a(this.f1582g, this.f1584i, i);
    }

    /* renamed from: j */
    public int m20997j(E e) {
        if (this.f1581f) {
            m21001d();
        }
        for (int i = 0; i < this.f1584i; i++) {
            if (this.f1583h[i] == e) {
                return i;
            }
        }
        return -1;
    }

    /* renamed from: l */
    public int m20996l(int i) {
        if (this.f1581f) {
            m21001d();
        }
        return this.f1582g[i];
    }

    /* renamed from: m */
    public void m20995m(int i, E e) {
        int a = ContainerHelpers.m21056a(this.f1582g, this.f1584i, i);
        if (a >= 0) {
            this.f1583h[a] = e;
            return;
        }
        int i2 = a ^ (-1);
        if (i2 < this.f1584i) {
            Object[] objArr = this.f1583h;
            if (objArr[i2] == f1580j) {
                this.f1582g[i2] = i;
                objArr[i2] = e;
                return;
            }
        }
        int i3 = i2;
        if (this.f1581f) {
            i3 = i2;
            if (this.f1584i >= this.f1582g.length) {
                m21001d();
                i3 = ContainerHelpers.m21056a(this.f1582g, this.f1584i, i) ^ (-1);
            }
        }
        int i4 = this.f1584i;
        if (i4 >= this.f1582g.length) {
            int e2 = ContainerHelpers.m21052e(i4 + 1);
            int[] iArr = new int[e2];
            Object[] objArr2 = new Object[e2];
            int[] iArr2 = this.f1582g;
            System.arraycopy(iArr2, 0, iArr, 0, iArr2.length);
            Object[] objArr3 = this.f1583h;
            System.arraycopy(objArr3, 0, objArr2, 0, objArr3.length);
            this.f1582g = iArr;
            this.f1583h = objArr2;
        }
        int i5 = this.f1584i;
        if (i5 - i3 != 0) {
            int[] iArr3 = this.f1582g;
            int i6 = i3 + 1;
            System.arraycopy(iArr3, i3, iArr3, i6, i5 - i3);
            Object[] objArr4 = this.f1583h;
            System.arraycopy(objArr4, i3, objArr4, i6, this.f1584i - i3);
        }
        this.f1582g[i3] = i;
        this.f1583h[i3] = e;
        this.f1584i++;
    }

    /* renamed from: n */
    public void m20994n(int i) {
        int a = ContainerHelpers.m21056a(this.f1582g, this.f1584i, i);
        if (a >= 0) {
            Object[] objArr = this.f1583h;
            Object obj = objArr[a];
            Object obj2 = f1580j;
            if (obj != obj2) {
                objArr[a] = obj2;
                this.f1581f = true;
            }
        }
    }

    /* renamed from: o */
    public int m20993o() {
        if (this.f1581f) {
            m21001d();
        }
        return this.f1584i;
    }

    /* renamed from: p */
    public E m20992p(int i) {
        if (this.f1581f) {
            m21001d();
        }
        return (E) this.f1583h[i];
    }

    public String toString() {
        if (m20993o() <= 0) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.f1584i * 28);
        sb.append('{');
        for (int i = 0; i < this.f1584i; i++) {
            if (i > 0) {
                sb.append(", ");
            }
            sb.append(m20996l(i));
            sb.append('=');
            E p = m20992p(i);
            if (p != this) {
                sb.append(p);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        return sb.toString();
    }
}
