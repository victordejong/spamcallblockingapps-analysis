package p193e.p194a.p437c.p438a.p480j.p482b;

import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.c.a.j.b.b */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/j/b/b.class */
public final class C9133b {

    /* renamed from: a */
    public final List<C9134c> f27832a;

    /* renamed from: b */
    public final boolean f27833b;

    /* renamed from: c */
    public final boolean f27834c;

    public C9133b(List<C9134c> list, boolean z, boolean z2) {
        l.e(list, "items");
        this.f27832a = list;
        this.f27833b = z;
        this.f27834c = z2;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C9133b)) {
                return false;
            }
            C9133b c9133b = (C9133b) obj;
            return l.a(this.f27832a, c9133b.f27832a) && this.f27833b == c9133b.f27833b && this.f27834c == c9133b.f27834c;
        }
        return true;
    }

    public int hashCode() {
        List<C9134c> list = this.f27832a;
        int hashCode = list != null ? list.hashCode() : 0;
        boolean z = this.f27833b;
        int i = 1;
        boolean z2 = z;
        if (z) {
            z2 = true;
        }
        boolean z3 = this.f27834c;
        if (!z3) {
            i = z3;
        }
        return (((hashCode * 31) + (z2 ? 1 : 0)) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("CategoryFilter(items=");
        m8728C.append(this.f27832a);
        m8728C.append(", isExpandable=");
        m8728C.append(this.f27833b);
        m8728C.append(", isExpanded=");
        return C22128a.m8590o(m8728C, this.f27834c, ")");
    }
}
