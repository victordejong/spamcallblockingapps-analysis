package p193e.p194a.p947k.p968b;

import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p947k.p969c.C15986g;
import s1.z.c.l;
/* renamed from: e.a.k.b.n */
/* loaded from: classes15-dex2jar.jar:e/a/k/b/n.class */
public final class C15941n {

    /* renamed from: a */
    public final String f44944a;

    /* renamed from: b */
    public final C15986g f44945b;

    /* renamed from: c */
    public final boolean f44946c;

    public C15941n(String str, C15986g c15986g, boolean z) {
        l.e(c15986g, "fileInfo");
        this.f44944a = str;
        this.f44945b = c15986g;
        this.f44946c = z;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C15941n)) {
                return false;
            }
            C15941n c15941n = (C15941n) obj;
            return l.a(this.f44944a, c15941n.f44944a) && l.a(this.f44945b, c15941n.f44945b) && this.f44946c == c15941n.f44946c;
        }
        return true;
    }

    public int hashCode() {
        String str = this.f44944a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        C15986g c15986g = this.f44945b;
        if (c15986g != null) {
            i = c15986g.hashCode();
        }
        boolean z = this.f44946c;
        int i2 = z ? 1 : 0;
        if (z) {
            i2 = 1;
        }
        return (((hashCode * 31) + i) * 31) + i2;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("VideoItem(number=");
        m8728C.append(this.f44944a);
        m8728C.append(", fileInfo=");
        m8728C.append(this.f44945b);
        m8728C.append(", isFile=");
        return C22128a.m8590o(m8728C, this.f44946c, ")");
    }
}
