package p193e.p194a.p804h.p806b.p816u0;

import com.razorpay.AnalyticsConstants;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.h.b.u0.a */
/* loaded from: classes3-dex2jar.jar:e/a/h/b/u0/a.class */
public final class C14623a {

    /* renamed from: a */
    public final String f42101a;

    /* renamed from: b */
    public final int f42102b;

    /* renamed from: c */
    public final int f42103c;

    /* renamed from: d */
    public final String f42104d;

    /* renamed from: e */
    public final String f42105e;

    public C14623a(String str, int i, int i2, String str2, String str3) {
        C22128a.m8703I0(str, AnalyticsConstants.KEY, str2, "number", str3, "analyticsContext");
        this.f42101a = str;
        this.f42102b = i;
        this.f42103c = i2;
        this.f42104d = str2;
        this.f42105e = str3;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C14623a)) {
                return false;
            }
            C14623a c14623a = (C14623a) obj;
            return l.a(this.f42101a, c14623a.f42101a) && this.f42102b == c14623a.f42102b && this.f42103c == c14623a.f42103c && l.a(this.f42104d, c14623a.f42104d) && l.a(this.f42105e, c14623a.f42105e);
        }
        return true;
    }

    public int hashCode() {
        String str = this.f42101a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        int i2 = this.f42102b;
        int i3 = this.f42103c;
        String str2 = this.f42104d;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.f42105e;
        if (str3 != null) {
            i = str3.hashCode();
        }
        return (((((((hashCode * 31) + i2) * 31) + i3) * 31) + hashCode2) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("EmergencyContact(key=");
        m8728C.append(this.f42101a);
        m8728C.append(", iconRes=");
        m8728C.append(this.f42102b);
        m8728C.append(", titleRes=");
        m8728C.append(this.f42103c);
        m8728C.append(", number=");
        m8728C.append(this.f42104d);
        m8728C.append(", analyticsContext=");
        return C22128a.m8618h(m8728C, this.f42105e, ")");
    }
}
