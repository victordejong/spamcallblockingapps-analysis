package p081h.p203i.p204a.p224e.p259j.p266g;
/* renamed from: h.i.a.e.j.g.t4 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/g/t4.class */
public final class C7697t4 implements Cloneable {

    /* renamed from: a */
    public int[] f18032a;

    /* renamed from: b */
    public C7704u4[] f18033b;

    /* renamed from: c */
    public int f18034c;

    static {
        new C7704u4();
    }

    public C7697t4() {
        this(10);
    }

    public C7697t4(int i) {
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
        int i5 = i2 / 4;
        this.f18032a = new int[i5];
        this.f18033b = new C7704u4[i5];
        this.f18034c = 0;
    }

    /* renamed from: a */
    public final C7704u4 m19791a(int i) {
        return this.f18033b[i];
    }

    public final /* synthetic */ Object clone() throws CloneNotSupportedException {
        int i = this.f18034c;
        C7697t4 t4Var = new C7697t4(i);
        System.arraycopy(this.f18032a, 0, t4Var.f18032a, 0, i);
        for (int i2 = 0; i2 < i; i2++) {
            C7704u4[] u4VarArr = this.f18033b;
            if (u4VarArr[i2] != null) {
                t4Var.f18033b[i2] = (C7704u4) u4VarArr[i2].clone();
            }
        }
        t4Var.f18034c = i;
        return t4Var;
    }

    /* renamed from: d */
    public final boolean m19790d() {
        return this.f18034c == 0;
    }

    /* renamed from: e */
    public final int m19789e() {
        return this.f18034c;
    }

    public final boolean equals(Object obj) {
        boolean z;
        boolean z2;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C7697t4)) {
            return false;
        }
        C7697t4 t4Var = (C7697t4) obj;
        int i = this.f18034c;
        if (i != t4Var.f18034c) {
            return false;
        }
        int[] iArr = this.f18032a;
        int[] iArr2 = t4Var.f18032a;
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
        C7704u4[] u4VarArr = this.f18033b;
        C7704u4[] u4VarArr2 = t4Var.f18033b;
        int i3 = this.f18034c;
        int i4 = 0;
        while (true) {
            if (i4 >= i3) {
                z2 = true;
                break;
            } else if (!u4VarArr[i4].equals(u4VarArr2[i4])) {
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
        for (int i2 = 0; i2 < this.f18034c; i2++) {
            i = (((i * 31) + this.f18032a[i2]) * 31) + this.f18033b[i2].hashCode();
        }
        return i;
    }
}
