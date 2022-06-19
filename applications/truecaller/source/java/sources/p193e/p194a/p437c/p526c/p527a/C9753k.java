package p193e.p194a.p437c.p526c.p527a;

import p1727n3.p1751c0.p1752f0.AbstractC25649a;
import p1727n3.p1781e0.p1782a.AbstractC26147b;
import s1.f0.v;
import s1.z.c.l;
/* renamed from: e.a.c.c.a.k */
/* loaded from: classes10-dex2jar.jar:e/a/c/c/a/k.class */
public final class C9753k extends AbstractC25649a {
    public C9753k() {
        super(19, 20);
    }

    @Override // p1727n3.p1751c0.p1752f0.AbstractC25649a
    /* renamed from: a */
    public void mo1433a(AbstractC26147b abstractC26147b) {
        l.e(abstractC26147b, "database");
        abstractC26147b.mo2668S0(v.h0("\n            CREATE TABLE IF NOT EXISTS `tag_results` (\n            `query_name` TEXT NOT NULL,\n            `tags` TEXT NOT NULL, \n            `query_version` INTEGER NOT NULL, \n            `exceptions` TEXT,\n            `id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,\n            `created_at` INTEGER NOT NULL\n              )\n        ").toString());
    }
}
