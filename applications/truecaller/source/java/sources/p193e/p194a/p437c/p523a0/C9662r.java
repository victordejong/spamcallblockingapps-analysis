package p193e.p194a.p437c.p523a0;

import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
import w3.b.a.b;
/* renamed from: e.a.c.a0.r */
/* loaded from: classes10-dex2jar.jar:e/a/c/a0/r.class */
public final class C9662r {

    /* renamed from: a */
    public final b f29193a;

    /* renamed from: b */
    public final b f29194b;

    public C9662r(b bVar, b bVar2) {
        l.e(bVar, "fromOldestDate");
        l.e(bVar2, "toLatestDate");
        this.f29193a = bVar;
        this.f29194b = bVar2;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C9662r)) {
                return false;
            }
            C9662r c9662r = (C9662r) obj;
            return l.a(this.f29193a, c9662r.f29193a) && l.a(this.f29194b, c9662r.f29194b);
        }
        return true;
    }

    public int hashCode() {
        b bVar = this.f29193a;
        int i = 0;
        int hashCode = bVar != null ? bVar.hashCode() : 0;
        b bVar2 = this.f29194b;
        if (bVar2 != null) {
            i = bVar2.hashCode();
        }
        return (hashCode * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("BoundaryInfo(fromOldestDate=");
        m8728C.append(this.f29193a);
        m8728C.append(", toLatestDate=");
        m8728C.append(this.f29194b);
        m8728C.append(")");
        return m8728C.toString();
    }
}
