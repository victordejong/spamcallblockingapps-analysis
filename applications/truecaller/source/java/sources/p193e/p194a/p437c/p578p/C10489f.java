package p193e.p194a.p437c.p578p;

import java.util.Map;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p437c.p580r.p589j.C10635s;
import s1.z.c.l;
/* renamed from: e.a.c.p.f */
/* loaded from: classes10-dex2jar.jar:e/a/c/p/f.class */
public final class C10489f {

    /* renamed from: a */
    public final Map<Long, C10635s> f31197a;

    /* renamed from: b */
    public final boolean f31198b;

    public C10489f(Map<Long, C10635s> map, boolean z) {
        l.e(map, "infoCardMap");
        this.f31197a = map;
        this.f31198b = z;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C10489f)) {
                return false;
            }
            C10489f c10489f = (C10489f) obj;
            return l.a(this.f31197a, c10489f.f31197a) && this.f31198b == c10489f.f31198b;
        }
        return true;
    }

    public int hashCode() {
        Map<Long, C10635s> map = this.f31197a;
        int hashCode = map != null ? map.hashCode() : 0;
        boolean z = this.f31198b;
        boolean z2 = z;
        if (z) {
            z2 = true;
        }
        return (hashCode * 31) + (z2 ? 1 : 0);
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("InfoCardWithActionHolder(infoCardMap=");
        m8728C.append(this.f31197a);
        m8728C.append(", hasActionCard=");
        return C22128a.m8590o(m8728C, this.f31198b, ")");
    }
}
