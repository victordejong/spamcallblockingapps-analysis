package p193e.p194a.p437c.p438a.p442b.p443a;

import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p437c.p580r.p592m.AbstractC10651b;
import s1.z.c.l;
/* renamed from: e.a.c.a.b.a.d0 */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/b/a/d0.class */
public final class C8704d0 {

    /* renamed from: a */
    public final String f26625a;

    /* renamed from: b */
    public final AbstractC10651b f26626b;

    public C8704d0(String str, AbstractC10651b abstractC10651b) {
        l.e(str, "translatedLabel");
        l.e(abstractC10651b, "updatesLabel");
        this.f26625a = str;
        this.f26626b = abstractC10651b;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C8704d0)) {
                return false;
            }
            C8704d0 c8704d0 = (C8704d0) obj;
            return l.a(this.f26625a, c8704d0.f26625a) && l.a(this.f26626b, c8704d0.f26626b);
        }
        return true;
    }

    public int hashCode() {
        String str = this.f26625a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        AbstractC10651b abstractC10651b = this.f26626b;
        if (abstractC10651b != null) {
            i = abstractC10651b.hashCode();
        }
        return (hashCode * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("TranslatableUpdatesLabel(translatedLabel=");
        m8728C.append(this.f26625a);
        m8728C.append(", updatesLabel=");
        m8728C.append(this.f26626b);
        m8728C.append(")");
        return m8728C.toString();
    }
}
