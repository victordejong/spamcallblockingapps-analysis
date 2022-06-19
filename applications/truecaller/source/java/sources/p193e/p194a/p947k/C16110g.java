package p193e.p194a.p947k;

import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.k.g */
/* loaded from: classes15-dex2jar.jar:e/a/k/g.class */
public final class C16110g {

    /* renamed from: a */
    public final String f45381a;

    /* renamed from: b */
    public final boolean f45382b;

    /* renamed from: c */
    public final int f45383c;

    public C16110g(String str, boolean z, int i) {
        l.e(str, "number");
        this.f45381a = str;
        this.f45382b = z;
        this.f45383c = i;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C16110g)) {
                return false;
            }
            C16110g c16110g = (C16110g) obj;
            return l.a(this.f45381a, c16110g.f45381a) && this.f45382b == c16110g.f45382b && this.f45383c == c16110g.f45383c;
        }
        return true;
    }

    public int hashCode() {
        String str = this.f45381a;
        int hashCode = str != null ? str.hashCode() : 0;
        boolean z = this.f45382b;
        int i = z ? 1 : 0;
        if (z) {
            i = 1;
        }
        return (((hashCode * 31) + i) * 31) + this.f45383c;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("SupportVideoIdAvailability(number=");
        m8728C.append(this.f45381a);
        m8728C.append(", enabled=");
        m8728C.append(this.f45382b);
        m8728C.append(", version=");
        return C22128a.m8697J2(m8728C, this.f45383c, ")");
    }
}
