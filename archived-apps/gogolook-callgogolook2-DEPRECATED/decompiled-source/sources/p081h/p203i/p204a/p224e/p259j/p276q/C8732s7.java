package p081h.p203i.p204a.p224e.p259j.p276q;
/* renamed from: h.i.a.e.j.q.s7 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/q/s7.class */
public final class C8732s7 implements Cloneable {

    /* renamed from: d */
    public static final C8741t7 f19968d = new C8741t7();

    /* renamed from: a */
    public int[] f19969a;

    /* renamed from: b */
    public C8741t7[] f19970b;

    /* renamed from: c */
    public int f19971c;

    public C8732s7() {
        this(10);
    }

    public C8732s7(int i) {
        int d = m17184d(i);
        this.f19969a = new int[d];
        this.f19970b = new C8741t7[d];
        this.f19971c = 0;
    }

    /* renamed from: d */
    public static int m17184d(int i) {
        int i2;
        int i3 = i << 2;
        int i4 = 4;
        while (true) {
            i2 = i3;
            if (i4 >= 32) {
                break;
            }
            i2 = (1 << i4) - 12;
            if (i3 <= i2) {
                break;
            }
            i4++;
        }
        return i2 / 4;
    }

    /* renamed from: a */
    public final C8741t7 m17189a(int i) {
        int c = m17186c(i);
        if (c < 0) {
            return null;
        }
        C8741t7[] t7VarArr = this.f19970b;
        if (t7VarArr[c] == f19968d) {
            return null;
        }
        return t7VarArr[c];
    }

    /* renamed from: a */
    public final void m17188a(int i, C8741t7 t7Var) {
        int c = m17186c(i);
        if (c >= 0) {
            this.f19970b[c] = t7Var;
            return;
        }
        int i2 = c ^ (-1);
        if (i2 < this.f19971c) {
            C8741t7[] t7VarArr = this.f19970b;
            if (t7VarArr[i2] == f19968d) {
                this.f19969a[i2] = i;
                t7VarArr[i2] = t7Var;
                return;
            }
        }
        int i3 = this.f19971c;
        if (i3 >= this.f19969a.length) {
            int d = m17184d(i3 + 1);
            int[] iArr = new int[d];
            C8741t7[] t7VarArr2 = new C8741t7[d];
            int[] iArr2 = this.f19969a;
            System.arraycopy(iArr2, 0, iArr, 0, iArr2.length);
            C8741t7[] t7VarArr3 = this.f19970b;
            System.arraycopy(t7VarArr3, 0, t7VarArr2, 0, t7VarArr3.length);
            this.f19969a = iArr;
            this.f19970b = t7VarArr2;
        }
        int i4 = this.f19971c;
        if (i4 - i2 != 0) {
            int[] iArr3 = this.f19969a;
            int i5 = i2 + 1;
            System.arraycopy(iArr3, i2, iArr3, i5, i4 - i2);
            C8741t7[] t7VarArr4 = this.f19970b;
            System.arraycopy(t7VarArr4, i2, t7VarArr4, i5, this.f19971c - i2);
        }
        this.f19969a[i2] = i;
        this.f19970b[i2] = t7Var;
        this.f19971c++;
    }

    /* renamed from: b */
    public final C8741t7 m17187b(int i) {
        return this.f19970b[i];
    }

    /* renamed from: c */
    public final int m17186c(int i) {
        int i2 = this.f19971c - 1;
        int i3 = 0;
        while (i3 <= i2) {
            int i4 = (i3 + i2) >>> 1;
            int i5 = this.f19969a[i4];
            if (i5 < i) {
                i3 = i4 + 1;
            } else if (i5 <= i) {
                return i4;
            } else {
                i2 = i4 - 1;
            }
        }
        return i3 ^ (-1);
    }

    public final /* synthetic */ Object clone() throws CloneNotSupportedException {
        int i = this.f19971c;
        C8732s7 s7Var = new C8732s7(i);
        System.arraycopy(this.f19969a, 0, s7Var.f19969a, 0, i);
        for (int i2 = 0; i2 < i; i2++) {
            C8741t7[] t7VarArr = this.f19970b;
            if (t7VarArr[i2] != null) {
                s7Var.f19970b[i2] = (C8741t7) t7VarArr[i2].clone();
            }
        }
        s7Var.f19971c = i;
        return s7Var;
    }

    /* renamed from: d */
    public final boolean m17185d() {
        return this.f19971c == 0;
    }

    /* renamed from: e */
    public final int m17183e() {
        return this.f19971c;
    }

    public final boolean equals(Object obj) {
        boolean z;
        boolean z2;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C8732s7)) {
            return false;
        }
        C8732s7 s7Var = (C8732s7) obj;
        int i = this.f19971c;
        if (i != s7Var.f19971c) {
            return false;
        }
        int[] iArr = this.f19969a;
        int[] iArr2 = s7Var.f19969a;
        int i2 = 0;
        while (true) {
            if (i2 >= i) {
                z = true;
                break;
            } else if (iArr[i2] != iArr2[i2]) {
                z = false;
                break;
            } else {
                i2++;
            }
        }
        if (!z) {
            return false;
        }
        C8741t7[] t7VarArr = this.f19970b;
        C8741t7[] t7VarArr2 = s7Var.f19970b;
        int i3 = this.f19971c;
        int i4 = 0;
        while (true) {
            if (i4 >= i3) {
                z2 = true;
                break;
            } else if (!t7VarArr[i4].equals(t7VarArr2[i4])) {
                z2 = false;
                break;
            } else {
                i4++;
            }
        }
        return z2;
    }

    public final int hashCode() {
        int i = 17;
        for (int i2 = 0; i2 < this.f19971c; i2++) {
            i = (((i * 31) + this.f19969a[i2]) * 31) + this.f19970b[i2].hashCode();
        }
        return i;
    }
}
