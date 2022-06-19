package p193e.p194a.p437c.p606w.p607o0.p608k;

import p1727n3.p1909z.C27549a2;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.c.w.o0.k.a */
/* loaded from: classes10-dex2jar.jar:e/a/c/w/o0/k/a.class */
public final class C10832a {

    /* renamed from: a */
    public final C27549a2 f32176a;

    /* renamed from: b */
    public final C10834c f32177b;

    public C10832a(C27549a2 c27549a2, C10834c c10834c) {
        l.e(c27549a2, "pagingConfig");
        l.e(c10834c, "selectedFilters");
        this.f32176a = c27549a2;
        this.f32177b = c10834c;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C10832a)) {
                return false;
            }
            C10832a c10832a = (C10832a) obj;
            return l.a(this.f32176a, c10832a.f32176a) && l.a(this.f32177b, c10832a.f32177b);
        }
        return true;
    }

    public int hashCode() {
        C27549a2 c27549a2 = this.f32176a;
        int i = 0;
        int hashCode = c27549a2 != null ? c27549a2.hashCode() : 0;
        C10834c c10834c = this.f32177b;
        if (c10834c != null) {
            i = c10834c.hashCode();
        }
        return (hashCode * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("FeedConfig(pagingConfig=");
        m8728C.append(this.f32176a);
        m8728C.append(", selectedFilters=");
        m8728C.append(this.f32177b);
        m8728C.append(")");
        return m8728C.toString();
    }
}
