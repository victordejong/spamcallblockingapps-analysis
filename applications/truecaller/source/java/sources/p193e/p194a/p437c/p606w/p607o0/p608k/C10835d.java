package p193e.p194a.p437c.p606w.p607o0.p608k;

import java.util.Set;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p437c.p606w.p607o0.p608k.AbstractC10836e;
import s1.z.c.l;
/* renamed from: e.a.c.w.o0.k.d */
/* loaded from: classes10-dex2jar.jar:e/a/c/w/o0/k/d.class */
public final class C10835d {

    /* renamed from: a */
    public final String f32183a;

    /* renamed from: b */
    public final C10834c f32184b;

    /* renamed from: c */
    public final Set<AbstractC10836e.C10839c> f32185c;

    public C10835d(String str, C10834c c10834c, Set<AbstractC10836e.C10839c> set) {
        l.e(str, "searchQuery");
        l.e(c10834c, "selectedFilters");
        l.e(set, "currentSenders");
        this.f32183a = str;
        this.f32184b = c10834c;
        this.f32185c = set;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C10835d)) {
                return false;
            }
            C10835d c10835d = (C10835d) obj;
            return l.a(this.f32183a, c10835d.f32183a) && l.a(this.f32184b, c10835d.f32184b) && l.a(this.f32185c, c10835d.f32185c);
        }
        return true;
    }

    public int hashCode() {
        String str = this.f32183a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        C10834c c10834c = this.f32184b;
        int hashCode2 = c10834c != null ? c10834c.hashCode() : 0;
        Set<AbstractC10836e.C10839c> set = this.f32185c;
        if (set != null) {
            i = set.hashCode();
        }
        return (((hashCode * 31) + hashCode2) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("SenderFilterConfig(searchQuery=");
        m8728C.append(this.f32183a);
        m8728C.append(", selectedFilters=");
        m8728C.append(this.f32184b);
        m8728C.append(", currentSenders=");
        m8728C.append(this.f32185c);
        m8728C.append(")");
        return m8728C.toString();
    }
}
