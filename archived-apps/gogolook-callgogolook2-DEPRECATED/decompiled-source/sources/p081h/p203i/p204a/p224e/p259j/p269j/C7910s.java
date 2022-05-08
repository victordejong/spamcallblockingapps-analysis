package p081h.p203i.p204a.p224e.p259j.p269j;

import java.io.IOException;
/* renamed from: h.i.a.e.j.j.s */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/j/s.class */
public final class C7910s extends AbstractC7788d5<C7910s> {

    /* renamed from: e */
    public static volatile C7910s[] f18538e;

    /* renamed from: c */
    public String f18539c = null;

    /* renamed from: d */
    public int[] f18540d = C7866m5.f18418a;

    public C7910s() {
        this.f18218b = null;
        this.f18376a = -1;
    }

    /* renamed from: d */
    public static C7910s[] m19043d() {
        if (f18538e == null) {
            synchronized (C7822h5.f18340b) {
                if (f18538e == null) {
                    f18538e = new C7910s[0];
                }
            }
        }
        return f18538e;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7788d5, p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7843j5
    /* renamed from: a */
    public final int mo18862a() {
        int[] iArr;
        int a = super.mo18862a();
        String str = this.f18539c;
        int i = a;
        if (str != null) {
            i = a + C7764a5.m19528b(1, str);
        }
        int[] iArr2 = this.f18540d;
        int i2 = i;
        if (iArr2 != null) {
            i2 = i;
            if (iArr2.length > 0) {
                int i3 = 0;
                int i4 = 0;
                while (true) {
                    iArr = this.f18540d;
                    if (i3 >= iArr.length) {
                        break;
                    }
                    i4 += C7764a5.m19526c(iArr[i3]);
                    i3++;
                }
                i2 = i + i4 + (iArr.length * 1);
            }
        }
        return i2;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7843j5
    /* renamed from: a */
    public final /* synthetic */ AbstractC7843j5 mo18860a(C7970z4 z4Var) throws IOException {
        m19044b(z4Var);
        return this;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7788d5, p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7843j5
    /* renamed from: a */
    public final void mo18861a(C7764a5 a5Var) throws IOException {
        String str = this.f18539c;
        if (str != null) {
            a5Var.m19538a(1, str);
        }
        int[] iArr = this.f18540d;
        if (iArr != null && iArr.length > 0) {
            int i = 0;
            while (true) {
                int[] iArr2 = this.f18540d;
                if (i >= iArr2.length) {
                    break;
                }
                a5Var.m19531b(2, iArr2[i]);
                i++;
            }
        }
        super.mo18861a(a5Var);
    }

    /* renamed from: b */
    public final C7910s m19044b(C7970z4 z4Var) throws IOException {
        while (true) {
            int c = z4Var.m18726c();
            if (c == 0) {
                return this;
            }
            if (c == 10) {
                this.f18539c = z4Var.m18729b();
            } else if (c == 16) {
                int a = C7866m5.m19172a(z4Var, 16);
                int[] iArr = new int[a];
                int i = 0;
                for (int i2 = 0; i2 < a; i2++) {
                    if (i2 != 0) {
                        z4Var.m18726c();
                    }
                    int a2 = z4Var.m18735a();
                    try {
                        int d = z4Var.m18724d();
                        C7882o.m19119a(d);
                        iArr[i] = d;
                        i++;
                    } catch (IllegalArgumentException e) {
                        z4Var.m18734a(a2);
                        m19482a(z4Var, c);
                    }
                }
                if (i != 0) {
                    int[] iArr2 = this.f18540d;
                    int length = iArr2 == null ? 0 : iArr2.length;
                    if (length == 0 && i == iArr.length) {
                        this.f18540d = iArr;
                    } else {
                        int[] iArr3 = new int[length + i];
                        if (length != 0) {
                            System.arraycopy(this.f18540d, 0, iArr3, 0, length);
                        }
                        System.arraycopy(iArr, 0, iArr3, length, i);
                        this.f18540d = iArr3;
                    }
                }
            } else if (c == 18) {
                int d2 = z4Var.m18723d(z4Var.m18724d());
                int a3 = z4Var.m18735a();
                int i3 = 0;
                while (z4Var.m18717h() > 0) {
                    try {
                        C7882o.m19119a(z4Var.m18724d());
                        i3++;
                    } catch (IllegalArgumentException e2) {
                    }
                }
                if (i3 != 0) {
                    z4Var.m18734a(a3);
                    int[] iArr4 = this.f18540d;
                    int length2 = iArr4 == null ? 0 : iArr4.length;
                    int[] iArr5 = new int[i3 + length2];
                    int i4 = length2;
                    if (length2 != 0) {
                        System.arraycopy(this.f18540d, 0, iArr5, 0, length2);
                        i4 = length2;
                    }
                    while (z4Var.m18717h() > 0) {
                        int a4 = z4Var.m18735a();
                        try {
                            int d3 = z4Var.m18724d();
                            C7882o.m19119a(d3);
                            iArr5[i4] = d3;
                            i4++;
                        } catch (IllegalArgumentException e3) {
                            z4Var.m18734a(a4);
                            m19482a(z4Var, 16);
                        }
                    }
                    this.f18540d = iArr5;
                }
                z4Var.m18721e(d2);
            } else if (!super.m19482a(z4Var, c)) {
                return this;
            }
        }
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C7910s)) {
            return false;
        }
        C7910s sVar = (C7910s) obj;
        String str = this.f18539c;
        if (str == null) {
            if (sVar.f18539c != null) {
                return false;
            }
        } else if (!str.equals(sVar.f18539c)) {
            return false;
        }
        if (!C7822h5.m19356a(this.f18540d, sVar.f18540d)) {
            return false;
        }
        C7805f5 f5Var = this.f18218b;
        if (f5Var != null && !f5Var.m19402d()) {
            return this.f18218b.equals(sVar.f18218b);
        }
        C7805f5 f5Var2 = sVar.f18218b;
        return f5Var2 == null || f5Var2.m19402d();
    }

    public final int hashCode() {
        int hashCode = C7910s.class.getName().hashCode();
        String str = this.f18539c;
        int hashCode2 = str == null ? 0 : str.hashCode();
        int a = C7822h5.m19357a(this.f18540d);
        C7805f5 f5Var = this.f18218b;
        int i = 0;
        if (f5Var != null) {
            i = f5Var.m19402d() ? 0 : this.f18218b.hashCode();
        }
        return ((((((hashCode + 527) * 31) + hashCode2) * 31) + a) * 31) + i;
    }
}
