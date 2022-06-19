package p193e.p194a.p852i.p862c.p863a;

import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ScreenDensity;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.i.c.a.a0 */
/* loaded from: classes3-dex2jar.jar:e/a/i/c/a/a0.class */
public final class C15001a0 {

    /* renamed from: a */
    public final String f42812a;

    /* renamed from: b */
    public final String f42813b;

    /* renamed from: c */
    public final String f42814c;

    /* renamed from: d */
    public final String f42815d;

    public C15001a0() {
        this(null, null, null, null, 15);
    }

    public C15001a0(String str, String str2, String str3, String str4) {
        C22128a.m8699J0(str, "publisherName", str2, "partnerName", str3, "eCpm", str4, "campaignType");
        this.f42812a = str;
        this.f42813b = str2;
        this.f42814c = str3;
        this.f42815d = str4;
    }

    public /* synthetic */ C15001a0(String str, String str2, String str3, String str4, int i) {
        this((i & 1) != 0 ? AnalyticsConstants.NOT_AVAILABLE : null, (i & 2) != 0 ? AnalyticsConstants.NOT_AVAILABLE : str2, (i & 4) != 0 ? ScreenDensity.UNKNOWN : str3, (i & 8) != 0 ? "unknown" : null);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C15001a0)) {
                return false;
            }
            C15001a0 c15001a0 = (C15001a0) obj;
            return l.a(this.f42812a, c15001a0.f42812a) && l.a(this.f42813b, c15001a0.f42813b) && l.a(this.f42814c, c15001a0.f42814c) && l.a(this.f42815d, c15001a0.f42815d);
        }
        return true;
    }

    public int hashCode() {
        String str = this.f42812a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f42813b;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.f42814c;
        int hashCode3 = str3 != null ? str3.hashCode() : 0;
        String str4 = this.f42815d;
        if (str4 != null) {
            i = str4.hashCode();
        }
        return (((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("ResponseInfo(publisherName=");
        m8728C.append(this.f42812a);
        m8728C.append(", partnerName=");
        m8728C.append(this.f42813b);
        m8728C.append(", eCpm=");
        m8728C.append(this.f42814c);
        m8728C.append(", campaignType=");
        return C22128a.m8618h(m8728C, this.f42815d, ")");
    }
}
