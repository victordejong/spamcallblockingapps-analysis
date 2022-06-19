package p193e.p194a.p912i4;

import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.i4.v */
/* loaded from: classes11-dex2jar.jar:e/a/i4/v.class */
public final class C15293v {

    /* renamed from: a */
    public final String f43517a;

    /* renamed from: b */
    public final boolean f43518b;

    /* renamed from: c */
    public final int f43519c;

    public C15293v(String str, boolean z, int i) {
        l.e(str, "title");
        this.f43517a = str;
        this.f43518b = z;
        this.f43519c = i;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C15293v)) {
                return false;
            }
            C15293v c15293v = (C15293v) obj;
            return l.a(this.f43517a, c15293v.f43517a) && this.f43518b == c15293v.f43518b && this.f43519c == c15293v.f43519c;
        }
        return true;
    }

    public int hashCode() {
        String str = this.f43517a;
        int hashCode = str != null ? str.hashCode() : 0;
        boolean z = this.f43518b;
        int i = z ? 1 : 0;
        if (z) {
            i = 1;
        }
        return (((hashCode * 31) + i) * 31) + this.f43519c;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("WhatsAppNotification(title=");
        m8728C.append(this.f43517a);
        m8728C.append(", isVideo=");
        m8728C.append(this.f43518b);
        m8728C.append(", actionsSize=");
        return C22128a.m8697J2(m8728C, this.f43519c, ")");
    }
}
