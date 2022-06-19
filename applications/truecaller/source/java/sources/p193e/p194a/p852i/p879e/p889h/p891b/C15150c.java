package p193e.p194a.p852i.p879e.p889h.p891b;

import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.i.e.h.b.c */
/* loaded from: classes3-dex2jar.jar:e/a/i/e/h/b/c.class */
public final class C15150c {

    /* renamed from: a */
    public long f43185a;

    /* renamed from: b */
    public final String f43186b;

    /* renamed from: c */
    public final String f43187c;

    /* renamed from: d */
    public final boolean f43188d;

    public C15150c(String str, String str2, boolean z) {
        l.e(str, "leadGenId");
        l.e(str2, "formResponse");
        this.f43186b = str;
        this.f43187c = str2;
        this.f43188d = z;
    }

    public C15150c(String str, String str2, boolean z, int i) {
        z = (i & 4) != 0 ? false : z;
        l.e(str, "leadGenId");
        l.e(str2, "formResponse");
        this.f43186b = str;
        this.f43187c = str2;
        this.f43188d = z;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C15150c)) {
                return false;
            }
            C15150c c15150c = (C15150c) obj;
            return l.a(this.f43186b, c15150c.f43186b) && l.a(this.f43187c, c15150c.f43187c) && this.f43188d == c15150c.f43188d;
        }
        return true;
    }

    public int hashCode() {
        String str = this.f43186b;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f43187c;
        if (str2 != null) {
            i = str2.hashCode();
        }
        boolean z = this.f43188d;
        int i2 = z ? 1 : 0;
        if (z) {
            i2 = 1;
        }
        return (((hashCode * 31) + i) * 31) + i2;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("OfflineLeadGenEntity(leadGenId=");
        m8728C.append(this.f43186b);
        m8728C.append(", formResponse=");
        m8728C.append(this.f43187c);
        m8728C.append(", formSubmitted=");
        return C22128a.m8590o(m8728C, this.f43188d, ")");
    }
}
