package p193e.p194a.p619d.p637c0.p642z1;

import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.d.c0.z1.a */
/* loaded from: classes15-dex2jar.jar:e/a/d/c0/z1/a.class */
public final class C11588a {

    /* renamed from: a */
    public final int f33974a;

    /* renamed from: b */
    public final String f33975b;

    /* renamed from: c */
    public final String f33976c;

    /* renamed from: d */
    public final String f33977d;

    /* renamed from: e */
    public final String f33978e;

    /* renamed from: f */
    public final long f33979f;

    public C11588a(int i, String str, String str2, String str3, String str4, long j) {
        C22128a.m8699J0(str, "rtcToken", str2, "rtcMode", str3, "rtcSecret", str4, "rtmToken");
        this.f33974a = i;
        this.f33975b = str;
        this.f33976c = str2;
        this.f33977d = str3;
        this.f33978e = str4;
        this.f33979f = j;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C11588a)) {
                return false;
            }
            C11588a c11588a = (C11588a) obj;
            return this.f33974a == c11588a.f33974a && l.a(this.f33975b, c11588a.f33975b) && l.a(this.f33976c, c11588a.f33976c) && l.a(this.f33977d, c11588a.f33977d) && l.a(this.f33978e, c11588a.f33978e) && this.f33979f == c11588a.f33979f;
        }
        return true;
    }

    public int hashCode() {
        int i = this.f33974a;
        String str = this.f33975b;
        int i2 = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f33976c;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.f33977d;
        int hashCode3 = str3 != null ? str3.hashCode() : 0;
        String str4 = this.f33978e;
        if (str4 != null) {
            i2 = str4.hashCode();
        }
        return (((((((((i * 31) + hashCode) * 31) + hashCode2) * 31) + hashCode3) * 31) + i2) * 31) + C4876d.m34274a(this.f33979f);
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("AgoraInfo(rtcUid=");
        m8728C.append(this.f33974a);
        m8728C.append(", rtcToken=");
        m8728C.append(this.f33975b);
        m8728C.append(", rtcMode=");
        m8728C.append(this.f33976c);
        m8728C.append(", rtcSecret=");
        m8728C.append(this.f33977d);
        m8728C.append(", rtmToken=");
        m8728C.append(this.f33978e);
        m8728C.append(", rtmExpiryEpochSeconds=");
        return C22128a.m8693K2(m8728C, this.f33979f, ")");
    }
}
