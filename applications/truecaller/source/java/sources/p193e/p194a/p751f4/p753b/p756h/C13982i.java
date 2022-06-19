package p193e.p194a.p751f4.p753b.p756h;

import p193e.p1432d.p1439c.p1440a.C22128a;
import p3.a.q1.c;
import s1.z.c.l;
/* renamed from: e.a.f4.b.h.i */
/* loaded from: classes11-dex2jar.jar:e/a/f4/b/h/i.class */
public final class C13982i<NonBlocking extends c<NonBlocking>, Blocking extends c<Blocking>> {

    /* renamed from: a */
    public final NonBlocking f40426a;

    /* renamed from: b */
    public final Blocking f40427b;

    /* renamed from: c */
    public final String f40428c;

    /* renamed from: d */
    public final String f40429d;

    public C13982i(NonBlocking nonblocking, Blocking blocking, String str, String str2) {
        l.e(nonblocking, "asyncStub");
        l.e(blocking, "syncStub");
        l.e(str2, "host");
        this.f40426a = nonblocking;
        this.f40427b = blocking;
        this.f40428c = str;
        this.f40429d = str2;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C13982i)) {
                return false;
            }
            C13982i c13982i = (C13982i) obj;
            return l.a(this.f40426a, c13982i.f40426a) && l.a(this.f40427b, c13982i.f40427b) && l.a(this.f40428c, c13982i.f40428c) && l.a(this.f40429d, c13982i.f40429d);
        }
        return true;
    }

    public int hashCode() {
        NonBlocking nonblocking = this.f40426a;
        int i = 0;
        int hashCode = nonblocking != null ? nonblocking.hashCode() : 0;
        Blocking blocking = this.f40427b;
        int hashCode2 = blocking != null ? blocking.hashCode() : 0;
        String str = this.f40428c;
        int hashCode3 = str != null ? str.hashCode() : 0;
        String str2 = this.f40429d;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return (((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("StubDescriptor(asyncStub=");
        m8728C.append(this.f40426a);
        m8728C.append(", syncStub=");
        m8728C.append(this.f40427b);
        m8728C.append(", authToken=");
        m8728C.append(this.f40428c);
        m8728C.append(", host=");
        return C22128a.m8618h(m8728C, this.f40429d, ")");
    }
}
