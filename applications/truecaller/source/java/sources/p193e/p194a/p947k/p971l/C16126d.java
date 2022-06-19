package p193e.p194a.p947k.p971l;

import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.k.l.d */
/* loaded from: classes15-dex2jar.jar:e/a/k/l/d.class */
public final class C16126d {

    /* renamed from: a */
    public final String f45438a;

    /* renamed from: b */
    public final boolean f45439b;

    /* renamed from: c */
    public final int f45440c;

    public C16126d(String str, boolean z, int i) {
        l.e(str, "number");
        this.f45438a = str;
        this.f45439b = z;
        this.f45440c = i;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C16126d)) {
                return false;
            }
            C16126d c16126d = (C16126d) obj;
            return l.a(this.f45438a, c16126d.f45438a) && this.f45439b == c16126d.f45439b && this.f45440c == c16126d.f45440c;
        }
        return true;
    }

    public int hashCode() {
        String str = this.f45438a;
        int hashCode = str != null ? str.hashCode() : 0;
        boolean z = this.f45439b;
        int i = z ? 1 : 0;
        if (z) {
            i = 1;
        }
        return (((hashCode * 31) + i) * 31) + this.f45440c;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("VideoIdAvailability(number=");
        m8728C.append(this.f45438a);
        m8728C.append(", enabled=");
        m8728C.append(this.f45439b);
        m8728C.append(", version=");
        return C22128a.m8697J2(m8728C, this.f45440c, ")");
    }
}
