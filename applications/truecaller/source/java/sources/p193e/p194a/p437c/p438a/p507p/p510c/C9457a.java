package p193e.p194a.p437c.p438a.p507p.p510c;

import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
import w3.b.a.b;
/* renamed from: e.a.c.a.p.c.a */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/p/c/a.class */
public final class C9457a {

    /* renamed from: a */
    public final C9458b f28695a;

    /* renamed from: b */
    public final b f28696b;

    /* renamed from: c */
    public final boolean f28697c;

    public C9457a(C9458b c9458b, b bVar, boolean z) {
        l.e(c9458b, "coords");
        l.e(bVar, "dateTime");
        this.f28695a = c9458b;
        this.f28696b = bVar;
        this.f28697c = z;
    }

    public C9457a(C9458b c9458b, b bVar, boolean z, int i) {
        z = (i & 4) != 0 ? false : z;
        l.e(c9458b, "coords");
        l.e(bVar, "dateTime");
        this.f28695a = c9458b;
        this.f28696b = bVar;
        this.f28697c = z;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C9457a)) {
                return false;
            }
            C9457a c9457a = (C9457a) obj;
            return l.a(this.f28695a, c9457a.f28695a) && l.a(this.f28696b, c9457a.f28696b) && this.f28697c == c9457a.f28697c;
        }
        return true;
    }

    public int hashCode() {
        C9458b c9458b = this.f28695a;
        int i = 0;
        int hashCode = c9458b != null ? c9458b.hashCode() : 0;
        b bVar = this.f28696b;
        if (bVar != null) {
            i = bVar.hashCode();
        }
        boolean z = this.f28697c;
        int i2 = z ? 1 : 0;
        if (z) {
            i2 = 1;
        }
        return (((hashCode * 31) + i) * 31) + i2;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("CardMeta(coords=");
        m8728C.append(this.f28695a);
        m8728C.append(", dateTime=");
        m8728C.append(this.f28696b);
        m8728C.append(", isTransactionHidden=");
        return C22128a.m8590o(m8728C, this.f28697c, ")");
    }
}
