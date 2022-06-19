package p193e.p194a.p437c.p610y;

import com.razorpay.AnalyticsConstants;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.c.y.j */
/* loaded from: classes10-dex2jar.jar:e/a/c/y/j.class */
public final class C10885j {

    /* renamed from: a */
    public final String f32313a;

    /* renamed from: b */
    public final String f32314b;

    public C10885j(String str, String str2) {
        l.e(str, AnalyticsConstants.NAME);
        l.e(str2, "value");
        this.f32313a = str;
        this.f32314b = str2;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C10885j)) {
                return false;
            }
            C10885j c10885j = (C10885j) obj;
            return l.a(this.f32313a, c10885j.f32313a) && l.a(this.f32314b, c10885j.f32314b);
        }
        return true;
    }

    public int hashCode() {
        String str = this.f32313a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f32314b;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return (hashCode * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("SmartCardInfo(name=");
        m8728C.append(this.f32313a);
        m8728C.append(", value=");
        return C22128a.m8618h(m8728C, this.f32314b, ")");
    }
}
