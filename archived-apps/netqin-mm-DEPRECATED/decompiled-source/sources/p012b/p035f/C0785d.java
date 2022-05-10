package p012b.p035f;
/* renamed from: b.f.d */
/* loaded from: classes-dex2jar.jar:b/f/d.class */
public class C0785d<E> implements Cloneable {

    /* renamed from: e */
    public static final Object f3675e = new Object();

    /* renamed from: a */
    public boolean f3676a;

    /* renamed from: b */
    public long[] f3677b;

    /* renamed from: c */
    public Object[] f3678c;

    /* renamed from: d */
    public int f3679d;

    public C0785d() {
        this(10);
    }

    public C0785d(int i) {
        this.f3676a = false;
        if (i == 0) {
            this.f3677b = C0784c.f3673b;
            this.f3678c = C0784c.f3674c;
            return;
        }
        int c = C0784c.m36057c(i);
        this.f3677b = new long[c];
        this.f3678c = new Object[c];
    }

    /* renamed from: a */
    public long m36056a(int i) {
        if (this.f3676a) {
            m36047e();
        }
        return this.f3677b[i];
    }

    /* renamed from: a */
    public E m36055a(long j) {
        return m36051b(j, null);
    }

    /* renamed from: a */
    public void m36054a(long j, E e) {
        int i = this.f3679d;
        if (i == 0 || j > this.f3677b[i - 1]) {
            if (this.f3676a && this.f3679d >= this.f3677b.length) {
                m36047e();
            }
            int i2 = this.f3679d;
            if (i2 >= this.f3677b.length) {
                int c = C0784c.m36057c(i2 + 1);
                long[] jArr = new long[c];
                Object[] objArr = new Object[c];
                long[] jArr2 = this.f3677b;
                System.arraycopy(jArr2, 0, jArr, 0, jArr2.length);
                Object[] objArr2 = this.f3678c;
                System.arraycopy(objArr2, 0, objArr, 0, objArr2.length);
                this.f3677b = jArr;
                this.f3678c = objArr;
            }
            this.f3677b[i2] = j;
            this.f3678c[i2] = e;
            this.f3679d = i2 + 1;
            return;
        }
        m36048c(j, e);
    }

    /* renamed from: b */
    public E m36051b(long j, E e) {
        int a = C0784c.m36059a(this.f3677b, this.f3679d, j);
        if (a >= 0) {
            Object[] objArr = this.f3678c;
            if (objArr[a] != f3675e) {
                return (E) objArr[a];
            }
        }
        return e;
    }

    /* renamed from: b */
    public void m36053b(int i) {
        Object[] objArr = this.f3678c;
        Object obj = objArr[i];
        Object obj2 = f3675e;
        if (obj != obj2) {
            objArr[i] = obj2;
            this.f3676a = true;
        }
    }

    /* renamed from: b */
    public void m36052b(long j) {
        int a = C0784c.m36059a(this.f3677b, this.f3679d, j);
        if (a >= 0) {
            Object[] objArr = this.f3678c;
            Object obj = objArr[a];
            Object obj2 = f3675e;
            if (obj != obj2) {
                objArr[a] = obj2;
                this.f3676a = true;
            }
        }
    }

    /* renamed from: c */
    public E m36049c(int i) {
        if (this.f3676a) {
            m36047e();
        }
        return (E) this.f3678c[i];
    }

    /* renamed from: c */
    public void m36050c() {
        int i = this.f3679d;
        Object[] objArr = this.f3678c;
        for (int i2 = 0; i2 < i; i2++) {
            objArr[i2] = null;
        }
        this.f3679d = 0;
        this.f3676a = false;
    }

    /* renamed from: c */
    public void m36048c(long j, E e) {
        int a = C0784c.m36059a(this.f3677b, this.f3679d, j);
        if (a >= 0) {
            this.f3678c[a] = e;
            return;
        }
        int i = a ^ (-1);
        if (i < this.f3679d) {
            Object[] objArr = this.f3678c;
            if (objArr[i] == f3675e) {
                this.f3677b[i] = j;
                objArr[i] = e;
                return;
            }
        }
        int i2 = i;
        if (this.f3676a) {
            i2 = i;
            if (this.f3679d >= this.f3677b.length) {
                m36047e();
                i2 = C0784c.m36059a(this.f3677b, this.f3679d, j) ^ (-1);
            }
        }
        int i3 = this.f3679d;
        if (i3 >= this.f3677b.length) {
            int c = C0784c.m36057c(i3 + 1);
            long[] jArr = new long[c];
            Object[] objArr2 = new Object[c];
            long[] jArr2 = this.f3677b;
            System.arraycopy(jArr2, 0, jArr, 0, jArr2.length);
            Object[] objArr3 = this.f3678c;
            System.arraycopy(objArr3, 0, objArr2, 0, objArr3.length);
            this.f3677b = jArr;
            this.f3678c = objArr2;
        }
        int i4 = this.f3679d;
        if (i4 - i2 != 0) {
            long[] jArr3 = this.f3677b;
            int i5 = i2 + 1;
            System.arraycopy(jArr3, i2, jArr3, i5, i4 - i2);
            Object[] objArr4 = this.f3678c;
            System.arraycopy(objArr4, i2, objArr4, i5, this.f3679d - i2);
        }
        this.f3677b[i2] = j;
        this.f3678c[i2] = e;
        this.f3679d++;
    }

    public C0785d<E> clone() {
        try {
            C0785d<E> dVar = (C0785d) super.clone();
            dVar.f3677b = (long[]) this.f3677b.clone();
            dVar.f3678c = (Object[]) this.f3678c.clone();
            return dVar;
        } catch (CloneNotSupportedException e) {
            throw new AssertionError(e);
        }
    }

    /* renamed from: e */
    public final void m36047e() {
        int i = this.f3679d;
        long[] jArr = this.f3677b;
        Object[] objArr = this.f3678c;
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            Object obj = objArr[i3];
            i2 = i2;
            if (obj != f3675e) {
                if (i3 != i2) {
                    jArr[i2] = jArr[i3];
                    objArr[i2] = obj;
                    objArr[i3] = null;
                }
                i2++;
            }
        }
        this.f3676a = false;
        this.f3679d = i2;
    }

    /* renamed from: g */
    public int m36046g() {
        if (this.f3676a) {
            m36047e();
        }
        return this.f3679d;
    }

    public String toString() {
        if (m36046g() <= 0) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.f3679d * 28);
        sb.append('{');
        for (int i = 0; i < this.f3679d; i++) {
            if (i > 0) {
                sb.append(", ");
            }
            sb.append(m36056a(i));
            sb.append('=');
            E c = m36049c(i);
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
