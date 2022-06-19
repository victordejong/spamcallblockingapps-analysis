package p193e.p194a.p619d.p661w.p662j;

import java.util.Set;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p619d.p637c0.p642z1.AbstractC11634o;
import s1.z.c.l;
/* renamed from: e.a.d.w.j.v */
/* loaded from: classes15-dex2jar.jar:e/a/d/w/j/v.class */
public final class C12186v {

    /* renamed from: a */
    public final Set<AbstractC11634o> f35589a;

    /* renamed from: b */
    public final Set<Long> f35590b;

    /* JADX WARN: Multi-variable type inference failed */
    public C12186v(Set<? extends AbstractC11634o> set, Set<Long> set2) {
        l.e(set, "idHandles");
        l.e(set2, "timeouts");
        this.f35589a = set;
        this.f35590b = set2;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C12186v)) {
                return false;
            }
            C12186v c12186v = (C12186v) obj;
            return l.a(this.f35589a, c12186v.f35589a) && l.a(this.f35590b, c12186v.f35590b);
        }
        return true;
    }

    public int hashCode() {
        Set<AbstractC11634o> set = this.f35589a;
        int i = 0;
        int hashCode = set != null ? set.hashCode() : 0;
        Set<Long> set2 = this.f35590b;
        if (set2 != null) {
            i = set2.hashCode();
        }
        return (hashCode * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("PeersWithTimeouts(idHandles=");
        m8728C.append(this.f35589a);
        m8728C.append(", timeouts=");
        m8728C.append(this.f35590b);
        m8728C.append(")");
        return m8728C.toString();
    }
}
