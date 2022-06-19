package p193e.p194a.p619d.p637c0;

import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.d.c0.x0 */
/* loaded from: classes15-dex2jar.jar:e/a/d/c0/x0.class */
public final class C11513x0 {

    /* renamed from: a */
    public final String f33804a;

    /* renamed from: b */
    public final int f33805b;

    /* renamed from: c */
    public final int f33806c;

    public C11513x0(String str, int i, int i2) {
        this.f33804a = str;
        this.f33805b = i;
        this.f33806c = i2;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C11513x0)) {
                return false;
            }
            C11513x0 c11513x0 = (C11513x0) obj;
            return l.a(this.f33804a, c11513x0.f33804a) && this.f33805b == c11513x0.f33805b && this.f33806c == c11513x0.f33806c;
        }
        return true;
    }

    public int hashCode() {
        String str = this.f33804a;
        return ((((str != null ? str.hashCode() : 0) * 31) + this.f33805b) * 31) + this.f33806c;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("VoipHistoryPeer(number=");
        m8728C.append(this.f33804a);
        m8728C.append(", status=");
        m8728C.append(this.f33805b);
        m8728C.append(", position=");
        return C22128a.m8697J2(m8728C, this.f33806c, ")");
    }
}
