package p193e.p194a.p437c.p548h.p551m;

import java.util.Date;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.c.h.m.c */
/* loaded from: classes10-dex2jar.jar:e/a/c/h/m/c.class */
public final class C10266c {

    /* renamed from: a */
    public final long f30432a;

    /* renamed from: b */
    public final String f30433b;

    /* renamed from: c */
    public final String f30434c;

    /* renamed from: d */
    public final Date f30435d;

    /* renamed from: e */
    public final long f30436e;

    /* renamed from: f */
    public final int f30437f;

    /* renamed from: g */
    public final String f30438g;

    /* renamed from: h */
    public final int f30439h;

    /* renamed from: i */
    public final String f30440i;

    /* renamed from: j */
    public final boolean f30441j;

    /* renamed from: k */
    public final String f30442k;

    public C10266c(long j, String str, String str2, Date date, long j2, int i, String str3, int i2, String str4, boolean z, String str5) {
        l.e(str, "address");
        l.e(str2, "message");
        l.e(date, "date");
        this.f30432a = j;
        this.f30433b = str;
        this.f30434c = str2;
        this.f30435d = date;
        this.f30436e = j2;
        this.f30437f = i;
        this.f30438g = str3;
        this.f30439h = i2;
        this.f30440i = str4;
        this.f30441j = z;
        this.f30442k = str5;
    }

    public /* synthetic */ C10266c(long j, String str, String str2, Date date, long j2, int i, String str3, int i2, String str4, boolean z, String str5, int i3) {
        this(j, (i3 & 2) != 0 ? "XXXXXX" : str, str2, date, j2, i, (i3 & 64) != 0 ? null : str3, (i3 & 128) != 0 ? 1 : i2, (i3 & 256) != 0 ? null : str4, (i3 & 512) != 0 ? false : z, (i3 & 1024) != 0 ? null : str5);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C10266c)) {
                return false;
            }
            C10266c c10266c = (C10266c) obj;
            return this.f30432a == c10266c.f30432a && l.a(this.f30433b, c10266c.f30433b) && l.a(this.f30434c, c10266c.f30434c) && l.a(this.f30435d, c10266c.f30435d) && this.f30436e == c10266c.f30436e && this.f30437f == c10266c.f30437f && l.a(this.f30438g, c10266c.f30438g) && this.f30439h == c10266c.f30439h && l.a(this.f30440i, c10266c.f30440i) && this.f30441j == c10266c.f30441j && l.a(this.f30442k, c10266c.f30442k);
        }
        return true;
    }

    public int hashCode() {
        int m34274a = C4876d.m34274a(this.f30432a);
        String str = this.f30433b;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f30434c;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        Date date = this.f30435d;
        int hashCode3 = date != null ? date.hashCode() : 0;
        int m34274a2 = C4876d.m34274a(this.f30436e);
        int i2 = this.f30437f;
        String str3 = this.f30438g;
        int hashCode4 = str3 != null ? str3.hashCode() : 0;
        int i3 = this.f30439h;
        String str4 = this.f30440i;
        int hashCode5 = str4 != null ? str4.hashCode() : 0;
        boolean z = this.f30441j;
        int i4 = z ? 1 : 0;
        if (z) {
            i4 = 1;
        }
        String str5 = this.f30442k;
        if (str5 != null) {
            i = str5.hashCode();
        }
        return (((((((((((((((((((m34274a * 31) + hashCode) * 31) + hashCode2) * 31) + hashCode3) * 31) + m34274a2) * 31) + i2) * 31) + hashCode4) * 31) + i3) * 31) + hashCode5) * 31) + i4) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("InsightsSmsMessage(messageID=");
        m8728C.append(this.f30432a);
        m8728C.append(", address=");
        m8728C.append(this.f30433b);
        m8728C.append(", message=");
        m8728C.append(this.f30434c);
        m8728C.append(", date=");
        m8728C.append(this.f30435d);
        m8728C.append(", conversationId=");
        m8728C.append(this.f30436e);
        m8728C.append(", transport=");
        m8728C.append(this.f30437f);
        m8728C.append(", simToken=");
        m8728C.append(this.f30438g);
        m8728C.append(", spamCategory=");
        m8728C.append(this.f30439h);
        m8728C.append(", updateCategory=");
        m8728C.append(this.f30440i);
        m8728C.append(", isTranslated=");
        m8728C.append(this.f30441j);
        m8728C.append(", addressName=");
        return C22128a.m8618h(m8728C, this.f30442k, ")");
    }
}
