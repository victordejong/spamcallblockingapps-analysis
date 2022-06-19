package p193e.p194a.p294b.p357o.p360c.p362b;

import com.razorpay.AnalyticsConstants;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.b.o.c.b.a */
/* loaded from: classes6-dex2jar.jar:e/a/b/o/c/b/a.class */
public final class C8143a {

    /* renamed from: a */
    public long f25221a;

    /* renamed from: b */
    public String f25222b;

    /* renamed from: c */
    public int f25223c;

    /* renamed from: d */
    public long f25224d;

    public C8143a(String str, int i, long j) {
        l.e(str, AnalyticsConstants.NAME);
        this.f25222b = str;
        this.f25223c = i;
        this.f25224d = j;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3 */
    public C8143a(String str, int i, long j, int i2) {
        i = (i2 & 2) != 0 ? 0 : i;
        ?? r7 = (i2 & 4) != 0 ? 0 : j;
        l.e(str, AnalyticsConstants.NAME);
        this.f25222b = str;
        this.f25223c = i;
        this.f25224d = r7;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C8143a)) {
                return false;
            }
            C8143a c8143a = (C8143a) obj;
            return l.a(this.f25222b, c8143a.f25222b) && this.f25223c == c8143a.f25223c && this.f25224d == c8143a.f25224d;
        }
        return true;
    }

    public int hashCode() {
        String str = this.f25222b;
        return ((((str != null ? str.hashCode() : 0) * 31) + this.f25223c) * 31) + C4876d.m34274a(this.f25224d);
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("District(name=");
        m8728C.append(this.f25222b);
        m8728C.append(", contactsCount=");
        m8728C.append(this.f25223c);
        m8728C.append(", stateID=");
        return C22128a.m8693K2(m8728C, this.f25224d, ")");
    }
}
