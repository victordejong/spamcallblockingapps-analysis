package p193e.p194a.p437c.p598v.p603h;

import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.c.v.h.b */
/* loaded from: classes10-dex2jar.jar:e/a/c/v/h/b.class */
public final class C10733b {

    /* renamed from: a */
    public final String f31889a;

    /* renamed from: b */
    public final AbstractC10734c f31890b;

    public C10733b(String str, AbstractC10734c abstractC10734c) {
        l.e(str, "title");
        l.e(abstractC10734c, "actionType");
        this.f31889a = str;
        this.f31890b = abstractC10734c;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C10733b)) {
                return false;
            }
            C10733b c10733b = (C10733b) obj;
            return l.a(this.f31889a, c10733b.f31889a) && l.a(this.f31890b, c10733b.f31890b);
        }
        return true;
    }

    public int hashCode() {
        String str = this.f31889a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        AbstractC10734c abstractC10734c = this.f31890b;
        if (abstractC10734c != null) {
            i = abstractC10734c.hashCode();
        }
        return (hashCode * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("PendingAction(title=");
        m8728C.append(this.f31889a);
        m8728C.append(", actionType=");
        m8728C.append(this.f31890b);
        m8728C.append(")");
        return m8728C.toString();
    }
}
