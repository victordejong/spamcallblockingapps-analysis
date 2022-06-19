package p193e.p194a.p437c.p548h.p551m;

import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.c.h.m.b */
/* loaded from: classes10-dex2jar.jar:e/a/c/h/m/b.class */
public final class C10265b {

    /* renamed from: a */
    public final String f30428a;

    /* renamed from: b */
    public final String f30429b;

    /* renamed from: c */
    public final String f30430c;

    /* renamed from: d */
    public final boolean f30431d;

    public C10265b(String str, String str2, String str3, boolean z) {
        l.e(str, "id");
        this.f30428a = str;
        this.f30429b = str2;
        this.f30430c = str3;
        this.f30431d = z;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C10265b)) {
                return false;
            }
            C10265b c10265b = (C10265b) obj;
            return l.a(this.f30428a, c10265b.f30428a) && l.a(this.f30429b, c10265b.f30429b) && l.a(this.f30430c, c10265b.f30430c) && this.f30431d == c10265b.f30431d;
        }
        return true;
    }

    public int hashCode() {
        String str = this.f30428a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f30429b;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.f30430c;
        if (str3 != null) {
            i = str3.hashCode();
        }
        boolean z = this.f30431d;
        int i2 = z ? 1 : 0;
        if (z) {
            i2 = 1;
        }
        return (((((hashCode * 31) + hashCode2) * 31) + i) * 31) + i2;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("InsightGroupConversationInfo(id=");
        m8728C.append(this.f30428a);
        m8728C.append(", title=");
        m8728C.append(this.f30429b);
        m8728C.append(", avatarUri=");
        m8728C.append(this.f30430c);
        m8728C.append(", isGroup=");
        return C22128a.m8590o(m8728C, this.f30431d, ")");
    }
}
