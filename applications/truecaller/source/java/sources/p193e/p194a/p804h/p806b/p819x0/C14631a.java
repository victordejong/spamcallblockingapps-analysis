package p193e.p194a.p804h.p806b.p819x0;

import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.h.b.x0.a */
/* loaded from: classes3-dex2jar.jar:e/a/h/b/x0/a.class */
public final class C14631a {

    /* renamed from: a */
    public final int f42112a;

    /* renamed from: b */
    public final int f42113b;

    /* renamed from: c */
    public final String f42114c;

    public C14631a(int i, int i2, String str) {
        l.e(str, "premiumPage");
        this.f42112a = i;
        this.f42113b = i2;
        this.f42114c = str;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C14631a)) {
                return false;
            }
            C14631a c14631a = (C14631a) obj;
            return this.f42112a == c14631a.f42112a && this.f42113b == c14631a.f42113b && l.a(this.f42114c, c14631a.f42114c);
        }
        return true;
    }

    public int hashCode() {
        int i = this.f42112a;
        int i2 = this.f42113b;
        String str = this.f42114c;
        return (((i * 31) + i2) * 31) + (str != null ? str.hashCode() : 0);
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("SuggestedPremium(iconRes=");
        m8728C.append(this.f42112a);
        m8728C.append(", titleRes=");
        m8728C.append(this.f42113b);
        m8728C.append(", premiumPage=");
        return C22128a.m8618h(m8728C, this.f42114c, ")");
    }
}
