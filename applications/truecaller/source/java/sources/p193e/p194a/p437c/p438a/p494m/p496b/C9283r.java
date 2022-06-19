package p193e.p194a.p437c.p438a.p494m.p496b;

import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.c.a.m.b.r */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/m/b/r.class */
public final class C9283r {

    /* renamed from: a */
    public final String f28248a;

    /* renamed from: b */
    public final String f28249b;

    /* renamed from: c */
    public final long f28250c;

    /* renamed from: d */
    public final int f28251d;

    /* renamed from: e */
    public final int f28252e;

    public C9283r(String str, String str2, long j, int i, int i2) {
        l.e(str, "maskedMessageBody");
        l.e(str2, "address");
        this.f28248a = str;
        this.f28249b = str2;
        this.f28250c = j;
        this.f28251d = i;
        this.f28252e = i2;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C9283r)) {
                return false;
            }
            C9283r c9283r = (C9283r) obj;
            return l.a(this.f28248a, c9283r.f28248a) && l.a(this.f28249b, c9283r.f28249b) && this.f28250c == c9283r.f28250c && this.f28251d == c9283r.f28251d && this.f28252e == c9283r.f28252e;
        }
        return true;
    }

    public int hashCode() {
        String str = this.f28248a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f28249b;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return (((((((hashCode * 31) + i) * 31) + C4876d.m34274a(this.f28250c)) * 31) + this.f28251d) * 31) + this.f28252e;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("SmsBackupFeedback(maskedMessageBody=");
        m8728C.append(this.f28248a);
        m8728C.append(", address=");
        m8728C.append(this.f28249b);
        m8728C.append(", dateTime=");
        m8728C.append(this.f28250c);
        m8728C.append(", isSpam=");
        m8728C.append(this.f28251d);
        m8728C.append(", isPassingFilter=");
        return C22128a.m8697J2(m8728C, this.f28252e, ")");
    }
}
