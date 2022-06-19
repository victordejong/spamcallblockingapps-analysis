package p193e.p194a.p947k.p973n.p974d;

import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.k.n.d.c */
/* loaded from: classes15-dex2jar.jar:e/a/k/n/d/c.class */
public final class C16161c {

    /* renamed from: a */
    public final String f45606a;

    /* renamed from: b */
    public final int f45607b;

    /* renamed from: c */
    public final int f45608c;

    public C16161c(String str, int i, int i2) {
        l.e(str, "number");
        this.f45606a = str;
        this.f45607b = i;
        this.f45608c = i2;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C16161c)) {
                return false;
            }
            C16161c c16161c = (C16161c) obj;
            return l.a(this.f45606a, c16161c.f45606a) && this.f45607b == c16161c.f45607b && this.f45608c == c16161c.f45608c;
        }
        return true;
    }

    public int hashCode() {
        String str = this.f45606a;
        return ((((str != null ? str.hashCode() : 0) * 31) + this.f45607b) * 31) + this.f45608c;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("VideoIdAvailabilityDto(number=");
        m8728C.append(this.f45606a);
        m8728C.append(", enabled=");
        m8728C.append(this.f45607b);
        m8728C.append(", version=");
        return C22128a.m8697J2(m8728C, this.f45608c, ")");
    }
}
