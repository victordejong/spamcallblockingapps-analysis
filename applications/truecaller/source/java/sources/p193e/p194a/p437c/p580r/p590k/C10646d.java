package p193e.p194a.p437c.p580r.p590k;

import com.razorpay.AnalyticsConstants;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.c.r.k.d */
/* loaded from: classes10-dex2jar.jar:e/a/c/r/k/d.class */
public final class C10646d {

    /* renamed from: a */
    public final String f31723a;

    /* renamed from: b */
    public final String f31724b;

    public C10646d(String str, String str2) {
        l.e(str, AnalyticsConstants.OTP);
        this.f31723a = str;
        this.f31724b = str2;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C10646d)) {
                return false;
            }
            C10646d c10646d = (C10646d) obj;
            return l.a(this.f31723a, c10646d.f31723a) && l.a(this.f31724b, c10646d.f31724b);
        }
        return true;
    }

    public int hashCode() {
        String str = this.f31723a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f31724b;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return (hashCode * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("ParseOtpResponse(otp=");
        m8728C.append(this.f31723a);
        m8728C.append(", otpType=");
        return C22128a.m8618h(m8728C, this.f31724b, ")");
    }
}
