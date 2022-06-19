package p193e.p194a.p437c.p580r.p589j;

import com.truecaller.insights.models.DomainOrigin;
import java.util.Date;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.c.r.j.b */
/* loaded from: classes10-dex2jar.jar:e/a/c/r/j/b.class */
public final class C10582b {

    /* renamed from: a */
    public final long f31562a;

    /* renamed from: b */
    public final long f31563b;

    /* renamed from: c */
    public final String f31564c;

    /* renamed from: d */
    public final int f31565d;

    /* renamed from: e */
    public final Date f31566e;

    /* renamed from: f */
    public final Date f31567f;

    /* renamed from: g */
    public final DomainOrigin f31568g;

    /* renamed from: h */
    public final String f31569h;

    public C10582b(long j, long j2, String str, int i, Date date, Date date2, DomainOrigin domainOrigin, String str2) {
        l.e(str, "domain");
        l.e(date, "createdAt");
        l.e(date2, "updatesAt");
        l.e(domainOrigin, "origin");
        l.e(str2, "extra");
        this.f31562a = j;
        this.f31563b = j2;
        this.f31564c = str;
        this.f31565d = i;
        this.f31566e = date;
        this.f31567f = date2;
        this.f31568g = domainOrigin;
        this.f31569h = str2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r13v1 */
    /* JADX WARN: Type inference failed for: r13v2 */
    /* JADX WARN: Type inference failed for: r13v3 */
    public /* synthetic */ C10582b(long j, long j2, String str, int i, Date date, Date date2, DomainOrigin domainOrigin, String str2, int i2) {
        this((i2 & 1) != 0 ? 0 : j, j2, str, i, (i2 & 16) != 0 ? new Date() : date, (i2 & 32) != 0 ? new Date() : null, (i2 & 64) != 0 ? DomainOrigin.SMS : domainOrigin, (i2 & 128) != 0 ? "" : str2);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C10582b)) {
                return false;
            }
            C10582b c10582b = (C10582b) obj;
            return this.f31562a == c10582b.f31562a && this.f31563b == c10582b.f31563b && l.a(this.f31564c, c10582b.f31564c) && this.f31565d == c10582b.f31565d && l.a(this.f31566e, c10582b.f31566e) && l.a(this.f31567f, c10582b.f31567f) && l.a(this.f31568g, c10582b.f31568g) && l.a(this.f31569h, c10582b.f31569h);
        }
        return true;
    }

    public int hashCode() {
        int m34274a = C4876d.m34274a(this.f31562a);
        int m34274a2 = C4876d.m34274a(this.f31563b);
        String str = this.f31564c;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        int i2 = this.f31565d;
        Date date = this.f31566e;
        int hashCode2 = date != null ? date.hashCode() : 0;
        Date date2 = this.f31567f;
        int hashCode3 = date2 != null ? date2.hashCode() : 0;
        DomainOrigin domainOrigin = this.f31568g;
        int hashCode4 = domainOrigin != null ? domainOrigin.hashCode() : 0;
        String str2 = this.f31569h;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return (((((((((((((m34274a * 31) + m34274a2) * 31) + hashCode) * 31) + i2) * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("ActionState(id=");
        m8728C.append(this.f31562a);
        m8728C.append(", entityId=");
        m8728C.append(this.f31563b);
        m8728C.append(", domain=");
        m8728C.append(this.f31564c);
        m8728C.append(", state=");
        m8728C.append(this.f31565d);
        m8728C.append(", createdAt=");
        m8728C.append(this.f31566e);
        m8728C.append(", updatesAt=");
        m8728C.append(this.f31567f);
        m8728C.append(", origin=");
        m8728C.append(this.f31568g);
        m8728C.append(", extra=");
        return C22128a.m8618h(m8728C, this.f31569h, ")");
    }
}
