package p193e.p194a.p619d.p663x.p665r;

import com.razorpay.AnalyticsConstants;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.f0.r;
import s1.z.c.l;
/* renamed from: e.a.d.x.r.i */
/* loaded from: classes15-dex2jar.jar:e/a/d/x/r/i.class */
public final class C12262i {

    /* renamed from: a */
    public final String f35822a;

    /* renamed from: b */
    public final String f35823b;

    /* renamed from: c */
    public final String f35824c;

    /* renamed from: d */
    public final long f35825d;

    public C12262i(String str, String str2, String str3, long j) {
        C22128a.m8703I0(str, AnalyticsConstants.KEY, str2, "value", str3, "lastUpdateUserId");
        this.f35822a = str;
        this.f35823b = str2;
        this.f35824c = str3;
        this.f35825d = j;
    }

    /* renamed from: a */
    public final boolean m23355a(String str) {
        l.e(str, AnalyticsConstants.KEY);
        return str.length() <= 32 ? l.a(this.f35822a, str) : r.y(str, this.f35822a, false, 2);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C12262i)) {
                return false;
            }
            C12262i c12262i = (C12262i) obj;
            return l.a(this.f35822a, c12262i.f35822a) && l.a(this.f35823b, c12262i.f35823b) && l.a(this.f35824c, c12262i.f35824c) && this.f35825d == c12262i.f35825d;
        }
        return true;
    }

    public int hashCode() {
        String str = this.f35822a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f35823b;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.f35824c;
        if (str3 != null) {
            i = str3.hashCode();
        }
        return (((((hashCode * 31) + hashCode2) * 31) + i) * 31) + C4876d.m34274a(this.f35825d);
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("RtmChannelAttribute(key=");
        m8728C.append(this.f35822a);
        m8728C.append(", value=");
        m8728C.append(this.f35823b);
        m8728C.append(", lastUpdateUserId=");
        m8728C.append(this.f35824c);
        m8728C.append(", timestamp=");
        return C22128a.m8693K2(m8728C, this.f35825d, ")");
    }
}
