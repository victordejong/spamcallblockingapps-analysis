package p193e.p194a.p437c.p580r.p587h;

import java.util.LinkedHashSet;
import java.util.Set;
import p193e.p194a.p437c.p580r.p587h.AbstractC10546e;
import s1.i;
import s1.z.c.l;
/* renamed from: e.a.c.r.h.d */
/* loaded from: classes10-dex2jar.jar:e/a/c/r/h/d.class */
public final class C10545d {

    /* renamed from: a */
    public final Set<Long> f31471a;

    /* renamed from: b */
    public final Set<Long> f31472b = new LinkedHashSet();

    public C10545d() {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        this.f31471a = linkedHashSet;
        linkedHashSet.size();
    }

    /* renamed from: a */
    public final boolean m25786a(long j, AbstractC10546e abstractC10546e) {
        Set<Long> set;
        l.e(abstractC10546e, "operation");
        if (abstractC10546e instanceof AbstractC10546e.C10548b) {
            set = this.f31471a;
        } else if (!(abstractC10546e instanceof AbstractC10546e.C10547a)) {
            throw new i();
        } else {
            set = this.f31472b;
        }
        return set.add(Long.valueOf(j));
    }
}
