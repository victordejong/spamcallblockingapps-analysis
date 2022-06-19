package p193e.p194a.p372b0.p373a.p386s;

import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.b0.a.s.b */
/* loaded from: classes7-dex2jar.jar:e/a/b0/a/s/b.class */
public final class C8330b {

    /* renamed from: a */
    public final String f25641a;

    /* renamed from: b */
    public final boolean f25642b;

    /* renamed from: c */
    public final boolean f25643c;

    public C8330b() {
        this.f25641a = null;
        this.f25642b = false;
        this.f25643c = false;
    }

    public C8330b(String str, boolean z, boolean z2) {
        this.f25641a = str;
        this.f25642b = z;
        this.f25643c = z2;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C8330b)) {
                return false;
            }
            C8330b c8330b = (C8330b) obj;
            return l.a(this.f25641a, c8330b.f25641a) && this.f25642b == c8330b.f25642b && this.f25643c == c8330b.f25643c;
        }
        return true;
    }

    public int hashCode() {
        String str = this.f25641a;
        int hashCode = str != null ? str.hashCode() : 0;
        boolean z = this.f25642b;
        int i = 1;
        int i2 = z ? 1 : 0;
        if (z) {
            i2 = 1;
        }
        boolean z2 = this.f25643c;
        if (!z2) {
            i = z2 ? 1 : 0;
        }
        return (((hashCode * 31) + i2) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("AvailabilityXConfig(lastSeenText=");
        m8728C.append(this.f25641a);
        m8728C.append(", isSilent=");
        m8728C.append(this.f25642b);
        m8728C.append(", isOnCall=");
        return C22128a.m8590o(m8728C, this.f25643c, ")");
    }
}
