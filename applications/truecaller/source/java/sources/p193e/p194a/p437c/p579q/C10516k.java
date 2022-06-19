package p193e.p194a.p437c.p579q;

import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p437c.p580r.p592m.AbstractC10651b;
import s1.z.c.l;
/* renamed from: e.a.c.q.k */
/* loaded from: classes10-dex2jar.jar:e/a/c/q/k.class */
public final class C10516k {

    /* renamed from: a */
    public final long f31280a;

    /* renamed from: b */
    public final String f31281b;

    /* renamed from: c */
    public final long f31282c;

    /* renamed from: d */
    public final AbstractC10651b f31283d;

    /* renamed from: e */
    public final long f31284e;

    /* renamed from: f */
    public final int f31285f;

    /* renamed from: g */
    public final boolean f31286g;

    /* renamed from: h */
    public final String f31287h;

    /* renamed from: i */
    public final String f31288i;

    /* renamed from: j */
    public final String f31289j;

    public C10516k(long j, String str, long j2, AbstractC10651b abstractC10651b, long j3, int i, boolean z, String str2, String str3, String str4) {
        l.e(str, "address");
        l.e(abstractC10651b, "updateCategory");
        l.e(str2, "messageText");
        l.e(str3, "uiDay");
        l.e(str4, "uiTime");
        this.f31280a = j;
        this.f31281b = str;
        this.f31282c = j2;
        this.f31283d = abstractC10651b;
        this.f31284e = j3;
        this.f31285f = i;
        this.f31286g = z;
        this.f31287h = str2;
        this.f31288i = str3;
        this.f31289j = str4;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C10516k)) {
                return false;
            }
            C10516k c10516k = (C10516k) obj;
            return this.f31280a == c10516k.f31280a && l.a(this.f31281b, c10516k.f31281b) && this.f31282c == c10516k.f31282c && l.a(this.f31283d, c10516k.f31283d) && this.f31284e == c10516k.f31284e && this.f31285f == c10516k.f31285f && this.f31286g == c10516k.f31286g && l.a(this.f31287h, c10516k.f31287h) && l.a(this.f31288i, c10516k.f31288i) && l.a(this.f31289j, c10516k.f31289j);
        }
        return true;
    }

    public int hashCode() {
        int m34274a = C4876d.m34274a(this.f31280a);
        String str = this.f31281b;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        int m34274a2 = C4876d.m34274a(this.f31282c);
        AbstractC10651b abstractC10651b = this.f31283d;
        int hashCode2 = abstractC10651b != null ? abstractC10651b.hashCode() : 0;
        int m34274a3 = C4876d.m34274a(this.f31284e);
        int i2 = this.f31285f;
        boolean z = this.f31286g;
        int i3 = z ? 1 : 0;
        if (z) {
            i3 = 1;
        }
        String str2 = this.f31287h;
        int hashCode3 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.f31288i;
        int hashCode4 = str3 != null ? str3.hashCode() : 0;
        String str4 = this.f31289j;
        if (str4 != null) {
            i = str4.hashCode();
        }
        return (((((((((((((((((m34274a * 31) + hashCode) * 31) + m34274a2) * 31) + hashCode2) * 31) + m34274a3) * 31) + i2) * 31) + i3) * 31) + hashCode3) * 31) + hashCode4) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("UpdateData(conversationId=");
        m8728C.append(this.f31280a);
        m8728C.append(", address=");
        m8728C.append(this.f31281b);
        m8728C.append(", messageId=");
        m8728C.append(this.f31282c);
        m8728C.append(", updateCategory=");
        m8728C.append(this.f31283d);
        m8728C.append(", msgDateTime=");
        m8728C.append(this.f31284e);
        m8728C.append(", spamCategory=");
        m8728C.append(this.f31285f);
        m8728C.append(", isIM=");
        m8728C.append(this.f31286g);
        m8728C.append(", messageText=");
        m8728C.append(this.f31287h);
        m8728C.append(", uiDay=");
        m8728C.append(this.f31288i);
        m8728C.append(", uiTime=");
        return C22128a.m8618h(m8728C, this.f31289j, ")");
    }
}
