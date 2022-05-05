package androidx.p026b;
/* renamed from: androidx.b.f */
/* loaded from: classes-dex2jar.jar:androidx/b/f.class */
public final class C0534f<E> implements Cloneable {

    /* renamed from: a */
    private static final Object f2477a = new Object();

    /* renamed from: b */
    private boolean f2478b;

    /* renamed from: c */
    private long[] f2479c;

    /* renamed from: d */
    private Object[] f2480d;

    /* renamed from: e */
    private int f2481e;

    public C0534f() {
        this((byte) 0);
    }

    private C0534f(byte b) {
        this.f2478b = false;
        int b2 = C0533e.m8942b(10);
        this.f2479c = new long[b2];
        this.f2480d = new Object[b2];
    }

    /* renamed from: d */
    private void m8928d() {
        int i = this.f2481e;
        long[] jArr = this.f2479c;
        Object[] objArr = this.f2480d;
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            Object obj = objArr[i3];
            i2 = i2;
            if (obj != f2477a) {
                if (i3 != i2) {
                    jArr[i2] = jArr[i3];
                    objArr[i2] = obj;
                    objArr[i3] = null;
                }
                i2++;
            }
        }
        this.f2478b = false;
        this.f2481e = i2;
    }

    /* renamed from: a */
    public final C0534f<E> clone() {
        try {
            C0534f<E> fVar = (C0534f) super.clone();
            fVar.f2479c = (long[]) this.f2479c.clone();
            fVar.f2480d = (Object[]) this.f2480d.clone();
            return fVar;
        } catch (CloneNotSupportedException e) {
            throw new AssertionError(e);
        }
    }

    /* renamed from: a */
    public final E m8938a(long j) {
        return m8937a(j, null);
    }

    /* renamed from: a */
    public final E m8937a(long j, E e) {
        int a = C0533e.m8943a(this.f2479c, this.f2481e, j);
        if (a >= 0) {
            Object[] objArr = this.f2480d;
            if (objArr[a] != f2477a) {
                return (E) objArr[a];
            }
        }
        return e;
    }

    /* renamed from: a */
    public final void m8939a(int i) {
        Object[] objArr = this.f2480d;
        Object obj = objArr[i];
        Object obj2 = f2477a;
        if (obj != obj2) {
            objArr[i] = obj2;
            this.f2478b = true;
        }
    }

    /* renamed from: b */
    public final int m8936b() {
        if (this.f2478b) {
            m8928d();
        }
        return this.f2481e;
    }

    /* renamed from: b */
    public final long m8935b(int i) {
        if (this.f2478b) {
            m8928d();
        }
        return this.f2479c[i];
    }

    /* renamed from: b */
    public final void m8934b(long j) {
        int a = C0533e.m8943a(this.f2479c, this.f2481e, j);
        if (a >= 0) {
            Object[] objArr = this.f2480d;
            Object obj = objArr[a];
            Object obj2 = f2477a;
            if (obj != obj2) {
                objArr[a] = obj2;
                this.f2478b = true;
            }
        }
    }

    /* renamed from: b */
    public final void m8933b(long j, E e) {
        int a = C0533e.m8943a(this.f2479c, this.f2481e, j);
        if (a >= 0) {
            this.f2480d[a] = e;
            return;
        }
        int i = a ^ (-1);
        if (i < this.f2481e) {
            Object[] objArr = this.f2480d;
            if (objArr[i] == f2477a) {
                this.f2479c[i] = j;
                objArr[i] = e;
                return;
            }
        }
        int i2 = i;
        if (this.f2478b) {
            i2 = i;
            if (this.f2481e >= this.f2479c.length) {
                m8928d();
                i2 = C0533e.m8943a(this.f2479c, this.f2481e, j) ^ (-1);
            }
        }
        int i3 = this.f2481e;
        if (i3 >= this.f2479c.length) {
            int b = C0533e.m8942b(i3 + 1);
            long[] jArr = new long[b];
            Object[] objArr2 = new Object[b];
            long[] jArr2 = this.f2479c;
            System.arraycopy(jArr2, 0, jArr, 0, jArr2.length);
            Object[] objArr3 = this.f2480d;
            System.arraycopy(objArr3, 0, objArr2, 0, objArr3.length);
            this.f2479c = jArr;
            this.f2480d = objArr2;
        }
        int i4 = this.f2481e;
        if (i4 - i2 != 0) {
            long[] jArr3 = this.f2479c;
            int i5 = i2 + 1;
            System.arraycopy(jArr3, i2, jArr3, i5, i4 - i2);
            Object[] objArr4 = this.f2480d;
            System.arraycopy(objArr4, i2, objArr4, i5, this.f2481e - i2);
        }
        this.f2479c[i2] = j;
        this.f2480d[i2] = e;
        this.f2481e++;
    }

    /* renamed from: c */
    public final int m8930c(long j) {
        if (this.f2478b) {
            m8928d();
        }
        return C0533e.m8943a(this.f2479c, this.f2481e, j);
    }

    /* renamed from: c */
    public final E m8931c(int i) {
        if (this.f2478b) {
            m8928d();
        }
        return (E) this.f2480d[i];
    }

    /* renamed from: c */
    public final void m8932c() {
        int i = this.f2481e;
        Object[] objArr = this.f2480d;
        for (int i2 = 0; i2 < i; i2++) {
            objArr[i2] = null;
        }
        this.f2481e = 0;
        this.f2478b = false;
    }

    /* renamed from: c */
    public final void m8929c(long j, E e) {
        int i = this.f2481e;
        if (i == 0 || j > this.f2479c[i - 1]) {
            if (this.f2478b && this.f2481e >= this.f2479c.length) {
                m8928d();
            }
            int i2 = this.f2481e;
            if (i2 >= this.f2479c.length) {
                int b = C0533e.m8942b(i2 + 1);
                long[] jArr = new long[b];
                Object[] objArr = new Object[b];
                long[] jArr2 = this.f2479c;
                System.arraycopy(jArr2, 0, jArr, 0, jArr2.length);
                Object[] objArr2 = this.f2480d;
                System.arraycopy(objArr2, 0, objArr, 0, objArr2.length);
                this.f2479c = jArr;
                this.f2480d = objArr;
            }
            this.f2479c[i2] = j;
            this.f2480d[i2] = e;
            this.f2481e = i2 + 1;
            return;
        }
        m8933b(j, e);
    }

    public final String toString() {
        if (m8936b() <= 0) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.f2481e * 28);
        sb.append('{');
        for (int i = 0; i < this.f2481e; i++) {
            if (i > 0) {
                sb.append(", ");
            }
            sb.append(m8935b(i));
            sb.append('=');
            E c = m8931c(i);
            if (c != this) {
                sb.append(c);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        return sb.toString();
    }
}
