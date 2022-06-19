package p193e.p194a.p437c.p438a.p487k.p490c;

import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p437c.p438a.p487k.p491d.AbstractC9214a;
import s1.z.c.l;
/* renamed from: e.a.c.a.k.c.b */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/k/c/b.class */
public final class C9208b {

    /* renamed from: a */
    public C9213d f27993a = null;

    /* renamed from: b */
    public final AbstractC9214a f27994b;

    public C9208b(C9213d c9213d, AbstractC9214a abstractC9214a, int i) {
        l.e(abstractC9214a, "messageMarker");
        this.f27994b = abstractC9214a;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C9208b)) {
                return false;
            }
            C9208b c9208b = (C9208b) obj;
            return l.a(this.f27993a, c9208b.f27993a) && l.a(this.f27994b, c9208b.f27994b);
        }
        return true;
    }

    public int hashCode() {
        C9213d c9213d = this.f27993a;
        int i = 0;
        int hashCode = c9213d != null ? c9213d.hashCode() : 0;
        AbstractC9214a abstractC9214a = this.f27994b;
        if (abstractC9214a != null) {
            i = abstractC9214a.hashCode();
        }
        return (hashCode * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("MarkedImportantContainer(importantMarkedMessageSection=");
        m8728C.append(this.f27993a);
        m8728C.append(", messageMarker=");
        m8728C.append(this.f27994b);
        m8728C.append(")");
        return m8728C.toString();
    }
}
