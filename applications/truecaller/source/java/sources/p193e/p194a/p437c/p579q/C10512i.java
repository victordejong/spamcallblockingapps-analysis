package p193e.p194a.p437c.p579q;

import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.a.c.q.i */
/* loaded from: classes10-dex2jar.jar:e/a/c/q/i.class */
public final class C10512i {

    /* renamed from: a */
    public final long f31258a;

    /* renamed from: b */
    public final long f31259b;

    public C10512i(long j, long j2) {
        this.f31258a = j;
        this.f31259b = j2;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C10512i)) {
                return false;
            }
            C10512i c10512i = (C10512i) obj;
            return this.f31258a == c10512i.f31258a && this.f31259b == c10512i.f31259b;
        }
        return true;
    }

    public int hashCode() {
        return (C4876d.m34274a(this.f31258a) * 31) + C4876d.m34274a(this.f31259b);
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("TimeWindow(maxBoundaryTs=");
        m8728C.append(this.f31258a);
        m8728C.append(", minBoundaryTs=");
        return C22128a.m8693K2(m8728C, this.f31259b, ")");
    }
}
