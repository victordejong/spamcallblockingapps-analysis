package p193e.p194a.p437c.p438a.p507p.p510c;

import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.c.a.p.c.b */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/p/c/b.class */
public final class C9458b {

    /* renamed from: a */
    public final long f28698a;

    /* renamed from: b */
    public final long f28699b;

    /* renamed from: c */
    public final String f28700c;

    public C9458b(long j, long j2, String str) {
        l.e(str, "senderId");
        this.f28698a = j;
        this.f28699b = j2;
        this.f28700c = str;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C9458b)) {
                return false;
            }
            C9458b c9458b = (C9458b) obj;
            return this.f28698a == c9458b.f28698a && this.f28699b == c9458b.f28699b && l.a(this.f28700c, c9458b.f28700c);
        }
        return true;
    }

    public int hashCode() {
        int m34274a = C4876d.m34274a(this.f28698a);
        int m34274a2 = C4876d.m34274a(this.f28699b);
        String str = this.f28700c;
        return (((m34274a * 31) + m34274a2) * 31) + (str != null ? str.hashCode() : 0);
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("Coordinates(msgId=");
        m8728C.append(this.f28698a);
        m8728C.append(", convId=");
        m8728C.append(this.f28699b);
        m8728C.append(", senderId=");
        return C22128a.m8618h(m8728C, this.f28700c, ")");
    }
}
