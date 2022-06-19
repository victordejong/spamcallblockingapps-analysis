package p193e.p194a.p619d.p666y.p667a;

import com.razorpay.AnalyticsConstants;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.d.y.a.b */
/* loaded from: classes15-dex2jar.jar:e/a/d/y/a/b.class */
public final class C12288b {

    /* renamed from: a */
    public final String f35917a;

    /* renamed from: b */
    public final long f35918b;

    public C12288b(String str, long j) {
        l.e(str, AnalyticsConstants.NAME);
        this.f35917a = str;
        this.f35918b = j;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C12288b)) {
                return false;
            }
            C12288b c12288b = (C12288b) obj;
            return l.a(this.f35917a, c12288b.f35917a) && this.f35918b == c12288b.f35918b;
        }
        return true;
    }

    public int hashCode() {
        String str = this.f35917a;
        return ((str != null ? str.hashCode() : 0) * 31) + C4876d.m34274a(this.f35918b);
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("BlockedVoipCall(name=");
        m8728C.append(this.f35917a);
        m8728C.append(", timestamp=");
        return C22128a.m8693K2(m8728C, this.f35918b, ")");
    }
}
