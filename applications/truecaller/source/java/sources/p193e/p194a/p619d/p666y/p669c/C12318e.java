package p193e.p194a.p619d.p666y.p669c;

import com.razorpay.AnalyticsConstants;
import com.truecaller.voip.VoipUserBadge;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.d.y.c.e */
/* loaded from: classes15-dex2jar.jar:e/a/d/y/c/e.class */
public final class C12318e {

    /* renamed from: a */
    public final String f35980a;

    /* renamed from: b */
    public final String f35981b;

    /* renamed from: c */
    public final String f35982c;

    /* renamed from: d */
    public final VoipUserBadge f35983d;

    /* renamed from: e */
    public final boolean f35984e;

    /* renamed from: f */
    public final long f35985f;

    public C12318e(String str, String str2, String str3, VoipUserBadge voipUserBadge, boolean z, long j) {
        l.e(str, AnalyticsConstants.NAME);
        l.e(str2, "number");
        this.f35980a = str;
        this.f35981b = str2;
        this.f35982c = str3;
        this.f35983d = voipUserBadge;
        this.f35984e = z;
        this.f35985f = j;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C12318e)) {
                return false;
            }
            C12318e c12318e = (C12318e) obj;
            return l.a(this.f35980a, c12318e.f35980a) && l.a(this.f35981b, c12318e.f35981b) && l.a(this.f35982c, c12318e.f35982c) && l.a(this.f35983d, c12318e.f35983d) && this.f35984e == c12318e.f35984e && this.f35985f == c12318e.f35985f;
        }
        return true;
    }

    public int hashCode() {
        String str = this.f35980a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f35981b;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.f35982c;
        int hashCode3 = str3 != null ? str3.hashCode() : 0;
        VoipUserBadge voipUserBadge = this.f35983d;
        if (voipUserBadge != null) {
            i = voipUserBadge.hashCode();
        }
        boolean z = this.f35984e;
        int i2 = z ? 1 : 0;
        if (z) {
            i2 = 1;
        }
        return (((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + i) * 31) + i2) * 31) + C4876d.m34274a(this.f35985f);
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("MissedVoipCall(name=");
        m8728C.append(this.f35980a);
        m8728C.append(", number=");
        m8728C.append(this.f35981b);
        m8728C.append(", pictureUrl=");
        m8728C.append(this.f35982c);
        m8728C.append(", badge=");
        m8728C.append(this.f35983d);
        m8728C.append(", isBlocked=");
        m8728C.append(this.f35984e);
        m8728C.append(", timestamp=");
        return C22128a.m8693K2(m8728C, this.f35985f, ")");
    }
}
