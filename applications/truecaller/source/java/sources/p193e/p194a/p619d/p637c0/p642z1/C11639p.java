package p193e.p194a.p619d.p637c0.p642z1;

import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.d.c0.z1.p */
/* loaded from: classes15-dex2jar.jar:e/a/d/c0/z1/p.class */
public final class C11639p {

    /* renamed from: a */
    public final String f34173a;

    /* renamed from: b */
    public final long f34174b;

    /* renamed from: c */
    public final String f34175c;

    /* renamed from: d */
    public final int f34176d;

    public C11639p(String str, long j, String str2, int i) {
        l.e(str, "voipId");
        l.e(str2, "number");
        this.f34173a = str;
        this.f34174b = j;
        this.f34175c = str2;
        this.f34176d = i;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C11639p)) {
                return false;
            }
            C11639p c11639p = (C11639p) obj;
            return l.a(this.f34173a, c11639p.f34173a) && this.f34174b == c11639p.f34174b && l.a(this.f34175c, c11639p.f34175c) && this.f34176d == c11639p.f34176d;
        }
        return true;
    }

    public int hashCode() {
        String str = this.f34173a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        int m34274a = C4876d.m34274a(this.f34174b);
        String str2 = this.f34175c;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return (((((hashCode * 31) + m34274a) * 31) + i) * 31) + this.f34176d;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("PeerInfo(voipId=");
        m8728C.append(this.f34173a);
        m8728C.append(", voipIdExpiryEpochSeconds=");
        m8728C.append(this.f34174b);
        m8728C.append(", number=");
        m8728C.append(this.f34175c);
        m8728C.append(", rtcUid=");
        return C22128a.m8697J2(m8728C, this.f34176d, ")");
    }
}
