package p193e.p194a.p372b0.p426p;

import com.razorpay.AnalyticsConstants;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.b0.p.c */
/* loaded from: classes7-dex2jar.jar:e/a/b0/p/c.class */
public final class C8551c {

    /* renamed from: a */
    public final long f26350a;

    /* renamed from: b */
    public final String f26351b;

    /* renamed from: c */
    public final long f26352c;

    /* renamed from: d */
    public final Long f26353d;

    /* renamed from: e */
    public final String f26354e;

    public C8551c(long j, String str, long j2, Long l, String str2) {
        l.e(str, AnalyticsConstants.NAME);
        this.f26350a = j;
        this.f26351b = str;
        this.f26352c = j2;
        this.f26353d = l;
        this.f26354e = str2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v18, types: [long] */
    /* JADX WARN: Type inference failed for: r0v23, types: [long] */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v2 */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* JADX WARN: Type inference failed for: r14v1 */
    /* JADX WARN: Type inference failed for: r14v2 */
    /* JADX WARN: Type inference failed for: r14v3 */
    /* renamed from: a */
    public static C8551c m28404a(C8551c c8551c, long j, String str, long j2, Long l, String str2, int i) {
        ?? r11 = j;
        if ((i & 1) != 0) {
            r11 = c8551c.f26350a;
        }
        String str3 = (i & 2) != 0 ? c8551c.f26351b : null;
        ?? r14 = j2;
        if ((i & 4) != 0) {
            r14 = c8551c.f26352c;
        }
        if ((i & 8) != 0) {
            l = c8551c.f26353d;
        }
        String str4 = (i & 16) != 0 ? c8551c.f26354e : str2;
        l.e(str3, AnalyticsConstants.NAME);
        return new C8551c(r11, str3, r14, l, str4);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C8551c)) {
                return false;
            }
            C8551c c8551c = (C8551c) obj;
            return this.f26350a == c8551c.f26350a && l.a(this.f26351b, c8551c.f26351b) && this.f26352c == c8551c.f26352c && l.a(this.f26353d, c8551c.f26353d) && l.a(this.f26354e, c8551c.f26354e);
        }
        return true;
    }

    public int hashCode() {
        int m34274a = C4876d.m34274a(this.f26350a);
        String str = this.f26351b;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        int m34274a2 = C4876d.m34274a(this.f26352c);
        Long l = this.f26353d;
        int hashCode2 = l != null ? l.hashCode() : 0;
        String str2 = this.f26354e;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return (((((((m34274a * 31) + hashCode) * 31) + m34274a2) * 31) + hashCode2) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("AvailableTag(id=");
        m8728C.append(this.f26350a);
        m8728C.append(", name=");
        m8728C.append(this.f26351b);
        m8728C.append(", parentId=");
        m8728C.append(this.f26352c);
        m8728C.append(", colorCode=");
        m8728C.append(this.f26353d);
        m8728C.append(", iconUrl=");
        return C22128a.m8618h(m8728C, this.f26354e, ")");
    }
}
