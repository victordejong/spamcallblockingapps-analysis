package p193e.p194a.p437c.p526c.p527a;

import p1727n3.p1751c0.p1752f0.AbstractC25649a;
import p1727n3.p1781e0.p1782a.AbstractC26147b;
import s1.z.c.l;
/* renamed from: e.a.c.c.a.h */
/* loaded from: classes10-dex2jar.jar:e/a/c/c/a/h.class */
public final class C9747h extends AbstractC25649a {
    public C9747h() {
        super(16, 17);
    }

    @Override // p1727n3.p1751c0.p1752f0.AbstractC25649a
    /* renamed from: a */
    public void mo1433a(AbstractC26147b abstractC26147b) {
        l.e(abstractC26147b, "database");
        abstractC26147b.mo2668S0("CREATE INDEX IF NOT EXISTS index_pdo_to_pay_map_pay_id\n ON pdo_to_pay_map (pay_id)");
    }
}
