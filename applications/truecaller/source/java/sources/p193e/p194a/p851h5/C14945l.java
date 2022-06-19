package p193e.p194a.p851h5;

import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.a.l;
/* renamed from: e.a.h5.l */
/* loaded from: classes14-dex2jar.jar:e/a/h5/l.class */
public final class C14945l {

    /* renamed from: a */
    public final boolean f42679a;

    /* renamed from: b */
    public final boolean f42680b;

    public C14945l(boolean z, boolean z2) {
        this.f42679a = z;
        this.f42680b = z2;
    }

    public C14945l(boolean z, boolean z2, int i) {
        z2 = (i & 2) != 0 ? false : z2;
        this.f42679a = z;
        this.f42680b = z2;
    }

    /* renamed from: a */
    public final boolean m19393a(l lVar) {
        s1.z.c.l.e(lVar, "property");
        return this.f42679a;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C14945l)) {
                return false;
            }
            C14945l c14945l = (C14945l) obj;
            return this.f42679a == c14945l.f42679a && this.f42680b == c14945l.f42680b;
        }
        return true;
    }

    public int hashCode() {
        boolean z = this.f42679a;
        int i = 1;
        boolean z2 = z;
        if (z) {
            z2 = true;
        }
        boolean z3 = this.f42680b;
        if (!z3) {
            i = z3;
        }
        return ((z2 ? 1 : 0) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("PermissionRequestResult(granted=");
        m8728C.append(this.f42679a);
        m8728C.append(", deniedPermanently=");
        return C22128a.m8590o(m8728C, this.f42680b, ")");
    }
}
