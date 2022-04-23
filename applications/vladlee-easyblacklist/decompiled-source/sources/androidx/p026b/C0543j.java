package androidx.p026b;
/* renamed from: androidx.b.j */
/* loaded from: classes-dex2jar.jar:androidx/b/j.class */
public final class C0543j<E> implements Cloneable {

    /* renamed from: a */
    private static final Object f2512a = new Object();

    /* renamed from: b */
    private boolean f2513b;

    /* renamed from: c */
    private int[] f2514c;

    /* renamed from: d */
    private Object[] f2515d;

    /* renamed from: e */
    private int f2516e;

    public C0543j() {
        this(10);
    }

    public C0543j(int i) {
        this.f2513b = false;
        if (i == 0) {
            this.f2514c = C0533e.f2474a;
            this.f2515d = C0533e.f2476c;
            return;
        }
        int a = C0533e.m8946a(i);
        this.f2514c = new int[a];
        this.f2515d = new Object[a];
    }

    /* renamed from: d */
    private void m8890d() {
        int i = this.f2516e;
        int[] iArr = this.f2514c;
        Object[] objArr = this.f2515d;
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            Object obj = objArr[i3];
            i2 = i2;
            if (obj != f2512a) {
                if (i3 != i2) {
                    iArr[i2] = iArr[i3];
                    objArr[i2] = obj;
                    objArr[i3] = null;
                }
                i2++;
            }
        }
        this.f2513b = false;
        this.f2516e = i2;
    }

    /* renamed from: a */
    public final int m8897a(E e) {
        if (this.f2513b) {
            m8890d();
        }
        for (int i = 0; i < this.f2516e; i++) {
            if (this.f2515d[i] == e) {
                return i;
            }
        }
        return -1;
    }

    /* renamed from: a */
    public final C0543j<E> clone() {
        try {
            C0543j<E> jVar = (C0543j) super.clone();
            jVar.f2514c = (int[]) this.f2514c.clone();
            jVar.f2515d = (Object[]) this.f2515d.clone();
            return jVar;
        } catch (CloneNotSupportedException e) {
            throw new AssertionError(e);
        }
    }

    /* renamed from: a */
    public final E m8899a(int i) {
        return m8898a(i, null);
    }

    /* renamed from: a */
    public final E m8898a(int i, E e) {
        int a = C0533e.m8944a(this.f2514c, this.f2516e, i);
        if (a >= 0) {
            Object[] objArr = this.f2515d;
            if (objArr[a] != f2512a) {
                return (E) objArr[a];
            }
        }
        return e;
    }

    /* renamed from: b */
    public final int m8896b() {
        if (this.f2513b) {
            m8890d();
        }
        return this.f2516e;
    }

    /* renamed from: b */
    public final void m8895b(int i) {
        int a = C0533e.m8944a(this.f2514c, this.f2516e, i);
        if (a >= 0) {
            Object[] objArr = this.f2515d;
            Object obj = objArr[a];
            Object obj2 = f2512a;
            if (obj != obj2) {
                objArr[a] = obj2;
                this.f2513b = true;
            }
        }
    }

    /* renamed from: b */
    public final void m8894b(int i, E e) {
        int a = C0533e.m8944a(this.f2514c, this.f2516e, i);
        if (a >= 0) {
            this.f2515d[a] = e;
            return;
        }
        int i2 = a ^ (-1);
        if (i2 < this.f2516e) {
            Object[] objArr = this.f2515d;
            if (objArr[i2] == f2512a) {
                this.f2514c[i2] = i;
                objArr[i2] = e;
                return;
            }
        }
        int i3 = i2;
        if (this.f2513b) {
            i3 = i2;
            if (this.f2516e >= this.f2514c.length) {
                m8890d();
                i3 = C0533e.m8944a(this.f2514c, this.f2516e, i) ^ (-1);
            }
        }
        int i4 = this.f2516e;
        if (i4 >= this.f2514c.length) {
            int a2 = C0533e.m8946a(i4 + 1);
            int[] iArr = new int[a2];
            Object[] objArr2 = new Object[a2];
            int[] iArr2 = this.f2514c;
            System.arraycopy(iArr2, 0, iArr, 0, iArr2.length);
            Object[] objArr3 = this.f2515d;
            System.arraycopy(objArr3, 0, objArr2, 0, objArr3.length);
            this.f2514c = iArr;
            this.f2515d = objArr2;
        }
        int i5 = this.f2516e;
        if (i5 - i3 != 0) {
            int[] iArr3 = this.f2514c;
            int i6 = i3 + 1;
            System.arraycopy(iArr3, i3, iArr3, i6, i5 - i3);
            Object[] objArr4 = this.f2515d;
            System.arraycopy(objArr4, i3, objArr4, i6, this.f2516e - i3);
        }
        this.f2514c[i3] = i;
        this.f2515d[i3] = e;
        this.f2516e++;
    }

    /* renamed from: c */
    public final int m8892c(int i) {
        if (this.f2513b) {
            m8890d();
        }
        return this.f2514c[i];
    }

    /* renamed from: c */
    public final void m8893c() {
        int i = this.f2516e;
        Object[] objArr = this.f2515d;
        for (int i2 = 0; i2 < i; i2++) {
            objArr[i2] = null;
        }
        this.f2516e = 0;
        this.f2513b = false;
    }

    /* renamed from: c */
    public final void m8891c(int i, E e) {
        int i2 = this.f2516e;
        if (i2 == 0 || i > this.f2514c[i2 - 1]) {
            if (this.f2513b && this.f2516e >= this.f2514c.length) {
                m8890d();
            }
            int i3 = this.f2516e;
            if (i3 >= this.f2514c.length) {
                int a = C0533e.m8946a(i3 + 1);
                int[] iArr = new int[a];
                Object[] objArr = new Object[a];
                int[] iArr2 = this.f2514c;
                System.arraycopy(iArr2, 0, iArr, 0, iArr2.length);
                Object[] objArr2 = this.f2515d;
                System.arraycopy(objArr2, 0, objArr, 0, objArr2.length);
                this.f2514c = iArr;
                this.f2515d = objArr;
            }
            this.f2514c[i3] = i;
            this.f2515d[i3] = e;
            this.f2516e = i3 + 1;
            return;
        }
        m8894b(i, e);
    }

    /* renamed from: d */
    public final E m8889d(int i) {
        if (this.f2513b) {
            m8890d();
        }
        return (E) this.f2515d[i];
    }

    /* renamed from: e */
    public final int m8888e(int i) {
        if (this.f2513b) {
            m8890d();
        }
        return C0533e.m8944a(this.f2514c, this.f2516e, i);
    }

    public final String toString() {
        if (m8896b() <= 0) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.f2516e * 28);
        sb.append('{');
        for (int i = 0; i < this.f2516e; i++) {
            if (i > 0) {
                sb.append(", ");
            }
            sb.append(m8892c(i));
            sb.append('=');
            E d = m8889d(i);
            if (d != this) {
                sb.append(d);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        return sb.toString();
    }
}
