package p193e.p194a.p437c.p526c.p527a;

import com.truecaller.insights.models.DomainOrigin;
import p1727n3.p1751c0.p1752f0.AbstractC25649a;
import p1727n3.p1781e0.p1782a.AbstractC26147b;
import s1.f0.n;
import s1.z.c.l;
/* renamed from: e.a.c.c.a.p */
/* loaded from: classes10-dex2jar.jar:e/a/c/c/a/p.class */
public final class C9763p extends AbstractC25649a {
    public C9763p() {
        super(23, 24);
    }

    @Override // p1727n3.p1751c0.p1752f0.AbstractC25649a
    /* renamed from: a */
    public void mo1433a(AbstractC26147b abstractC26147b) {
        l.e(abstractC26147b, "database");
        abstractC26147b.mo2668S0(n.c("\n            ALTER TABLE action_state\n            ADD COLUMN origin\n            TEXT NOT NULL DEFAULT " + DomainOrigin.SMS + "\n            "));
    }
}
