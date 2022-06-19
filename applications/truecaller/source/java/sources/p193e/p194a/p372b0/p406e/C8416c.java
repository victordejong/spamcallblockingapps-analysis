package p193e.p194a.p372b0.p406e;

import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.b0.e.c */
/* loaded from: classes7-dex2jar.jar:e/a/b0/e/c.class */
public final class C8416c {

    /* renamed from: a */
    public final String f26096a;

    /* renamed from: b */
    public final C8415b f26097b;

    /* renamed from: c */
    public final C8415b f26098c;

    public C8416c(String str, C8415b c8415b, C8415b c8415b2) {
        l.e(str, "installationId");
        l.e(c8415b, "primaryPhoneNumber");
        this.f26096a = str;
        this.f26097b = c8415b;
        this.f26098c = c8415b2;
    }

    /* renamed from: a */
    public static C8416c m28598a(C8416c c8416c, String str, C8415b c8415b, C8415b c8415b2, int i) {
        String str2 = (i & 1) != 0 ? c8416c.f26096a : null;
        if ((i & 2) != 0) {
            c8415b = c8416c.f26097b;
        }
        if ((i & 4) != 0) {
            c8415b2 = c8416c.f26098c;
        }
        l.e(str2, "installationId");
        l.e(c8415b, "primaryPhoneNumber");
        return new C8416c(str2, c8415b, c8415b2);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C8416c)) {
                return false;
            }
            C8416c c8416c = (C8416c) obj;
            return l.a(this.f26096a, c8416c.f26096a) && l.a(this.f26097b, c8416c.f26097b) && l.a(this.f26098c, c8416c.f26098c);
        }
        return true;
    }

    public int hashCode() {
        String str = this.f26096a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        C8415b c8415b = this.f26097b;
        int hashCode2 = c8415b != null ? c8415b.hashCode() : 0;
        C8415b c8415b2 = this.f26098c;
        if (c8415b2 != null) {
            i = c8415b2.hashCode();
        }
        return (((hashCode * 31) + hashCode2) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("AccountState(installationId=");
        m8728C.append(this.f26096a);
        m8728C.append(", primaryPhoneNumber=");
        m8728C.append(this.f26097b);
        m8728C.append(", secondaryPhoneNumber=");
        m8728C.append(this.f26098c);
        m8728C.append(")");
        return m8728C.toString();
    }
}
