package p193e.p194a.p947k.p973n.p977g;

import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.k.n.g.a */
/* loaded from: classes15-dex2jar.jar:e/a/k/n/g/a.class */
public final class C16209a {

    /* renamed from: a */
    public final String f45709a;

    /* renamed from: b */
    public final String f45710b;

    /* renamed from: c */
    public final String f45711c;

    /* renamed from: d */
    public final long f45712d;

    /* renamed from: e */
    public final long f45713e;

    /* renamed from: f */
    public final boolean f45714f;

    public C16209a(String str, String str2, String str3, long j, long j2, boolean z) {
        l.e(str, "id");
        l.e(str3, "videoUrl");
        this.f45709a = str;
        this.f45710b = str2;
        this.f45711c = str3;
        this.f45712d = j;
        this.f45713e = j2;
        this.f45714f = z;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C16209a)) {
                return false;
            }
            C16209a c16209a = (C16209a) obj;
            return l.a(this.f45709a, c16209a.f45709a) && l.a(this.f45710b, c16209a.f45710b) && l.a(this.f45711c, c16209a.f45711c) && this.f45712d == c16209a.f45712d && this.f45713e == c16209a.f45713e && this.f45714f == c16209a.f45714f;
        }
        return true;
    }

    public int hashCode() {
        String str = this.f45709a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f45710b;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.f45711c;
        if (str3 != null) {
            i = str3.hashCode();
        }
        int m34274a = C4876d.m34274a(this.f45712d);
        int m34274a2 = C4876d.m34274a(this.f45713e);
        boolean z = this.f45714f;
        int i2 = z ? 1 : 0;
        if (z) {
            i2 = 1;
        }
        return (((((((((hashCode * 31) + hashCode2) * 31) + i) * 31) + m34274a) * 31) + m34274a2) * 31) + i2;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("OutgoingVideoId(id=");
        m8728C.append(this.f45709a);
        m8728C.append(", rawVideoPath=");
        m8728C.append(this.f45710b);
        m8728C.append(", videoUrl=");
        m8728C.append(this.f45711c);
        m8728C.append(", sizeBytes=");
        m8728C.append(this.f45712d);
        m8728C.append(", durationMillis=");
        m8728C.append(this.f45713e);
        m8728C.append(", mirrorPlayback=");
        return C22128a.m8590o(m8728C, this.f45714f, ")");
    }
}
