package p193e.p194a.p765f5.p772i;

import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.f5.i.a */
/* loaded from: classes14-dex2jar.jar:e/a/f5/i/a.class */
public final class C14069a {

    /* renamed from: a */
    public final int f40678a;

    /* renamed from: b */
    public final String f40679b;

    /* renamed from: c */
    public final String f40680c;

    public C14069a(int i, String str, String str2) {
        l.e(str, "nationalNumber");
        l.e(str2, "normalizedNumber");
        this.f40678a = i;
        this.f40679b = str;
        this.f40680c = str2;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C14069a)) {
                return false;
            }
            C14069a c14069a = (C14069a) obj;
            return this.f40678a == c14069a.f40678a && l.a(this.f40679b, c14069a.f40679b) && l.a(this.f40680c, c14069a.f40680c);
        }
        return true;
    }

    public int hashCode() {
        int i = this.f40678a;
        String str = this.f40679b;
        int i2 = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f40680c;
        if (str2 != null) {
            i2 = str2.hashCode();
        }
        return (((i * 31) + hashCode) * 31) + i2;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("ParsedNumber(countryCode=");
        m8728C.append(this.f40678a);
        m8728C.append(", nationalNumber=");
        m8728C.append(this.f40679b);
        m8728C.append(", normalizedNumber=");
        return C22128a.m8618h(m8728C, this.f40680c, ")");
    }
}
