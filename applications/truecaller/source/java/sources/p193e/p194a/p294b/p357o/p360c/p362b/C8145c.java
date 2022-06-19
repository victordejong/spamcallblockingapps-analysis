package p193e.p194a.p294b.p357o.p360c.p362b;

import com.razorpay.AnalyticsConstants;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.b.o.c.b.c */
/* loaded from: classes6-dex2jar.jar:e/a/b/o/c/b/c.class */
public final class C8145c {

    /* renamed from: a */
    public String f25237a;

    /* renamed from: b */
    public int f25238b;

    public C8145c(String str, int i, int i2) {
        i = (i2 & 2) != 0 ? 0 : i;
        l.e(str, AnalyticsConstants.NAME);
        this.f25237a = str;
        this.f25238b = i;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C8145c)) {
                return false;
            }
            C8145c c8145c = (C8145c) obj;
            return l.a(this.f25237a, c8145c.f25237a) && this.f25238b == c8145c.f25238b;
        }
        return true;
    }

    public int hashCode() {
        String str = this.f25237a;
        return ((str != null ? str.hashCode() : 0) * 31) + this.f25238b;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("State(name=");
        m8728C.append(this.f25237a);
        m8728C.append(", generalServicesCount=");
        return C22128a.m8697J2(m8728C, this.f25238b, ")");
    }
}
