package p193e.p194a.p804h.p806b.p807d.p808a.p809a.p810e0;

import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.h.b.d.a.a.e0.a */
/* loaded from: classes3-dex2jar.jar:e/a/h/b/d/a/a/e0/a.class */
public final class C14562a {

    /* renamed from: a */
    public final int f41894a;

    /* renamed from: b */
    public final int f41895b;

    /* renamed from: c */
    public final String f41896c;

    public C14562a(int i, int i2, String str) {
        l.e(str, "linePhoneNumber");
        this.f41894a = i;
        this.f41895b = i2;
        this.f41896c = str;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C14562a)) {
                return false;
            }
            C14562a c14562a = (C14562a) obj;
            return this.f41894a == c14562a.f41894a && this.f41895b == c14562a.f41895b && l.a(this.f41896c, c14562a.f41896c);
        }
        return true;
    }

    public int hashCode() {
        int i = this.f41894a;
        int i2 = this.f41895b;
        String str = this.f41896c;
        return (((i * 31) + i2) * 31) + (str != null ? str.hashCode() : 0);
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("Hotline(iconRes=");
        m8728C.append(this.f41894a);
        m8728C.append(", titleRes=");
        m8728C.append(this.f41895b);
        m8728C.append(", linePhoneNumber=");
        return C22128a.m8618h(m8728C, this.f41896c, ")");
    }
}
