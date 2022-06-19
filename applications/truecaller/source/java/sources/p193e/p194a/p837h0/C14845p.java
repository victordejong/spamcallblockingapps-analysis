package p193e.p194a.p837h0;

import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p372b0.p406e.AbstractC8432l;
import p193e.p194a.p372b0.p430q.AbstractC8621z;
import s1.z.c.l;
/* renamed from: e.a.h0.p */
/* loaded from: classes9-dex2jar.jar:e/a/h0/p.class */
public final class C14845p {

    /* renamed from: a */
    public final AbstractC8432l f42436a;

    /* renamed from: b */
    public final AbstractC8621z f42437b;

    public C14845p(AbstractC8432l abstractC8432l, AbstractC8621z abstractC8621z) {
        l.e(abstractC8432l, "accountManager");
        l.e(abstractC8621z, "phoneNumberHelper");
        this.f42436a = abstractC8432l;
        this.f42437b = abstractC8621z;
    }

    /* renamed from: a */
    public final int m19536a(int i) {
        return i - (m19533d().length() - m19534c().length());
    }

    /* renamed from: b */
    public final int m19535b(int i) {
        return i + (m19533d().length() - m19534c().length());
    }

    /* renamed from: c */
    public final String m19534c() {
        String str = null;
        String mo28178m = this.f42437b.mo28178m(m19533d(), null);
        if (mo28178m != null) {
            str = C22128a.m8733A2("[^\\d]", mo28178m, "");
        }
        if (str != null) {
            return str;
        }
        throw new IllegalArgumentException("Parsing of normalized account number to national failed".toString());
    }

    /* renamed from: d */
    public final String m19533d() {
        String mo28570n = this.f42436a.mo28570n();
        if (mo28570n != null) {
            return mo28570n;
        }
        throw new IllegalArgumentException("Account normalized number should not be null (because block options require a valid account)".toString());
    }
}
