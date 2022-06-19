package p193e.p194a.p437c.p438a.p480j.p482b;

import java.util.Set;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p437c.p606w.p607o0.p608k.AbstractC10836e;
import s1.z.c.l;
/* renamed from: e.a.c.a.j.b.h */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/j/b/h.class */
public final class C9139h {

    /* renamed from: a */
    public final int f27843a;

    /* renamed from: b */
    public final Set<AbstractC10836e> f27844b;

    /* JADX WARN: Multi-variable type inference failed */
    public C9139h(int i, Set<? extends AbstractC10836e> set) {
        l.e(set, "appliedFilters");
        this.f27843a = i;
        this.f27844b = set;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C9139h)) {
                return false;
            }
            C9139h c9139h = (C9139h) obj;
            return this.f27843a == c9139h.f27843a && l.a(this.f27844b, c9139h.f27844b);
        }
        return true;
    }

    public int hashCode() {
        int i = this.f27843a;
        Set<AbstractC10836e> set = this.f27844b;
        return (i * 31) + (set != null ? set.hashCode() : 0);
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("QuickFilterInput(initialSize=");
        m8728C.append(this.f27843a);
        m8728C.append(", appliedFilters=");
        m8728C.append(this.f27844b);
        m8728C.append(")");
        return m8728C.toString();
    }
}
