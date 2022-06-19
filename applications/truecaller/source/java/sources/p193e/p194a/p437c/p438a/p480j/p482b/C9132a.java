package p193e.p194a.p437c.p438a.p480j.p482b;

import java.util.Set;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p437c.p606w.p607o0.p608k.AbstractC10836e;
import s1.z.c.l;
/* renamed from: e.a.c.a.j.b.a */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/j/b/a.class */
public final class C9132a {

    /* renamed from: a */
    public final int f27828a;

    /* renamed from: b */
    public final boolean f27829b;

    /* renamed from: c */
    public final Set<AbstractC10836e> f27830c;

    /* renamed from: d */
    public final Set<AbstractC10836e> f27831d;

    /* JADX WARN: Multi-variable type inference failed */
    public C9132a(int i, boolean z, Set<? extends AbstractC10836e> set, Set<? extends AbstractC10836e> set2) {
        l.e(set, "currentFilters");
        l.e(set2, "appliedFilters");
        this.f27828a = i;
        this.f27829b = z;
        this.f27830c = set;
        this.f27831d = set2;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C9132a)) {
                return false;
            }
            C9132a c9132a = (C9132a) obj;
            return this.f27828a == c9132a.f27828a && this.f27829b == c9132a.f27829b && l.a(this.f27830c, c9132a.f27830c) && l.a(this.f27831d, c9132a.f27831d);
        }
        return true;
    }

    public int hashCode() {
        int i = this.f27828a;
        boolean z = this.f27829b;
        int i2 = z ? 1 : 0;
        if (z) {
            i2 = 1;
        }
        Set<AbstractC10836e> set = this.f27830c;
        int i3 = 0;
        int hashCode = set != null ? set.hashCode() : 0;
        Set<AbstractC10836e> set2 = this.f27831d;
        if (set2 != null) {
            i3 = set2.hashCode();
        }
        return (((((i * 31) + i2) * 31) + hashCode) * 31) + i3;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("CategoriesFilterInput(collapsedSize=");
        m8728C.append(this.f27828a);
        m8728C.append(", categoriesExpanded=");
        m8728C.append(this.f27829b);
        m8728C.append(", currentFilters=");
        m8728C.append(this.f27830c);
        m8728C.append(", appliedFilters=");
        m8728C.append(this.f27831d);
        m8728C.append(")");
        return m8728C.toString();
    }
}
