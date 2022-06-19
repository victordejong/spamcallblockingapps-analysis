package p193e.p194a.p437c.p526c.p527a;

import p1727n3.p1751c0.p1752f0.AbstractC25649a;
import p1727n3.p1781e0.p1782a.AbstractC26147b;
import s1.z.c.l;
/* renamed from: e.a.c.c.a.b0 */
/* loaded from: classes10-dex2jar.jar:e/a/c/c/a/b0.class */
public final class C9735b0 extends AbstractC25649a {
    public C9735b0() {
        super(35, 36);
    }

    @Override // p1727n3.p1751c0.p1752f0.AbstractC25649a
    /* renamed from: a */
    public void mo1433a(AbstractC26147b abstractC26147b) {
        l.e(abstractC26147b, "database");
        abstractC26147b.mo2668S0("\n            ALTER TABLE 'parsed_data_object_table'\n            ADD COLUMN 'spam_category'\n            INTEGER NOT NULL DEFAULT 1\n            ");
    }
}
