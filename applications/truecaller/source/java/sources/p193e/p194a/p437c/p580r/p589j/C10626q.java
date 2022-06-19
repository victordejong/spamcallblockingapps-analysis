package p193e.p194a.p437c.p580r.p589j;

import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
import w3.b.a.b;
/* renamed from: e.a.c.r.j.q */
/* loaded from: classes10-dex2jar.jar:e/a/c/r/j/q.class */
public final class C10626q {

    /* renamed from: a */
    public final b f31664a;

    public C10626q(b bVar) {
        l.e(bVar, "messageDate");
        this.f31664a = bVar;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            return (obj instanceof C10626q) && l.a(this.f31664a, ((C10626q) obj).f31664a);
        }
        return true;
    }

    public int hashCode() {
        b bVar = this.f31664a;
        return bVar != null ? bVar.hashCode() : 0;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("InfoCardMetadata(messageDate=");
        m8728C.append(this.f31664a);
        m8728C.append(")");
        return m8728C.toString();
    }
}
