package p193e.p194a.p947k.p969c;

import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import s1.z.c.l;
/* renamed from: e.a.k.c.g */
/* loaded from: classes15-dex2jar.jar:e/a/k/c/g.class */
public final class C15986g {

    /* renamed from: a */
    public final String f45067a;

    /* renamed from: b */
    public final long f45068b;

    /* renamed from: c */
    public final long f45069c;

    public C15986g(String str, long j, long j2) {
        l.e(str, "url");
        this.f45067a = str;
        this.f45068b = j;
        this.f45069c = j2;
    }

    /* renamed from: a */
    public final int m18039a() {
        long j = this.f45069c;
        if (j <= 0) {
            return 0;
        }
        return C25225a.m4005I2((this.f45068b / j) * 100);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C15986g)) {
                return false;
            }
            C15986g c15986g = (C15986g) obj;
            return l.a(this.f45067a, c15986g.f45067a) && this.f45068b == c15986g.f45068b && this.f45069c == c15986g.f45069c;
        }
        return true;
    }

    public int hashCode() {
        String str = this.f45067a;
        return ((((str != null ? str.hashCode() : 0) * 31) + C4876d.m34274a(this.f45068b)) * 31) + C4876d.m34274a(this.f45069c);
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("CachedVideoFileInfo(url=");
        m8728C.append(this.f45067a);
        m8728C.append(", size=");
        m8728C.append(this.f45068b);
        m8728C.append(", fileSize=");
        return C22128a.m8693K2(m8728C, this.f45069c, ")");
    }
}
