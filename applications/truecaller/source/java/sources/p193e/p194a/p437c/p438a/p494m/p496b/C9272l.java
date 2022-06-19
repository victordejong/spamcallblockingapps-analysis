package p193e.p194a.p437c.p438a.p494m.p496b;

import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p437c.p579q.C10516k;
import s1.z.c.l;
/* renamed from: e.a.c.a.m.b.l */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/m/b/l.class */
public final class C9272l {

    /* renamed from: a */
    public final C10516k f28221a;

    /* renamed from: b */
    public boolean f28222b;

    public C9272l(C10516k c10516k, boolean z, int i) {
        z = (i & 2) != 0 ? false : z;
        l.e(c10516k, "updateData");
        this.f28221a = c10516k;
        this.f28222b = z;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C9272l)) {
                return false;
            }
            C9272l c9272l = (C9272l) obj;
            return l.a(this.f28221a, c9272l.f28221a) && this.f28222b == c9272l.f28222b;
        }
        return true;
    }

    public int hashCode() {
        C10516k c10516k = this.f28221a;
        int hashCode = c10516k != null ? c10516k.hashCode() : 0;
        boolean z = this.f28222b;
        int i = z ? 1 : 0;
        if (z) {
            i = 1;
        }
        return (hashCode * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("SelectableUpdatesData(updateData=");
        m8728C.append(this.f28221a);
        m8728C.append(", isSelected=");
        return C22128a.m8590o(m8728C, this.f28222b, ")");
    }
}
