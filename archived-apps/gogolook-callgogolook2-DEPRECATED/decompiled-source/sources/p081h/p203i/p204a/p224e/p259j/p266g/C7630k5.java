package p081h.p203i.p204a.p224e.p259j.p266g;

import java.io.IOException;
import java.util.Arrays;
/* renamed from: h.i.a.e.j.g.k5 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/g/k5.class */
public final class C7630k5 extends C7683r4<C7630k5> implements Cloneable {

    /* renamed from: c */
    public byte[] f17899c = C7739z4.f18139e;

    /* renamed from: d */
    public String f17900d = "";

    /* renamed from: e */
    public byte[][] f17901e = C7739z4.f18138d;

    public C7630k5() {
        this.f18023b = null;
        this.f18071a = -1;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p266g.C7683r4, p081h.p203i.p204a.p224e.p259j.p266g.C7718w4
    /* renamed from: a */
    public final void mo19697a(C7669p4 p4Var) throws IOException {
        if (!Arrays.equals(this.f17899c, C7739z4.f18139e)) {
            p4Var.m19848a(1, this.f17899c);
        }
        byte[][] bArr = this.f17901e;
        if (bArr != null && bArr.length > 0) {
            int i = 0;
            while (true) {
                byte[][] bArr2 = this.f17901e;
                if (i >= bArr2.length) {
                    break;
                }
                byte[] bArr3 = bArr2[i];
                if (bArr3 != null) {
                    p4Var.m19848a(2, bArr3);
                }
                i++;
            }
        }
        String str = this.f17900d;
        if (str != null && !str.equals("")) {
            p4Var.m19850a(4, this.f17900d);
        }
        super.mo19697a(p4Var);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p266g.C7683r4, p081h.p203i.p204a.p224e.p259j.p266g.C7718w4
    /* renamed from: e */
    public final int mo19694e() {
        int e = super.mo19694e();
        int i = e;
        if (!Arrays.equals(this.f17899c, C7739z4.f18139e)) {
            i = e + C7669p4.m19836b(1, this.f17899c);
        }
        byte[][] bArr = this.f17901e;
        int i2 = i;
        if (bArr != null) {
            i2 = i;
            if (bArr.length > 0) {
                int i3 = 0;
                int i4 = 0;
                int i5 = 0;
                while (true) {
                    byte[][] bArr2 = this.f17901e;
                    if (i3 >= bArr2.length) {
                        break;
                    }
                    byte[] bArr3 = bArr2[i3];
                    i4 = i4;
                    i5 = i5;
                    if (bArr3 != null) {
                        i5++;
                        i4 += C7669p4.m19834b(bArr3);
                    }
                    i3++;
                }
                i2 = i + i4 + (i5 * 1);
            }
        }
        String str = this.f17900d;
        int i6 = i2;
        if (str != null) {
            i6 = i2;
            if (!str.equals("")) {
                i6 = i2 + C7669p4.m19837b(4, this.f17900d);
            }
        }
        return i6;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C7630k5)) {
            return false;
        }
        C7630k5 k5Var = (C7630k5) obj;
        if (!Arrays.equals(this.f17899c, k5Var.f17899c)) {
            return false;
        }
        String str = this.f17900d;
        if (str == null) {
            if (k5Var.f17900d != null) {
                return false;
            }
        } else if (!str.equals(k5Var.f17900d)) {
            return false;
        }
        if (!C7711v4.m19728a(this.f17901e, k5Var.f17901e)) {
            return false;
        }
        C7697t4 t4Var = this.f18023b;
        if (t4Var != null && !t4Var.m19790d()) {
            return this.f18023b.equals(k5Var.f18023b);
        }
        C7697t4 t4Var2 = k5Var.f18023b;
        return t4Var2 == null || t4Var2.m19790d();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p266g.C7683r4, p081h.p203i.p204a.p224e.p259j.p266g.C7718w4
    /* renamed from: f */
    public final /* synthetic */ C7718w4 mo19693f() throws CloneNotSupportedException {
        return (C7630k5) clone();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p266g.C7683r4
    /* renamed from: g */
    public final /* synthetic */ C7630k5 mo19812g() throws CloneNotSupportedException {
        return (C7630k5) clone();
    }

    /* renamed from: h */
    public final C7630k5 clone() {
        try {
            C7630k5 k5Var = (C7630k5) super.clone();
            byte[][] bArr = this.f17901e;
            if (bArr != null && bArr.length > 0) {
                k5Var.f17901e = (byte[][]) bArr.clone();
            }
            return k5Var;
        } catch (CloneNotSupportedException e) {
            throw new AssertionError(e);
        }
    }

    public final int hashCode() {
        int hashCode = C7630k5.class.getName().hashCode();
        int hashCode2 = Arrays.hashCode(this.f17899c);
        String str = this.f17900d;
        int hashCode3 = str == null ? 0 : str.hashCode();
        int a = C7711v4.m19729a(this.f17901e);
        C7697t4 t4Var = this.f18023b;
        int i = 0;
        if (t4Var != null) {
            i = t4Var.m19790d() ? 0 : this.f18023b.hashCode();
        }
        return ((((((((((hashCode + 527) * 31) + hashCode2) * 31) + hashCode3) * 31) + a) * 31) + 1237) * 31) + i;
    }
}
