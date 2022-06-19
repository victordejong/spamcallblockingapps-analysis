package p193e.p194a.p437c.p438a.p439a.p440a.p441a;

import com.razorpay.AnalyticsConstants;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.c.a.a.a.a.b */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/a/a/a/b.class */
public final class C8662b {

    /* renamed from: a */
    public final String f26535a;

    /* renamed from: b */
    public final String f26536b;

    /* renamed from: c */
    public final boolean f26537c;

    public C8662b(String str, String str2, boolean z) {
        l.e(str, "feature");
        l.e(str2, AnalyticsConstants.CONTEXT);
        this.f26535a = str;
        this.f26536b = str2;
        this.f26537c = z;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C8662b)) {
                return false;
            }
            C8662b c8662b = (C8662b) obj;
            return l.a(this.f26535a, c8662b.f26535a) && l.a(this.f26536b, c8662b.f26536b) && this.f26537c == c8662b.f26537c;
        }
        return true;
    }

    public int hashCode() {
        String str = this.f26535a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f26536b;
        if (str2 != null) {
            i = str2.hashCode();
        }
        boolean z = this.f26537c;
        int i2 = z ? 1 : 0;
        if (z) {
            i2 = 1;
        }
        return (((hashCode * 31) + i) * 31) + i2;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("AnalyticsDetail(feature=");
        m8728C.append(this.f26535a);
        m8728C.append(", context=");
        m8728C.append(this.f26536b);
        m8728C.append(", logViewEvent=");
        return C22128a.m8590o(m8728C, this.f26537c, ")");
    }
}
