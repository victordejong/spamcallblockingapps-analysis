package p193e.p194a.p437c.p438a.p480j.p482b;

import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.c.a.j.b.f */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/j/b/f.class */
public final class C9137f {

    /* renamed from: a */
    public final List<AbstractC9135d> f27839a;

    /* renamed from: b */
    public final boolean f27840b;

    /* JADX WARN: Multi-variable type inference failed */
    public C9137f(List<? extends AbstractC9135d> list, boolean z) {
        l.e(list, "filters");
        this.f27839a = list;
        this.f27840b = z;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C9137f)) {
                return false;
            }
            C9137f c9137f = (C9137f) obj;
            return l.a(this.f27839a, c9137f.f27839a) && this.f27840b == c9137f.f27840b;
        }
        return true;
    }

    public int hashCode() {
        List<AbstractC9135d> list = this.f27839a;
        int hashCode = list != null ? list.hashCode() : 0;
        boolean z = this.f27840b;
        boolean z2 = z;
        if (z) {
            z2 = true;
        }
        return (hashCode * 31) + (z2 ? 1 : 0);
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("QuickFilter(filters=");
        m8728C.append(this.f27839a);
        m8728C.append(", isLoading=");
        return C22128a.m8590o(m8728C, this.f27840b, ")");
    }
}
