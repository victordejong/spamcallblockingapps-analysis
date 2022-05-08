package p081h.p203i.p204a.p224e.p259j.p269j;
/* renamed from: h.i.a.e.j.j.f5 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/j/f5.class */
public final class C7805f5 implements Cloneable {

    /* renamed from: d */
    public static final C7813g5 f18249d = new C7813g5();

    /* renamed from: a */
    public int[] f18250a;

    /* renamed from: b */
    public C7813g5[] f18251b;

    /* renamed from: c */
    public int f18252c;

    public C7805f5() {
        this(10);
    }

    public C7805f5(int i) {
        int d = m19401d(i);
        this.f18250a = new int[d];
        this.f18251b = new C7813g5[d];
        this.f18252c = 0;
    }

    /* renamed from: d */
    public static int m19401d(int i) {
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
    public final C7813g5 m19406a(int i) {
        int c = m19403c(i);
        if (c < 0) {
            return null;
        }
        C7813g5[] g5VarArr = this.f18251b;
        if (g5VarArr[c] == f18249d) {
            return null;
        }
        return g5VarArr[c];
    }

    /* renamed from: a */
    public final void m19405a(int i, C7813g5 g5Var) {
        int c = m19403c(i);
        if (c >= 0) {
            this.f18251b[c] = g5Var;
            return;
        }
        int i2 = c ^ (-1);
        if (i2 < this.f18252c) {
            C7813g5[] g5VarArr = this.f18251b;
            if (g5VarArr[i2] == f18249d) {
                this.f18250a[i2] = i;
                g5VarArr[i2] = g5Var;
                return;
            }
        }
        int i3 = this.f18252c;
        if (i3 >= this.f18250a.length) {
            int d = m19401d(i3 + 1);
            int[] iArr = new int[d];
            C7813g5[] g5VarArr2 = new C7813g5[d];
            int[] iArr2 = this.f18250a;
            System.arraycopy(iArr2, 0, iArr, 0, iArr2.length);
            C7813g5[] g5VarArr3 = this.f18251b;
            System.arraycopy(g5VarArr3, 0, g5VarArr2, 0, g5VarArr3.length);
            this.f18250a = iArr;
            this.f18251b = g5VarArr2;
        }
        int i4 = this.f18252c;
        if (i4 - i2 != 0) {
            int[] iArr3 = this.f18250a;
            int i5 = i2 + 1;
            System.arraycopy(iArr3, i2, iArr3, i5, i4 - i2);
            C7813g5[] g5VarArr4 = this.f18251b;
            System.arraycopy(g5VarArr4, i2, g5VarArr4, i5, this.f18252c - i2);
        }
        this.f18250a[i2] = i;
        this.f18251b[i2] = g5Var;
        this.f18252c++;
    }

    /* renamed from: b */
    public final C7813g5 m19404b(int i) {
        return this.f18251b[i];
    }

    /* renamed from: c */
    public final int m19403c(int i) {
        int i2 = this.f18252c - 1;
        int i3 = 0;
        while (i3 <= i2) {
            int i4 = (i3 + i2) >>> 1;
            int i5 = this.f18250a[i4];
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
        int i = this.f18252c;
        C7805f5 f5Var = new C7805f5(i);
        System.arraycopy(this.f18250a, 0, f5Var.f18250a, 0, i);
        for (int i2 = 0; i2 < i; i2++) {
            C7813g5[] g5VarArr = this.f18251b;
            if (g5VarArr[i2] != null) {
                f5Var.f18251b[i2] = (C7813g5) g5VarArr[i2].clone();
            }
        }
        f5Var.f18252c = i;
        return f5Var;
    }

    /* renamed from: d */
    public final boolean m19402d() {
        return this.f18252c == 0;
    }

    /* renamed from: e */
    public final int m19400e() {
        return this.f18252c;
    }

    public final boolean equals(Object obj) {
        boolean z;
        boolean z2;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C7805f5)) {
            return false;
        }
        C7805f5 f5Var = (C7805f5) obj;
        int i = this.f18252c;
        if (i != f5Var.f18252c) {
            return false;
        }
        int[] iArr = this.f18250a;
        int[] iArr2 = f5Var.f18250a;
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
        C7813g5[] g5VarArr = this.f18251b;
        C7813g5[] g5VarArr2 = f5Var.f18251b;
        int i3 = this.f18252c;
        int i4 = 0;
        while (true) {
            if (i4 >= i3) {
                z2 = true;
                break;
            } else if (!g5VarArr[i4].equals(g5VarArr2[i4])) {
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
        for (int i2 = 0; i2 < this.f18252c; i2++) {
            i = (((i * 31) + this.f18250a[i2]) * 31) + this.f18251b[i2].hashCode();
        }
        return i;
    }
}
