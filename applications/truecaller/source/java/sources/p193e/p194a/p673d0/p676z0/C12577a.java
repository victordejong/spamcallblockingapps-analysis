package p193e.p194a.p673d0.p676z0;

import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.d0.z0.a */
/* loaded from: classes6-dex2jar.jar:e/a/d0/z0/a.class */
public final class C12577a {

    /* renamed from: a */
    public final int f36707a;

    /* renamed from: b */
    public final String f36708b;

    /* renamed from: c */
    public final boolean f36709c;

    /* renamed from: d */
    public final long f36710d;

    /* renamed from: e */
    public final boolean f36711e;

    public C12577a(int i, String str, boolean z, long j, boolean z2) {
        l.e(str, "connectionType");
        this.f36707a = i;
        this.f36708b = str;
        this.f36709c = z;
        this.f36710d = j;
        this.f36711e = z2;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C12577a)) {
                return false;
            }
            C12577a c12577a = (C12577a) obj;
            return this.f36707a == c12577a.f36707a && l.a(this.f36708b, c12577a.f36708b) && this.f36709c == c12577a.f36709c && this.f36710d == c12577a.f36710d && this.f36711e == c12577a.f36711e;
        }
        return true;
    }

    public int hashCode() {
        int i = this.f36707a;
        String str = this.f36708b;
        int hashCode = str != null ? str.hashCode() : 0;
        boolean z = this.f36709c;
        int i2 = 1;
        int i3 = z ? 1 : 0;
        if (z) {
            i3 = 1;
        }
        int m34274a = C4876d.m34274a(this.f36710d);
        boolean z2 = this.f36711e;
        if (!z2) {
            i2 = z2 ? 1 : 0;
        }
        return (((((((i * 31) + hashCode) * 31) + i3) * 31) + m34274a) * 31) + i2;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("CallerIdNetworkRequestAttempt(attemptNumber=");
        m8728C.append(this.f36707a);
        m8728C.append(", connectionType=");
        m8728C.append(this.f36708b);
        m8728C.append(", success=");
        m8728C.append(this.f36709c);
        m8728C.append(", elapsedMs=");
        m8728C.append(this.f36710d);
        m8728C.append(", internetOk=");
        return C22128a.m8590o(m8728C, this.f36711e, ")");
    }
}
