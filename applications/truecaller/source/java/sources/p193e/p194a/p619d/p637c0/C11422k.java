package p193e.p194a.p619d.p637c0;

import com.razorpay.AnalyticsConstants;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.d.c0.k */
/* loaded from: classes15-dex2jar.jar:e/a/d/c0/k.class */
public final class C11422k {

    /* renamed from: a */
    public final String f33544a;

    /* renamed from: b */
    public final String f33545b;

    public C11422k(String str, String str2) {
        l.e(str, "secret");
        l.e(str2, AnalyticsConstants.MODE);
        this.f33544a = str;
        this.f33545b = str2;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C11422k)) {
                return false;
            }
            C11422k c11422k = (C11422k) obj;
            return l.a(this.f33544a, c11422k.f33544a) && l.a(this.f33545b, c11422k.f33545b);
        }
        return true;
    }

    public int hashCode() {
        String str = this.f33544a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f33545b;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return (hashCode * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("EncryptionData(secret=");
        m8728C.append(this.f33544a);
        m8728C.append(", mode=");
        return C22128a.m8618h(m8728C, this.f33545b, ")");
    }
}
